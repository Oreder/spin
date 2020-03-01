proctype A1() {
    atomic {
        int sem = 0;
        sem > 0;
        sem--
    }
}
proctype A2() {
    atomic {
        int sem = 2;
        sem++
    }
}

init {
    run A1();
    run A2();
}