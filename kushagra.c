#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>



int main(){
    long long int n;
    scanf("%lld",&n);
    long long int a[n];
    for(int i=0;i<n;i++){
        scanf("%lld",&a[i]);

    }
    long long int z;
    z=func(a,n);
    printf("%lld\n",z);
    return 0;
}