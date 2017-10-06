clc
clear all
A=input('Enter the job time and the machine time in rows and columns respectively in vector form')
[n m]=size(A)
z=min(A(:,1))
x=min(A(:,m))
y1=max(A(:,2))
y2=max(A(:,3))
y=max(y1,y2)
X=zeros(n,1)
Y=zeros(n,1)
if(z>=y)
    disp('Johnson condition is satisfied')
    for n=1:1:n
            X(n) = A(n,1)+A(n,2)+A(n,3);
    end
    disp('X= ')
    disp(X)
       for n=1:1:n
            Y(n) = A(n,2)+A(n,3)+A(n,m);
       end
       disp('Y= ')
       disp(Y)
       Z=zeros(n,2);
       for n=1:1:n
               Z(n,1)= X(n);
               Z(n,2)= Y(n);
       end
       disp('Z= ')
       disp(Z)
       B=zeros(1,n)
       C=zeros(7,9)
       for m=1:1:n
           B(1,m)=input('enter the job to be performed in order: ')
           if B(1,m)==1
               C(m,1)=1
           elseif B(1,m)==2
               C(m,1)=2
           elseif B(1,m)==3
               C(m,1)=3
           elseif B(1,m)==4
               C(m,1)=4
           elseif B(1,m)==5
               C(m,1)=5
           elseif B(1,m)==6
               C(m,1)=6
           elseif B(1,m)==7
               C(m,1)=7
           else
               disp('enter a number between 1 and 7')
           end
       end
       G=[C(1,1),C(2,1),C(3,1),C(4,1),C(5,1),C(6,1),C(7,1)]
       C(1,2)=0;
       C(1,3)=C(1,2)+A(G(1,1),1);
       C(1,4)=C(1,3);
       C(1,5)=C(1,4)+A(G(1,1),2);
       C(1,6)=C(1,5);
       C(1,7)=C(1,6)+A(G(1,1),3);
       C(1,8)=C(1,7);
       C(1,9)=C(1,8)+A(G(1,1),4);
       for n=2:1:7
           for m=2:1:3
              if m==2
               C(n,m)=C(n-1,m+1);
              else m==3
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),1);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),1);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),1);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),1);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),1);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),1);
                  end
           end
       end
       end
       for n=2:1:7
           for m=4:1:5
              if m==4
               C(n,m)=C(n-1,m+1);
               if C(n,m)<C(n,m-1);
                   C(n,m)=C(n,m-1);
               end
              else m==5
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),2);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),2);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),2);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),2);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),2);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),2);
                  end
              end
           end
       end
       for n=2:1:7
           for m=6:1:7
              if m==6
               C(n,m)=C(n-1,m+1);
               if C(n,m)<C(n,m-1);
                   C(n,m)=C(n,m-1);
               end
              else m==7
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),3);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),3);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),3);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),3);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),3);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),3);
                  end
              end
           end
       end
       for n=2:1:7
           for m=8:1:9
              if m==8
               C(n,m)=C(n-1,m+1);
               if C(n,m)<C(n,m-1);
                   C(n,m)=C(n,m-1);
               end
              else m==9
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),4);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),4);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),4);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),4);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),4);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),4);
                  end
           end
       end
       end
       disp(C)
       D=zeros(8,4);
      D(1,1)=0;
      D(1,2)=C(1,4)-C(1,2);
      D(1,3)=C(1,6)-C(1,2);
      D(1,4)=C(1,8)-C(1,2);
      for i=2:1:8
          for m=1:1:4
              if i==8
                  if m==1
                  D(i,m)=C(7,9)-C(7,3);
              elseif m==2
                  D(i,m)=C(7,9)-C(7,5);
              elseif m==3
                  D(i,m)=C(7,9)-C(7,7);
                  else
                  D(i,m)=C(7,9)-C(7,9);
              end
              else
              if m==1
                  D(i,m)=C(i,2)-C(i-1,3);
              elseif m==2
                  D(i,m)=C(i,4)-C(i-1,5);
              elseif m==3
                  D(i,m)=C(i,6)-C(i-1,7);
              else
                  D(i,m)=C(i,8)-C(i-1,9);
              end
          end
          end
      end  
     Q=sum(D);
     disp(C)
     disp(D)
      disp(Q)
elseif(x>=y)
    disp('Johnson condition is satisfied')
    for n=1:1:n
            X(n) = A(n,1)+A(n,2)+A(n,3);
    end
    disp('X= ')
    disp(X)
       for n=1:1:n
            Y(n) = A(n,2)+A(n,3)+A(n,m);
       end
       disp('Y= ')
       disp(Y)
       Z=zeros(n,2);
       for n=1:1:n
               Z(n,1)= X(n);
               Z(n,2)= Y(n);
       end
       disp('Z= ')
       disp(Z)
       B=zeros(1,n)
       C=zeros(7,9)
       for m=1:1:n
           B(1,m)=input('enter the job to be performed in order: ')
           if B(1,m)==1
               C(m,1)=1
           elseif B(1,m)==2
               C(m,1)=2
           elseif B(1,m)==3
               C(m,1)=3
           elseif B(1,m)==4
               C(m,1)=4
           elseif B(1,m)==5
               C(m,1)=5
           elseif B(1,m)==6
               C(m,1)=6
           elseif B(1,m)==7
               C(m,1)=7
           else
               disp('enter a number between 1 and 7')
           end
       end
       G=[C(1,1),C(2,1),C(3,1),C(4,1),C(5,1),C(6,1),C(7,1)]
       C(1,2)=0;
       C(1,3)=C(1,2)+A(G(1,1),1);
       C(1,4)=C(1,3);
       C(1,5)=C(1,4)+A(G(1,1),2);
       C(1,6)=C(1,5);
       C(1,7)=C(1,6)+A(G(1,1),3);
       C(1,8)=C(1,7);
       C(1,9)=C(1,8)+A(G(1,1),4);
       for n=2:1:7
           for m=2:1:3
              if m==2
               C(n,m)=C(n-1,m+1);
              else m==3
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),1);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),1);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),1);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),1);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),1);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),1);
                  end
           end
       end
       end
       for n=2:1:7
           for m=4:1:5
              if m==4
               C(n,m)=C(n-1,m+1);
               if C(n,m)<C(n,m-1);
                   C(n,m)=C(n,m-1);
               end
              else m==5
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),2);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),2);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),2);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),2);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),2);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),2);
                  end
              end
           end
       end
       for n=2:1:7
           for m=6:1:7
              if m==6
               C(n,m)=C(n-1,m+1);
               if C(n,m)<C(n,m-1);
                   C(n,m)=C(n,m-1);
               end
              else m==7
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),3);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),3);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),3);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),3);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),3);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),3);
                  end
              end
           end
       end
       for n=2:1:7
           for m=8:1:9
              if m==8
               C(n,m)=C(n-1,m+1);
               if C(n,m)<C(n,m-1);
                   C(n,m)=C(n,m-1);
               end
              else m==9
                  if n==2
                  C(n,m)=C(n,m-1)+A(G(1,2),4);
                  elseif n==3
                      C(n,m)=C(n,m-1)+A(G(1,3),4);
                      elseif n==4
                      C(n,m)=C(n,m-1)+A(G(1,4),4);
                      elseif n==5
                      C(n,m)=C(n,m-1)+A(G(1,5),4);
                      elseif n==6
                      C(n,m)=C(n,m-1)+A(G(1,6),4);
                  else
                      C(n,m)=C(n,m-1)+A(G(1,7),4);
                  end
           end
       end
       end
       disp(C)
      D=zeros(8,4);
      D(1,1)=0;
      D(1,2)=C(1,4)-C(1,2);
      D(1,3)=C(1,6)-C(1,2);
      D(1,4)=C(1,8)-C(1,2);
      for i=2:1:8
          for m=1:1:4
              if i==8
                  if m==1
                  D(i,m)=C(7,9)-C(7,3);
              elseif m==2
                  D(i,m)=C(7,9)-C(7,5);
              elseif m==3
                  D(i,m)=C(7,9)-C(7,7);
                  else
                  D(i,m)=C(7,9)-C(7,9);
              end
              else
              if m==1
                  D(i,m)=C(i,2)-C(i-1,3);
              elseif m==2
                  D(i,m)=C(i,4)-C(i-1,5);
              elseif m==3
                  D(i,m)=C(i,6)-C(i-1,7);
              else
                  D(i,m)=C(i,8)-C(i-1,9);
              end
          end
          end
      end
     Q=sum(D);
     disp(C)
     disp(D) 
     disp(Q)
     disp('The ideal time for machine A is ')
     disp(Q(1,1))
     disp('The ideal time for machine B is ')
     disp(Q(1,2))
     disp('The ideal time for machine C is ')
     disp(Q(1,3))
     disp('The ideal time for machine D is ')
     disp(Q(1,4))
else
    disp('Johnson condition fails')
end

