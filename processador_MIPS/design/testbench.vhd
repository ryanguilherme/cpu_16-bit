library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;          
use STD.TEXTIO.all;
use work.pkg_mips.all;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
    signal reset, clock: std_logic;
    
    signal Iadress, Idata : reg32 := (others => '0' );   
    
    signal ce, rw, bw: std_logic;
    
    signal Dadress, Ddata, i_cpu_address, d_cpu_address, 
           data_cpu, tb_add, tb_data : reg32 := (others => '0' );
    
    signal Dce_n, Dwe_n, Doe_n, Ice_n, Iwe_n, Ioe_n, rstCPU, 
           go_i, go_d: std_logic;
    
    file ARQ : TEXT open READ_MODE is "prog.txt";
    
begin
    Data_mem :  entity work.RAM_mem 
        generic map(START_ADDRESS=>x"10010000")
        port map(
            ce_n=>Dce_n, 
            we_n=>Dwe_n, 
            oe_n=>Doe_n, 
            bw=>'1', 
            address=>Dadress,  
            data=>Ddata
        );
        
    Instr_mem : entity work.RAM_mem 
        generic map(START_ADDRESS=>x"00400000")
        port map(
            ce_n=>Ice_n, 
            we_n=>Iwe_n, 
            oe_n=>Ioe_n, 
            bw=>'1', 
            address=>Iadress,  
            data=>Idata
        );
    
    -- Sinais dos dados de memória
    Dce_n <= '0' when (ce='1' and rstCPU='1') or go_d='1' else '1';
    Doe_n <= '0' when (ce='1' and rw='1')                 else '1'; 
    Dwe_n <= '0' when (ce='1' and rw='0')     or go_d='1' else '1'; 
    
    Dadress <= tb_add  when rstCPU='1' else d_cpu_address;
    Ddata   <= tb_data when rstCPU='1' else data_cpu when (ce='1' and rw='0') else (others=>'Z'); 

    data_cpu <= Ddata when (ce='1' and rw='1') else (others=>'Z');
    
    -- Sinais das instruções de memória
    Ice_n <= '0';                                 
    Ioe_n <= '1' when rstCPU='1' else '0';           -- impede leitura enquanto está escrevendo                             
    
    Iwe_n <= '0' when go_i='1'   else '1';           -- escrita durante a leitura do arquivo 
    
    Iadress <= tb_add  when rstCPU='1' else i_cpu_address;
    Idata   <= tb_data when rstCPU='1' else (others => 'Z'); 
    
    cpu: entity work.processadorMIPS
        port map(
            clk=>clock, 
            rst=>rstCPU,
            i_address => i_cpu_address,
            instruction => Idata,
            en=>ce,  
            rw=>rw,
            d_address => d_cpu_address,
            data => data_cpu
        );
        
    -- gerando o sinal de reset
    reset <='1', '0' after 8 ns;       
    
    -- gerando o sinal de clock
    process
    begin
        clock <= '1', '0' after 10 ns;
        wait for 20 ns;    
    end process;
    
    
    
    process
        variable ARQ_LINE : LINE;
        variable line_arq : string(1 to TAM_LINHA);
        variable code     : boolean;
        variable i, address_flag : integer;
    begin  
        go_i <= '0';
        go_d <= '0';
        rstCPU <= '1';           -- segure o processador durante a leitura do arquivo
        code:=true;              -- o valor padrão do código é 1 (CODE)
                                 
        wait until reset = '1';
        
        --IN�?CIO DA LEITURA DO ARQUIVO CONTENDO INSTRUÇÃO E DADOS
        while NOT (endfile(ARQ)) loop    
			readFileLine(ARQ, line_arq);
                        
            if line_arq(1 to 12)="Text Segment" then 
                   code:=true;                     -- code 
            elsif line_arq(1 to 12)="Data Segment" then
                   code:=false;                    -- data 
            else 
               i := 1;             -- LEITORA DE LINHA - analizar o loop abaixo para compreender 
               address_flag := 0;  -- para INSTRUÇÃO é um para (end,inst)
                                   -- para DADO aceita (end, dado 0, dado 1, dado 2 ....)
               loop                                     
                  if line_arq(i) = '0' and line_arq(i+1) = 'x' then      -- encontrou indicação de número hexa: '0x'
                         i := i + 2;
                         if address_flag=0 then
                               for w in 0 to 7 loop
                                   tb_add( (31-w*4) downto (32-(w+1)*4))  <= CONV_VECTOR(line_arq,i+w);
                               end loop;    
                               i := i + 8; 
                               address_flag := 1;
                         else
                               for w in 0 to 7 loop
                                   tb_data( (31-w*4) downto (32-(w+1)*4))  <= CONV_VECTOR(line_arq,i+w);
                               end loop;    
                               i := i + 8;
                               
                               wait for 0.1 ns;
                               
                               if code=true then go_i <= '1';    -- the go_i signal enables instruction memory writing
                                            else go_d <= '1';    -- the go_d signal enables data memory writing
                               end if; 
                               
                               wait for 0.1 ns;
                               
                               tb_add <= tb_add + 4;       -- Consigo ler mais de uma palavra por linha!
                               go_i <= '0';
                               go_d <= '0'; 
                               
                               address_flag := 2;    -- sinaliza que já leu o conteúdo do endereço;

                         end if;
                  end if;
                  i := i + 1;
                  
                  -- sai da linha quando chegou no seu final OU 
                  -- já leu par(endereço, instrução) no caso de código
                  exit when i=TAM_LINHA or (code=true and address_flag=2);
               end loop;
            end if;
            
        end loop; -- FINAL DA LEITURA DO ARQUIVO CONTENDO INSTRUÇÃO E DADOS -----
        
        rstCPU <= '0';   -- liberar o processador para executar
        wait for 2 ns;   -- Para ativar o sinal da CPU RST
        wait until reset = '1';  -- Segurar novamente!
        
    end process;
    
end Behavioral;

