#OBJ_BLACKFIN+=../arch/blackfin/bfin-dis.o 
OBJ_BLACKFIN+= asm_blackfin.o

STATIC_OBJ+=${OBJ_BLACKFIN}
TARGET_BLACKFIN=asm_blackfin.${LIBEXT}

ALL_TARGETS+=${TARGET_BLACKFIN}

$(OBJ_BLACKFIN): %.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

${TARGET_BLACKFIN}: ${OBJ_BLACKFIN}
	${CC} ${CFLAGS} -o asm_blackfin.${LIBEXT} ${OBJ_BLACKFIN} ${LDFLAGS}
