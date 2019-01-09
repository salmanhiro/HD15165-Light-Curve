

data = load('hasil.lst');

jd = data(:,1);
magVWari = data(:,2);
magcom1 = data(:,3);
magcheck = data(:,4);

figure
plot(jd,magVWari, '.')
hold on
plot(jd,magcom1,'.')
hold on
plot(jd,magcheck,'.')
legend({'HD 15165','HD 15095','HD 15164'},'Location','northwest')
xlabel('JD - 2458383')
ylabel('m')
title('Magnitudo dari Tiap Bintang')



figure
plot(jd,magVWari-magcom1,'.')
hold on
plot(jd,magVWari-magcheck,'.')
hold on
plot(jd,magcom1-magcheck,'.')
legend({'m HD 15165 - HD 15095','m HD 15165 - HD 15164','m HD 15164 - HD 15095'},'Location','northwest')
xlabel('JD - 2458383')
ylabel('delta m')
title('Perbedaan Magnitudo dari Tiap Bintang')
ylim([-4 2])