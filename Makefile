all: user dgels_col dgels_row dgesv_col dgesv_row
	echo make all

user: example_user.c
	gcc -o user example_user.c -lm -lblas -llapack -llapacke

dgels_col: example_DGELS_colmajor.c lapacke_example_aux.o
	gcc -o dgels_col lapacke_example_aux.o example_DGELS_colmajor.c -lm -lblas -llapack -llapacke

dgels_row: example_DGELS_rowmajor.c lapacke_example_aux.o
	gcc -o dgels_row lapacke_example_aux.o example_DGELS_rowmajor.c -lm -lblas -llapack -llapacke

dgesv_col: example_DGESV_colmajor.c lapacke_example_aux.o
	gcc -o dgesv_col lapacke_example_aux.o example_DGESV_colmajor.c -lm -lblas -llapack -llapacke

dgesv_row: example_DGESV_rowmajor.c lapacke_example_aux.o
	gcc -o dgesv_row lapacke_example_aux.o example_DGESV_rowmajor.c -lm -lblas -llapack -llapacke

lapacke_example_aux.o: lapacke_example_aux.c
	gcc -c lapacke_example_aux.c -lm -lblas -llapack -llapacke