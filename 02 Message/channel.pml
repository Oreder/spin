mtype = {msg, ack};
chan s_r = [2] of {mtype, bit};
chan r_s = [2] of {mtype, bit};

active proctype sender() {
    bit seqno;
    do
    :: s_r!msg, seqno ->
        if
        :: r_s?ack, eval(seqno) ->
            seqno = 1 - seqno;
        :: r_s?ack, eval(1 - seqno)
        fi
    od
}

active proctype receiver() {
    bit expect, seqno;
    do
    :: s_r?msg, seqno ->
        r_s!ack, seqno;
        if
        :: seqno == expect;
            printf("Expected!\n");
            expect = 1 - expect
        :: else
        fi
    od
}