######################################
# target
######################################
TARGET = eth-h723

######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og

#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
Src/main.c \
Src/gpio.c \
Src/eth.c \
Src/usart.c \
Src/stm32h7xx_it.c \
Src/stm32h7xx_hal_msp.c \
Src/system_stm32h7xx.c \
Src/syscalls.c \
Src/sysmem.c \
/Users/andy/STM32Cube/Repository/Packs/STMicroelectronics/X-CUBE-AZRTOS-H7/2.1.0/Drivers/BSP/Components/lan8742/lan8742.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cortex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc_ex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash_ex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_gpio.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hsem.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma_ex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_mdma.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr_ex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c_ex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_eth.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_eth_ex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim_ex.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_uart.c \
/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_uart_ex.c 

# ASM sources
ASM_s_SOURCES =  \
Src/startup_stm32h723zgtx.s

#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m7

# fpu
FPU = -mfpu=fpv5-d16

# float-abi
FLOAT-ABI = -mfloat-abi=hard

# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_HAL_DRIVER \
-DSTM32H723xx \
-DUSE_FULL_ASSERT


# AS includes
AS_INCLUDES = 

# C includes
C_INCLUDES =  \
-IInc \
-I/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Inc \
-I/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy \
-I/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/CMSIS/Device/ST/STM32H7xx/Include \
-I/Users/andy/STM32Cube/Repository/STM32Cube_FW_H7_V1.10.0/Drivers/CMSIS/Include \
-I/Users/andy/STM32Cube/Repository/Packs/STMicroelectronics/X-CUBE-AZRTOS-H7/2.1.0/Drivers/BSP/Components/lan8742

# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS += $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = STM32H723ZGTx_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_s_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_s_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/%.o: %.S Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
