#include<stdio.h>
#include<stdlib.h>

int main(){
	int v[20] , n, i = 0, j = 0 , max = 0;
	scanf("%ls\n", &n);
point1:

	scanf("%d", &v[i]);
	i++;
	max = v[0];
	if(i >= n) goto point2;
	else{
		goto point1;
	} 
point2:
	j += 1;
	if(j >= n) goto point3;

	if(max < v[j]){
		max = v[j];
	}

	goto point2;

point3:
	printf("%d\n", max);
	return 0;
}