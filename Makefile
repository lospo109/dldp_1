VERILOG = iverilog          
TARGET = decoder3_8.vcd     

$(TARGET) : decoder3_8.vvp  
	vvp decoder3_8.vvp       

decoder3_8.vvp: decoder3_8_tb.v decoder3_8.v
	$(VERILOG) -o decoder3_8.vvp decoder3_8_tb.v decoder3_8.v   
clean:
	del $(TARGET)     