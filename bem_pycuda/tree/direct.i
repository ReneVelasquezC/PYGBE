%module direct

%{
#define SWIG_FILE_WITH_INIT

extern void direct_sort(double *K_aux, int K_auxSize, double *V_aux, int V_auxSize, int LorY, double K_diag, double V_diag, double *triangle, int triangleSize, 
        int *tri, int triSize, int *k, int kSize, double *xi, int xiSize, double *yi, int yiSize, 
        double *zi, int ziSize, double *s_xj, int s_xjSize, double *s_yj, int s_yjSize, 
        double *s_zj, int s_zjSize,double *xt, int xtSize, double *yt, int ytSize, double *zt, int ztSize,
        double *m, int mSize, double *mx, int mxSize, double *my, int mySize, double *mz, int mzSize, double *mKc, int mKcSize, double *mVc, int mVcSize,
        int *interList, int interListSize, int *offTar, int offTarSize, int *sizeTar, int sizeTarSize, int *offSrc, int offSrcSize, int *offTwg, int offTwgSize,
        int *targets, int targetsSize, double *Area, int AreaSize, 
        double *xk, int xkSize, double *wk, int wkSize, 
        double kappa, double threshold, double eps, double w0, double *aux, int auxSize);

extern void direct_c(double *K_aux, int K_auxSize, double *V_aux, int V_auxSize, int LorY, double K_diag, double V_diag, double *triangle, int triangleSize, 
        int *tri, int triSize, int *k, int kSize, double *xi, int xiSize, double *yi, int yiSize, 
        double *zi, int ziSize, double *s_xj, int s_xjSize, double *s_yj, int s_yjSize, 
        double *s_zj, int s_zjSize,double *xt, int xtSize, double *yt, int ytSize, double *zt, int ztSize,
        double *m, int mSize, double *mx, int mxSize, double *my, int mySize, double *mz, int mzSize, double *mKc, int mKcSize, double *mVc, int mVcSize,
        int *targets, int targetsSize, double *Area, int AreaSize, 
        double *xk, int xkSize, double *wk, int wkSize, 
        double kappa, double threshold, double eps, double w0, double *aux, int auxSize);
%}

%include "numpy.i"
%init %{
import_array();
%}

%apply (double* INPLACE_ARRAY1, int DIM1){(double *K_aux, int K_auxSize)};
%apply (double* INPLACE_ARRAY1, int DIM1){(double *V_aux, int V_auxSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *triangle, int triangleSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *tri, int triSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *k, int kSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *interList, int interListSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *offTar, int offTarSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *sizeTar, int sizeTarSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *offSrc, int offSrcSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *offTwg, int offTwgSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *s_xj, int s_xjSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *s_yj, int s_yjSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *s_zj, int s_zjSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *xi, int xiSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *yi, int yiSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *zi, int ziSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *xt, int xtSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *yt, int ytSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *zt, int ztSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *m, int mSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *mx, int mxSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *my, int mySize)};
%apply (double* IN_ARRAY1, int DIM1){(double *mz, int mzSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *mKc, int mKcSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *mVc, int mVcSize)};
%apply (int* IN_ARRAY1, int DIM1){(int *targets, int targetsSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *Area, int AreaSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *xk, int xkSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *wk, int wkSize)};
%apply (double* IN_ARRAY1, int DIM1){(double *aux, int auxSize)};

extern void direct_sort(double *K_aux, int K_auxSize, double *V_aux, int V_auxSize, int LorY, double K_diag, double V_diag, double *triangle, int triangleSize, 
        int *tri, int triSize, int *k, int kSize, double *xi, int xiSize, double *yi, int yiSize, 
        double *zi, int ziSize, double *s_xj, int s_xjSize, double *s_yj, int s_yjSize, 
        double *s_zj, int s_zjSize,double *xt, int xtSize, double *yt, int ytSize, double *zt, int ztSize,
        double *m, int mSize, double *mx, int mxSize, double *my, int mySize, double *mz, int mzSize, double *mKc, int mKcSize, double *mVc, int mVcSize,
        int *interList, int interListSize, int *offTar, int offTarSize, int *sizeTar, int sizeTarSize, int *offSrc, int offSrcSize, int *offTwg, int offTwgSize,
        int *targets, int targetsSize, double *Area, int AreaSize, 
        double *xk, int xkSize, double *wk, int wkSize, 
        double kappa, double threshold, double eps, double w0, double *aux, int auxSize);

extern void direct_c(double *K_aux, int K_auxSize, double *V_aux, int V_auxSize, int LorY, double K_diag, double V_diag, double *triangle, int triangleSize, 
        int *tri, int triSize, int *k, int kSize, double *xi, int xiSize, double *yi, int yiSize, 
        double *zi, int ziSize, double *s_xj, int s_xjSize, double *s_yj, int s_yjSize, 
        double *s_zj, int s_zjSize,double *xt, int xtSize, double *yt, int ytSize, double *zt, int ztSize,
        double *m, int mSize, double *mx, int mxSize, double *my, int mySize, double *mz, int mzSize, double *mKc, int mKcSize, double *mVc, int mVcSize,
        int *targets, int targetsSize, double *Area, int AreaSize,
        double *xk, int xkSize, double *wk, int wkSize, 
        double kappa, double threshold, double eps, double w0, double *aux, int auxSize);

%clear (double *K_aux, int K_auxSize); 
%clear (double *V_aux, int V_auxSize); 
%clear (double *triangle, int triangleSize); 
%clear (int *tri, int triSize); 
%clear (int *k, int kSize); 
%clear (int *interList, int interListSize); 
%clear (int *offTar, int offTarSize); 
%clear (int *sizeTar, int sizeTarSize); 
%clear (int *offSrc, int offSrcSize); 
%clear (int *offTwg, int offTwgSize); 
%clear (double *s_xj, int s_xjSize); 
%clear (double *s_yj, int s_yjSize); 
%clear (double *s_zj, int s_zjSize); 
%clear (double *xt, int xtSize); 
%clear (double *yt, int ytSize); 
%clear (double *zt, int ztSize); 
%clear (double *xi, int xiSize); 
%clear (double *yi, int yiSize); 
%clear (double *zi, int ziSize); 
%clear (double *m, int mSize); 
%clear (double *mx, int mxSize); 
%clear (double *my, int mySize); 
%clear (double *mz, int mzSize); 
%clear (double *mKc, int mKcSize); 
%clear (double *mVc, int mVcSize); 
%clear (int *targets, int targetsSize); 
%clear (double *Area, int AreaSize); 
%clear (double *xk, int xkSize); 
%clear (double *wk, int wkSize); 
%clear (double *aux, int auxSize); 