num = xlsread('E:\cell folder\data set\LSVT_
voice_rehabilitation');
x_train=num(1:100,1);
x_test=num(101:126,1);
y_train=num(1:100,2:311);
y_test=num(101:126,2:311);
mdl1=fitcknn(y_train,x_train,'NumNeighbors',10);
class=predict(mdl1,y_test);
cp=classperf(class,x_test);
sens=cp.Sensitivity
spec=cp.Specificity
acc=cp.CorrectRate




