#include<stdlib.h>
#include<stdio.h>

int main(){
	int k[20] ,n ,i = 0, j = 0, x , pozitie = -1;
	int min , max , mid;
	min = 0;
	scanf("%d\n" , &x);
	scanf("%d\n" , &n);
	max = n-1;

point1:
	scanf("%d\n", &k[i]);
	i++;
	if(i >= n) goto point2;
	else goto point1;

point2:

	if(min > max) goto eroare;
	mid = (min + max)/2;

	if (x > k[mid]){
		min = mid + 1;
		goto point2;
	} 
	if (x < k[mid]){
		max = mid - 1;
		goto point2;
	}
	else{
		pozitie = mid;
		goto point3;
	}

eroare:
	printf("eroare\n");

point3:
	printf("%d\n", pozitie);

	return 0;
}