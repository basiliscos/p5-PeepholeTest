#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"


static peep_t prev_rpeepp;

static void my_rpeep(pTHX_ OP *o) {
    OP *orig_o = o;
    for(; o; o = o->op_next) {
        // just innocent traversal
    }
    prev_rpeepp(aTHX_ orig_o);
}



MODULE = PeepholeTest                PACKAGE = PeepholeTest
PROTOTYPES: DISABLE

BOOT:
    prev_rpeepp = PL_rpeepp;
    PL_rpeepp = my_rpeep;
