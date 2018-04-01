program ConcurrentTotalOrdering;

var x : Integer;
var y : Integer;

Process type A;
	begin
		x := 1;
	end;

Process type B;
	begin
		y := x + 1;
	end;

Process type C;
	begin
		x := y + 2;
	end;

var P1 : A;
var P2 : B;
var P3 : C;

begin
	x := 0;
	y := 0;
	cobegin
		P1;
		P2;
		P3
	coend;
	if (x = 4) and (y = 2) then
		writeln('They''ve been executed sequentially!')
	else
		writeln('They''ve been interleaved!');
	writeln('x = ', x);
	writeln('y = ', y)
end.
