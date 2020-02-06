#include<stdio.h>
#include<stdlib.h>

int main(){
	int v[20], i = 0, j = 1, n, aux;
	scanf("%d\n", &n);

point1:
	if(i >= n) goto point2;
	scanf("%d\n", &v[i]);
	i++;
	
	if(i < n) goto point1;

point2:
	if(i >= n){
		i = 0;
		goto point5;
	}
	j = i + 1;
point3:
	if(j >= n){
		i++;
		goto point2;
	}
	if(v[i] > v[j]) goto point4;


point6:
	j++;
	goto point3;


point4:
	aux = v[i];
	v[i] = v[j];
	v[j] = aux;
	goto point6;


point5:
	printf("%ls\n", &v[i]);
	i++;
	if(i >= n) return 0;
	goto point5;
	return 0;
}