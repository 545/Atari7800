#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

scalar dummyScalar;
scalar fScalarIsForced=0;
scalar fScalarIsReleased=0;
scalar fScalarHasChanged=0;
void  hsF_0(struct dummyq_struct * I748, EBLK  * I749, U  I556);
void  hsF_0(struct dummyq_struct * I748, EBLK  * I749, U  I556)
{
    U  I940;
    U  I941;
    U  I942;
    struct futq * I943;
    I940 = ((U )vcs_clocks) + I556;
    I942 = I940 & 0xfff;
    I749->I491 = (EBLK  *)(-1);
    I749->I501 = I940;
    if (I940 < (U )vcs_clocks) {
        I941 = ((U  *)&vcs_clocks)[1];
        sched_millenium(I748, I749, I941 + 1, I940);
    }
    else if ((I943 = I748->I722[I942].I510)) {
        I749->I502 = (struct eblk *)I943->I509;
        I943->I509->I491 = (RP )I749;
        I943->I509 = (RmaEblk  *)I749;
    }
    else {
        sched_hsopt(I748, I749, I940);
    }
}
U   hsF_1(U  I760);
U   hsF_1(U  I760)
{
    U  I939 = ffs(I760);
    return  I939 - 1;
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
