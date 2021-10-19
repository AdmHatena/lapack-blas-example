wsl -e gcc -- example_DGELS_colmajor.c -lm -lblas -llapack -llapacke -o example_DGELS_colmajor.exe
wsl -e gcc -- example_DGELS_rowmajor.c -lm -lblas -llapack -llapacke -o example_DGELS_rowmajor.exe
wsl -e gcc -- example_DGESV_colmajor.c -lm -lblas -llapack -llapacke -o example_DGESV_colmajor.exe
wsl -e gcc -- example_DGESV_rowmajor.c -lm -lblas -llapack -llapacke -o example_DGESV_rowmajor.exe
wsl -e gcc -- example_user.c -lm -lblas -llapack -llapacke -o example_user.exe