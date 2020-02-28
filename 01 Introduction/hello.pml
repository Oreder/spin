/* A "Hello World" Promela model for SPIN. 
 * Running SPIN in random simulation mode:
 * > spin -n2 hello.pml
 * \where flag -n2: random seed
 */
 
active proctype Hello() {
    printf("Hello process, my pid is: %d\n", _pid);
}

init {
    int lastpid;
    printf("init process, my pid is: %d\n", _pid);
    lastpid = run Hello();
    printf("last pid was: %d\n", lastpid);
}