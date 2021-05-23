#!/usr/local/bin/perl
#Written by Nicholas Ivanov, krasivo-exe, Big Boi
#define sort function
sub selectionSort
{
  my @list = @_;
  my $n = @list;
  for($i=0; $i<=$n-2;$i++)
  {
    my $min = $i;
    for($j = $i+1; $j<=$n-1; $j++)
    {
      if($list[$j] < $list[$min]){$min = $j;}
    } 
    $tmp = $list[$i];
    $list[$i] = $list[$min];
    $list[$min] = $tmp;
  }
  return @list;
}
#driver code
@l1 = (98,2,23,32);
print("Unsorted l1 \n");
foreach(@l1){print("$_","\n")};
@l2 = selectionSort(@l1);
print("sorted l2 \n");
foreach(@l2){print("$_","\n")};
