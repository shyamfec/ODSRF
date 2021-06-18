function Result=calcMetric(results)

addpath('./Metrics/');
Ic=im2uint8(results.in.gray);
Ien=im2uint8(results.out.gray);
Icol=im2uint8(results.out.color);
Result.INMEAN =  mean2(im2uint8(results.in.gray));
Result.INSTD = std2(im2uint8(results.in.gray));
Result.MEAN =  mean2(im2uint8(results.out.gray));
Result.STD = std2(im2uint8(results.out.gray));
Result.CEF=CEF(Ic,Ien);
% Result.NIQE=niqe(results.out.gray);
% Result.PSNR=psnr(Ic,Ien);
% Result.SSIM=ssim(Ic,Ien);
Result.PD=pixdist((Ien));
Result.DE=Calc_DE(double(Ien));
Result.EME=Calc_EME(double(Ien));
Result.COLOR = colourfulness_metric(Icol);
Result.MICHELSON = michelson_contrast(Icol);
Result.BIQME=Calc_CPCQI_BIQME(results.out.color);
Result.NIQMC=NIQMC(Icol);
Result.AQI=aqindex(Ien,2,5,45,'degree','gray','common');
Result.BRISQUE=brisque(Ien);
Result.SSEQ=SSEQ(Icol);
Result.CEIQ = CEIQ(Icol);
Result.TIME=results.time;
