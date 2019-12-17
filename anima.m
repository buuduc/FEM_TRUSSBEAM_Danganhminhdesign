function anima()
global result
result
global point
point1=point
global elem
elem1=elem
cv=result(:,1:3)
figure
if size(elem,2)==11
elem(:,11)=[]
end
cv(:,2:3)=cv(:,2:3)*1000;
draw_plot()
    for i=1:size(cv,1)
        [x,y,n]=posnos(cv(i,1));
        point(n,[1 2])=point(n,[1 2])+cv(i,2:3);
    end
    hold on
    for i=1:size(elem,1) % ve thanh
        [x1,y1]=posnos(elem(i,1));
        [x2,y2]=posnos(elem(i,2));
        plot([x1 x2],[y1 y2],'color',[1 0 0],'linewidth',4);
        hold on
        axis equal
    end

% for i=1:50
%     for i=1:size(cv,1)
%         [x,y,n]=posnos(cv(i,1));
%         point(n,[1 2])=point(n,[1 2])+cv(i,2:3);
%         draw_plot();;
%         pause(0.001);
%         hold off
%     end
% end
point=point1
elem=elem1