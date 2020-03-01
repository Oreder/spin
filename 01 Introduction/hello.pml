proctype A1() {
    int l = 1, d, f, k;
    d = l + 3;
    f = d + 1;
    k = f + d;
    printf("%d\n", k)
}

proctype A2() {
    int l = 2, d, f, k;
    d = l + 3;
    f = d + 1;
    k = f + d;
    printf("%d\n", k)
}

init {
    run A1();
    run A2();
}