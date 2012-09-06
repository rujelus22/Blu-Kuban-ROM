.class public Lcom/google/googlenav/ui/wizard/jB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lcom/google/googlenav/ui/wizard/dp;

.field private B:Lcom/google/googlenav/ui/wizard/eh;

.field private C:Lcom/google/googlenav/ui/wizard/em;

.field private D:Lcom/google/googlenav/ui/wizard/eq;

.field private E:Lcom/google/googlenav/ui/wizard/eN;

.field private F:Lcom/google/googlenav/ui/wizard/eO;

.field private G:Lcom/google/googlenav/ui/wizard/eT;

.field private H:Lcom/google/googlenav/ui/wizard/fh;

.field private I:Lcom/google/googlenav/ui/wizard/hg;

.field private J:Lcom/google/googlenav/ui/wizard/hx;

.field private K:Lcom/google/googlenav/ui/wizard/hZ;

.field private L:Lcom/google/googlenav/ui/wizard/ia;

.field private M:Lcom/google/googlenav/ui/wizard/ix;

.field private N:Lcom/google/googlenav/ui/wizard/ij;

.field private O:Lcom/google/googlenav/ui/wizard/id;

.field private P:Lcom/google/googlenav/ui/wizard/ft;

.field private Q:Lcom/google/googlenav/ui/wizard/gj;

.field private R:Lcom/google/googlenav/ui/wizard/fX;

.field private S:Lcom/google/googlenav/ui/wizard/iB;

.field private T:Lcom/google/googlenav/ui/wizard/cw;

.field private U:Lcom/google/googlenav/ui/wizard/iG;

.field private V:Lcom/google/googlenav/ui/wizard/iK;

.field private W:Lcom/google/googlenav/ui/wizard/iT;

.field private X:Lcom/google/googlenav/ui/wizard/fo;

.field private Y:Lcom/google/googlenav/ui/wizard/ew;

.field private Z:Lcom/google/googlenav/ui/wizard/ja;

.field protected final a:Lcom/google/googlenav/ui/wizard/ju;

.field private aa:Lcom/google/googlenav/ui/wizard/jj;

.field private ab:Lcom/google/googlenav/ui/wizard/js;

.field private b:Lcom/google/googlenav/ui/wizard/q;

.field private c:Lcom/google/googlenav/ui/wizard/G;

.field private d:Lcom/google/googlenav/ui/wizard/D;

.field private e:Lcom/google/googlenav/ui/wizard/bj;

.field private f:Lcom/google/googlenav/ui/wizard/aY;

.field private g:Lcom/google/googlenav/ui/wizard/bq;

.field private h:Lcom/google/googlenav/ui/wizard/fn;

.field private i:Lcom/google/googlenav/ui/wizard/bu;

.field private j:Lcom/google/googlenav/ui/wizard/bw;

.field private k:Lcom/google/googlenav/ui/wizard/bH;

.field private l:Lcom/google/googlenav/ui/wizard/bM;

.field private m:Lcom/google/googlenav/ui/wizard/bU;

.field private n:Lcom/google/googlenav/ui/wizard/bZ;

.field private o:Lcom/google/googlenav/ui/wizard/ca;

.field private p:Lcom/google/googlenav/ui/wizard/cd;

.field private q:Lcom/google/googlenav/ui/wizard/ce;

.field private r:Lcom/google/googlenav/ui/wizard/cq;

.field private s:Lcom/google/googlenav/ui/wizard/ct;

.field private t:Lcom/google/googlenav/ui/wizard/cD;

.field private u:Lcom/google/googlenav/ui/wizard/cH;

.field private v:Lcom/google/googlenav/ui/wizard/M;

.field private w:Lcom/google/googlenav/ui/wizard/gF;

.field private x:Lcom/google/googlenav/ui/wizard/cM;

.field private y:Lcom/google/googlenav/ui/wizard/cR;

.field private z:Lcom/google/googlenav/ui/wizard/di;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    .line 101
    return-void
.end method


# virtual methods
.method public A()Lcom/google/googlenav/ui/wizard/eO;
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->F:Lcom/google/googlenav/ui/wizard/eO;

    if-nez v0, :cond_15

    .line 304
    new-instance v0, Lcom/google/googlenav/ui/wizard/eO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v2

    invoke-virtual {v2}, Lax/l;->g()Lax/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eO;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lax/m;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->F:Lcom/google/googlenav/ui/wizard/eO;

    .line 307
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->F:Lcom/google/googlenav/ui/wizard/eO;

    return-object v0
.end method

.method public B()Lcom/google/googlenav/ui/wizard/eT;
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->G:Lcom/google/googlenav/ui/wizard/eT;

    if-nez v0, :cond_d

    .line 312
    new-instance v0, Lcom/google/googlenav/ui/wizard/eT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/eT;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->G:Lcom/google/googlenav/ui/wizard/eT;

    .line 314
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->G:Lcom/google/googlenav/ui/wizard/eT;

    return-object v0
.end method

.method public C()Lcom/google/googlenav/ui/wizard/fh;
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->H:Lcom/google/googlenav/ui/wizard/fh;

    if-nez v0, :cond_d

    .line 319
    new-instance v0, Lcom/google/googlenav/ui/wizard/fh;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/fh;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->H:Lcom/google/googlenav/ui/wizard/fh;

    .line 321
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->H:Lcom/google/googlenav/ui/wizard/fh;

    return-object v0
.end method

.method public D()Lcom/google/googlenav/ui/wizard/fX;
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->R:Lcom/google/googlenav/ui/wizard/fX;

    if-nez v0, :cond_d

    .line 326
    new-instance v0, Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/fX;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->R:Lcom/google/googlenav/ui/wizard/fX;

    .line 328
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->R:Lcom/google/googlenav/ui/wizard/fX;

    return-object v0
.end method

.method public E()Lcom/google/googlenav/ui/wizard/hg;
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->I:Lcom/google/googlenav/ui/wizard/hg;

    if-nez v0, :cond_13

    .line 333
    new-instance v0, Lcom/google/googlenav/ui/wizard/hg;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hg;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->I:Lcom/google/googlenav/ui/wizard/hg;

    .line 335
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->I:Lcom/google/googlenav/ui/wizard/hg;

    return-object v0
.end method

.method public F()Lcom/google/googlenav/ui/wizard/fn;
    .registers 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->h:Lcom/google/googlenav/ui/wizard/fn;

    if-nez v0, :cond_f

    .line 340
    new-instance v0, Lcom/google/googlenav/ui/wizard/fn;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    sget-object v2, Lcom/google/googlenav/offers/j;->b:Lcom/google/googlenav/offers/j;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/fn;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/view/dialog/bs;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->h:Lcom/google/googlenav/ui/wizard/fn;

    .line 342
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->h:Lcom/google/googlenav/ui/wizard/fn;

    return-object v0
.end method

.method public G()Lcom/google/googlenav/ui/wizard/hx;
    .registers 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->J:Lcom/google/googlenav/ui/wizard/hx;

    if-nez v0, :cond_13

    .line 348
    new-instance v0, Lcom/google/googlenav/ui/wizard/hx;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hx;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->J:Lcom/google/googlenav/ui/wizard/hx;

    .line 350
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->J:Lcom/google/googlenav/ui/wizard/hx;

    return-object v0
.end method

.method public H()Lcom/google/googlenav/ui/wizard/hZ;
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->K:Lcom/google/googlenav/ui/wizard/hZ;

    if-nez v0, :cond_d

    .line 355
    new-instance v0, Lcom/google/googlenav/ui/wizard/hZ;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/hZ;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->K:Lcom/google/googlenav/ui/wizard/hZ;

    .line 357
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->K:Lcom/google/googlenav/ui/wizard/hZ;

    return-object v0
.end method

.method public I()Lcom/google/googlenav/ui/wizard/ft;
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->P:Lcom/google/googlenav/ui/wizard/ft;

    if-nez v0, :cond_10

    .line 362
    invoke-static {}, Lcom/google/googlenav/ui/view/android/aj;->a()Lcom/google/googlenav/ui/view/android/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aj;->a(Lcom/google/googlenav/ui/wizard/ju;)Lcom/google/googlenav/ui/wizard/ft;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->P:Lcom/google/googlenav/ui/wizard/ft;

    .line 365
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->P:Lcom/google/googlenav/ui/wizard/ft;

    return-object v0
.end method

.method public J()Lcom/google/googlenav/ui/wizard/gj;
    .registers 6

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Q:Lcom/google/googlenav/ui/wizard/gj;

    if-nez v0, :cond_24

    .line 370
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->B()Lan/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->C()Lcom/google/googlenav/ui/ap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/ju;->E()Lat/u;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lan/h;Lcom/google/googlenav/ui/ap;Lat/u;)Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Q:Lcom/google/googlenav/ui/wizard/gj;

    .line 375
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Q:Lcom/google/googlenav/ui/wizard/gj;

    return-object v0
.end method

.method public K()Lcom/google/googlenav/ui/wizard/bq;
    .registers 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->g:Lcom/google/googlenav/ui/wizard/bq;

    if-nez v0, :cond_20

    .line 380
    new-instance v0, Lcom/google/googlenav/ui/wizard/bq;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->B()Lan/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bq;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lan/h;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->g:Lcom/google/googlenav/ui/wizard/bq;

    .line 382
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->g:Lcom/google/googlenav/ui/wizard/bq;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bq;->A()Las/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 385
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->g:Lcom/google/googlenav/ui/wizard/bq;

    return-object v0
.end method

.method public L()Lcom/google/googlenav/ui/wizard/ia;
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->L:Lcom/google/googlenav/ui/wizard/ia;

    if-nez v0, :cond_d

    .line 390
    new-instance v0, Lcom/google/googlenav/ui/wizard/ia;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ia;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->L:Lcom/google/googlenav/ui/wizard/ia;

    .line 392
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->L:Lcom/google/googlenav/ui/wizard/ia;

    return-object v0
.end method

.method public M()Lcom/google/googlenav/ui/wizard/ix;
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->M:Lcom/google/googlenav/ui/wizard/ix;

    if-nez v0, :cond_d

    .line 397
    new-instance v0, Lcom/google/googlenav/ui/wizard/ix;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ix;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->M:Lcom/google/googlenav/ui/wizard/ix;

    .line 399
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->M:Lcom/google/googlenav/ui/wizard/ix;

    return-object v0
.end method

.method public N()Lcom/google/googlenav/ui/wizard/ij;
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->N:Lcom/google/googlenav/ui/wizard/ij;

    if-nez v0, :cond_d

    .line 404
    new-instance v0, Lcom/google/googlenav/ui/wizard/ij;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ij;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->N:Lcom/google/googlenav/ui/wizard/ij;

    .line 406
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->N:Lcom/google/googlenav/ui/wizard/ij;

    return-object v0
.end method

.method public O()Lcom/google/googlenav/ui/wizard/bU;
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->m:Lcom/google/googlenav/ui/wizard/bU;

    if-nez v0, :cond_1a

    .line 424
    new-instance v0, Lcom/google/googlenav/ui/wizard/bU;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bU;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->m:Lcom/google/googlenav/ui/wizard/bU;

    .line 426
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->m:Lcom/google/googlenav/ui/wizard/bU;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bU;->A()Las/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 429
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->m:Lcom/google/googlenav/ui/wizard/bU;

    return-object v0
.end method

.method public P()Lcom/google/googlenav/ui/wizard/iB;
    .registers 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->S:Lcom/google/googlenav/ui/wizard/iB;

    if-nez v0, :cond_15

    .line 441
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/google/googlenav/ui/wizard/iB;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/iB;-><init>(Lcom/google/googlenav/ui/wizard/ju;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->S:Lcom/google/googlenav/ui/wizard/iB;

    .line 445
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->S:Lcom/google/googlenav/ui/wizard/iB;

    return-object v0
.end method

.method public Q()Lcom/google/googlenav/ui/wizard/iG;
    .registers 5

    .prologue
    .line 449
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->r()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->U:Lcom/google/googlenav/ui/wizard/iG;

    if-nez v0, :cond_22

    .line 450
    new-instance v0, Lcom/google/googlenav/ui/wizard/iG;

    new-instance v1, Lcom/google/googlenav/be;

    invoke-direct {v1}, Lcom/google/googlenav/be;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/iG;-><init>(Lcom/google/googlenav/be;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->U:Lcom/google/googlenav/ui/wizard/iG;

    .line 452
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->U:Lcom/google/googlenav/ui/wizard/iG;

    return-object v0
.end method

.method public R()Lcom/google/googlenav/ui/wizard/iK;
    .registers 6

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->V:Lcom/google/googlenav/ui/wizard/iK;

    if-nez v0, :cond_2c

    .line 457
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    .line 458
    new-instance v1, Lai/a;

    new-instance v2, Landroid/location/Geocoder;

    new-instance v3, Ljava/util/Locale;

    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/common/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-direct {v1, v2}, Lai/a;-><init>(Landroid/location/Geocoder;)V

    .line 460
    new-instance v0, Lcom/google/googlenav/ui/wizard/iK;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/ui/wizard/iK;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lai/a;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->V:Lcom/google/googlenav/ui/wizard/iK;

    .line 463
    :cond_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->V:Lcom/google/googlenav/ui/wizard/iK;

    return-object v0
.end method

.method public S()Lcom/google/googlenav/ui/wizard/iT;
    .registers 4

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->W:Lcom/google/googlenav/ui/wizard/iT;

    if-nez v0, :cond_15

    .line 468
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    .line 469
    new-instance v1, Lcom/google/googlenav/ui/wizard/iT;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/iT;-><init>(Lcom/google/googlenav/ui/wizard/ju;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->W:Lcom/google/googlenav/ui/wizard/iT;

    .line 471
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->W:Lcom/google/googlenav/ui/wizard/iT;

    return-object v0
.end method

.method public T()Lcom/google/googlenav/ui/wizard/fo;
    .registers 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->X:Lcom/google/googlenav/ui/wizard/fo;

    if-nez v0, :cond_d

    .line 476
    new-instance v0, Lcom/google/googlenav/ui/wizard/fo;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/fo;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->X:Lcom/google/googlenav/ui/wizard/fo;

    .line 478
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->X:Lcom/google/googlenav/ui/wizard/fo;

    return-object v0
.end method

.method public U()Lcom/google/googlenav/ui/wizard/ew;
    .registers 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Y:Lcom/google/googlenav/ui/wizard/ew;

    if-nez v0, :cond_f

    .line 483
    new-instance v0, Lcom/google/googlenav/ui/wizard/ew;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    sget-object v2, Lcom/google/googlenav/offers/j;->a:Lcom/google/googlenav/offers/j;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ew;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/view/dialog/bs;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Y:Lcom/google/googlenav/ui/wizard/ew;

    .line 486
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Y:Lcom/google/googlenav/ui/wizard/ew;

    return-object v0
.end method

.method public V()Lcom/google/googlenav/ui/wizard/ja;
    .registers 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Z:Lcom/google/googlenav/ui/wizard/ja;

    if-nez v0, :cond_d

    .line 491
    new-instance v0, Lcom/google/googlenav/ui/wizard/ja;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Z:Lcom/google/googlenav/ui/wizard/ja;

    .line 493
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Z:Lcom/google/googlenav/ui/wizard/ja;

    return-object v0
.end method

.method public W()Lcom/google/googlenav/ui/wizard/jj;
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->aa:Lcom/google/googlenav/ui/wizard/jj;

    if-nez v0, :cond_d

    .line 498
    new-instance v0, Lcom/google/googlenav/ui/wizard/jj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/jj;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->aa:Lcom/google/googlenav/ui/wizard/jj;

    .line 500
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->aa:Lcom/google/googlenav/ui/wizard/jj;

    return-object v0
.end method

.method public X()Lcom/google/googlenav/ui/wizard/eq;
    .registers 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->D:Lcom/google/googlenav/ui/wizard/eq;

    if-nez v0, :cond_13

    .line 505
    new-instance v0, Lcom/google/googlenav/ui/wizard/eq;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eq;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->D:Lcom/google/googlenav/ui/wizard/eq;

    .line 507
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->D:Lcom/google/googlenav/ui/wizard/eq;

    return-object v0
.end method

.method public Y()Lcom/google/googlenav/ui/wizard/js;
    .registers 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->ab:Lcom/google/googlenav/ui/wizard/js;

    if-nez v0, :cond_10

    .line 512
    invoke-static {}, Lcom/google/googlenav/ui/view/android/aj;->a()Lcom/google/googlenav/ui/view/android/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aj;->b(Lcom/google/googlenav/ui/wizard/ju;)Lcom/google/googlenav/ui/wizard/js;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->ab:Lcom/google/googlenav/ui/wizard/js;

    .line 514
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->ab:Lcom/google/googlenav/ui/wizard/js;

    return-object v0
.end method

.method public Z()Z
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->e:Lcom/google/googlenav/ui/wizard/bj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->e:Lcom/google/googlenav/ui/wizard/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bj;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a()Lcom/google/googlenav/ui/wizard/q;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->b:Lcom/google/googlenav/ui/wizard/q;

    if-nez v0, :cond_d

    .line 105
    new-instance v0, Lcom/google/googlenav/ui/wizard/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/q;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->b:Lcom/google/googlenav/ui/wizard/q;

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->b:Lcom/google/googlenav/ui/wizard/q;

    return-object v0
.end method

.method public aa()Z
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->i:Lcom/google/googlenav/ui/wizard/bu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->i:Lcom/google/googlenav/ui/wizard/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ab()Z
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->l:Lcom/google/googlenav/ui/wizard/bM;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->l:Lcom/google/googlenav/ui/wizard/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bM;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ac()Z
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->n:Lcom/google/googlenav/ui/wizard/bZ;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->n:Lcom/google/googlenav/ui/wizard/bZ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ad()Z
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->G:Lcom/google/googlenav/ui/wizard/eT;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->G:Lcom/google/googlenav/ui/wizard/eT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eT;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ae()Z
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Q:Lcom/google/googlenav/ui/wizard/gj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Q:Lcom/google/googlenav/ui/wizard/gj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gj;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public af()Z
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->L:Lcom/google/googlenav/ui/wizard/ia;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->L:Lcom/google/googlenav/ui/wizard/ia;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ia;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ag()Z
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->N:Lcom/google/googlenav/ui/wizard/ij;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->N:Lcom/google/googlenav/ui/wizard/ij;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ij;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ah()Z
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->X:Lcom/google/googlenav/ui/wizard/fo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->X:Lcom/google/googlenav/ui/wizard/fo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fo;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ai()Z
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->aa:Lcom/google/googlenav/ui/wizard/jj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->aa:Lcom/google/googlenav/ui/wizard/jj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jj;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public aj()Z
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->ab:Lcom/google/googlenav/ui/wizard/js;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->ab:Lcom/google/googlenav/ui/wizard/js;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/js;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ak()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 706
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->d:Lcom/google/googlenav/ui/wizard/D;

    .line 707
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->f:Lcom/google/googlenav/ui/wizard/aY;

    .line 708
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->v:Lcom/google/googlenav/ui/wizard/M;

    .line 709
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->R:Lcom/google/googlenav/ui/wizard/fX;

    .line 710
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->e:Lcom/google/googlenav/ui/wizard/bj;

    .line 711
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->h:Lcom/google/googlenav/ui/wizard/fn;

    .line 712
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->g:Lcom/google/googlenav/ui/wizard/bq;

    .line 713
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->f:Lcom/google/googlenav/ui/wizard/aY;

    .line 714
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->i:Lcom/google/googlenav/ui/wizard/bu;

    .line 715
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->j:Lcom/google/googlenav/ui/wizard/bw;

    .line 716
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->k:Lcom/google/googlenav/ui/wizard/bH;

    .line 717
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->l:Lcom/google/googlenav/ui/wizard/bM;

    .line 718
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->m:Lcom/google/googlenav/ui/wizard/bU;

    .line 719
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->n:Lcom/google/googlenav/ui/wizard/bZ;

    .line 720
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->o:Lcom/google/googlenav/ui/wizard/ca;

    .line 721
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->p:Lcom/google/googlenav/ui/wizard/cd;

    .line 722
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->q:Lcom/google/googlenav/ui/wizard/ce;

    .line 723
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->s:Lcom/google/googlenav/ui/wizard/ct;

    .line 724
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->T:Lcom/google/googlenav/ui/wizard/cw;

    .line 725
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->t:Lcom/google/googlenav/ui/wizard/cD;

    .line 726
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->u:Lcom/google/googlenav/ui/wizard/cH;

    .line 727
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->x:Lcom/google/googlenav/ui/wizard/cM;

    .line 728
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->z:Lcom/google/googlenav/ui/wizard/di;

    .line 729
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->y:Lcom/google/googlenav/ui/wizard/cR;

    .line 730
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->A:Lcom/google/googlenav/ui/wizard/dp;

    .line 731
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->B:Lcom/google/googlenav/ui/wizard/eh;

    .line 732
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->C:Lcom/google/googlenav/ui/wizard/em;

    .line 733
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->D:Lcom/google/googlenav/ui/wizard/eq;

    .line 734
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->E:Lcom/google/googlenav/ui/wizard/eN;

    .line 735
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->F:Lcom/google/googlenav/ui/wizard/eO;

    .line 736
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->G:Lcom/google/googlenav/ui/wizard/eT;

    .line 737
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->H:Lcom/google/googlenav/ui/wizard/fh;

    .line 738
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->P:Lcom/google/googlenav/ui/wizard/ft;

    .line 739
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Q:Lcom/google/googlenav/ui/wizard/gj;

    .line 740
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->I:Lcom/google/googlenav/ui/wizard/hg;

    .line 741
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->J:Lcom/google/googlenav/ui/wizard/hx;

    .line 742
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->K:Lcom/google/googlenav/ui/wizard/hZ;

    .line 743
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->L:Lcom/google/googlenav/ui/wizard/ia;

    .line 744
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->N:Lcom/google/googlenav/ui/wizard/ij;

    .line 745
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->M:Lcom/google/googlenav/ui/wizard/ix;

    .line 746
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->O:Lcom/google/googlenav/ui/wizard/id;

    .line 747
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->U:Lcom/google/googlenav/ui/wizard/iG;

    .line 748
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->V:Lcom/google/googlenav/ui/wizard/iK;

    .line 749
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->W:Lcom/google/googlenav/ui/wizard/iT;

    .line 750
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->X:Lcom/google/googlenav/ui/wizard/fo;

    .line 751
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->Z:Lcom/google/googlenav/ui/wizard/ja;

    .line 752
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->aa:Lcom/google/googlenav/ui/wizard/jj;

    .line 753
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->ab:Lcom/google/googlenav/ui/wizard/js;

    .line 754
    return-void
.end method

.method public b()Lcom/google/googlenav/ui/wizard/D;
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->d:Lcom/google/googlenav/ui/wizard/D;

    if-nez v0, :cond_d

    .line 112
    new-instance v0, Lcom/google/googlenav/ui/wizard/D;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/D;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->d:Lcom/google/googlenav/ui/wizard/D;

    .line 114
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->d:Lcom/google/googlenav/ui/wizard/D;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/ui/wizard/G;
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->c:Lcom/google/googlenav/ui/wizard/G;

    if-nez v0, :cond_d

    .line 119
    new-instance v0, Lcom/google/googlenav/ui/wizard/G;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/G;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->c:Lcom/google/googlenav/ui/wizard/G;

    .line 121
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->c:Lcom/google/googlenav/ui/wizard/G;

    return-object v0
.end method

.method public d()Lcom/google/googlenav/ui/wizard/bj;
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->e:Lcom/google/googlenav/ui/wizard/bj;

    if-nez v0, :cond_d

    .line 126
    new-instance v0, Lcom/google/googlenav/ui/wizard/bj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bj;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->e:Lcom/google/googlenav/ui/wizard/bj;

    .line 128
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->e:Lcom/google/googlenav/ui/wizard/bj;

    return-object v0
.end method

.method public e()Lcom/google/googlenav/ui/wizard/bu;
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->i:Lcom/google/googlenav/ui/wizard/bu;

    if-nez v0, :cond_13

    .line 133
    new-instance v0, Lcom/google/googlenav/ui/wizard/bu;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bu;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->i:Lcom/google/googlenav/ui/wizard/bu;

    .line 135
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->i:Lcom/google/googlenav/ui/wizard/bu;

    return-object v0
.end method

.method public f()Lcom/google/googlenav/ui/wizard/bw;
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->j:Lcom/google/googlenav/ui/wizard/bw;

    if-nez v0, :cond_d

    .line 140
    new-instance v0, Lcom/google/googlenav/ui/wizard/bw;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bw;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->j:Lcom/google/googlenav/ui/wizard/bw;

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->j:Lcom/google/googlenav/ui/wizard/bw;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/ui/wizard/bH;
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->k:Lcom/google/googlenav/ui/wizard/bH;

    if-nez v0, :cond_d

    .line 147
    new-instance v0, Lcom/google/googlenav/ui/wizard/bH;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bH;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->k:Lcom/google/googlenav/ui/wizard/bH;

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->k:Lcom/google/googlenav/ui/wizard/bH;

    return-object v0
.end method

.method public h()Lcom/google/googlenav/ui/wizard/bM;
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->l:Lcom/google/googlenav/ui/wizard/bM;

    if-nez v0, :cond_d

    .line 154
    new-instance v0, Lcom/google/googlenav/ui/wizard/bM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bM;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->l:Lcom/google/googlenav/ui/wizard/bM;

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->l:Lcom/google/googlenav/ui/wizard/bM;

    return-object v0
.end method

.method public i()Lcom/google/googlenav/ui/wizard/bZ;
    .registers 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->n:Lcom/google/googlenav/ui/wizard/bZ;

    if-nez v0, :cond_19

    .line 161
    new-instance v0, Lcom/google/googlenav/ui/wizard/bZ;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->B()Lan/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bZ;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lan/h;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->n:Lcom/google/googlenav/ui/wizard/bZ;

    .line 164
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->n:Lcom/google/googlenav/ui/wizard/bZ;

    return-object v0
.end method

.method public j()Lcom/google/googlenav/ui/wizard/ca;
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->o:Lcom/google/googlenav/ui/wizard/ca;

    if-nez v0, :cond_21

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 170
    new-instance v0, Lcom/google/googlenav/ui/wizard/ca;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->o:Lcom/google/googlenav/ui/wizard/ca;

    .line 172
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->o:Lcom/google/googlenav/ui/wizard/ca;

    return-object v0
.end method

.method public k()Lcom/google/googlenav/ui/wizard/cd;
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->p:Lcom/google/googlenav/ui/wizard/cd;

    if-nez v0, :cond_13

    .line 177
    new-instance v0, Lcom/google/googlenav/ui/wizard/cd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/cd;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->p:Lcom/google/googlenav/ui/wizard/cd;

    .line 179
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->p:Lcom/google/googlenav/ui/wizard/cd;

    return-object v0
.end method

.method public l()Lcom/google/googlenav/ui/wizard/cD;
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->t:Lcom/google/googlenav/ui/wizard/cD;

    if-nez v0, :cond_d

    .line 184
    new-instance v0, Lcom/google/googlenav/ui/wizard/cD;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/cD;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->t:Lcom/google/googlenav/ui/wizard/cD;

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->t:Lcom/google/googlenav/ui/wizard/cD;

    return-object v0
.end method

.method public m()Lcom/google/googlenav/ui/wizard/ce;
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->q:Lcom/google/googlenav/ui/wizard/ce;

    if-nez v0, :cond_d

    .line 191
    new-instance v0, Lcom/google/googlenav/ui/wizard/ce;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ce;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->q:Lcom/google/googlenav/ui/wizard/ce;

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->q:Lcom/google/googlenav/ui/wizard/ce;

    return-object v0
.end method

.method public n()Lcom/google/googlenav/ui/wizard/cH;
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->u:Lcom/google/googlenav/ui/wizard/cH;

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->a()Lah/a;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/google/googlenav/ui/wizard/cH;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/cH;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lah/a;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->u:Lcom/google/googlenav/ui/wizard/cH;

    .line 203
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->u:Lcom/google/googlenav/ui/wizard/cH;

    return-object v0
.end method

.method public o()Lcom/google/googlenav/ui/wizard/M;
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->v:Lcom/google/googlenav/ui/wizard/M;

    if-nez v0, :cond_14

    .line 208
    new-instance v0, Lcom/google/googlenav/ui/wizard/M;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v2, Lcom/google/googlenav/ui/wizard/aE;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/aE;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/M;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/wizard/aE;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->v:Lcom/google/googlenav/ui/wizard/M;

    .line 211
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->v:Lcom/google/googlenav/ui/wizard/M;

    return-object v0
.end method

.method public p()Lcom/google/googlenav/ui/wizard/gF;
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->w:Lcom/google/googlenav/ui/wizard/gF;

    if-nez v0, :cond_d

    .line 216
    new-instance v0, Lcom/google/googlenav/ui/wizard/gF;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/gF;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->w:Lcom/google/googlenav/ui/wizard/gF;

    .line 218
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->w:Lcom/google/googlenav/ui/wizard/gF;

    return-object v0
.end method

.method public q()Lcom/google/googlenav/ui/wizard/eh;
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->B:Lcom/google/googlenav/ui/wizard/eh;

    if-nez v0, :cond_d

    .line 223
    new-instance v0, Lcom/google/googlenav/ui/wizard/eh;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/eh;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->B:Lcom/google/googlenav/ui/wizard/eh;

    .line 225
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->B:Lcom/google/googlenav/ui/wizard/eh;

    return-object v0
.end method

.method public r()Lcom/google/googlenav/ui/wizard/em;
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->C:Lcom/google/googlenav/ui/wizard/em;

    if-nez v0, :cond_d

    .line 230
    new-instance v0, Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/em;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->C:Lcom/google/googlenav/ui/wizard/em;

    .line 232
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->C:Lcom/google/googlenav/ui/wizard/em;

    return-object v0
.end method

.method public s()Lcom/google/googlenav/ui/wizard/cM;
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->x:Lcom/google/googlenav/ui/wizard/cM;

    if-nez v0, :cond_13

    .line 237
    new-instance v0, Lcom/google/googlenav/ui/wizard/cM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/cM;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->x:Lcom/google/googlenav/ui/wizard/cM;

    .line 239
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->x:Lcom/google/googlenav/ui/wizard/cM;

    return-object v0
.end method

.method public t()Lcom/google/googlenav/ui/wizard/cq;
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->r:Lcom/google/googlenav/ui/wizard/cq;

    if-nez v0, :cond_d

    .line 244
    new-instance v0, Lcom/google/googlenav/ui/wizard/cq;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/cq;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->r:Lcom/google/googlenav/ui/wizard/cq;

    .line 246
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->r:Lcom/google/googlenav/ui/wizard/cq;

    return-object v0
.end method

.method public u()Lcom/google/googlenav/ui/wizard/ct;
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->s:Lcom/google/googlenav/ui/wizard/ct;

    if-nez v0, :cond_d

    .line 251
    new-instance v0, Lcom/google/googlenav/ui/wizard/ct;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ct;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->s:Lcom/google/googlenav/ui/wizard/ct;

    .line 253
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->s:Lcom/google/googlenav/ui/wizard/ct;

    return-object v0
.end method

.method public v()Lcom/google/googlenav/ui/wizard/cR;
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->y:Lcom/google/googlenav/ui/wizard/cR;

    if-nez v0, :cond_15

    .line 258
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/google/googlenav/ui/wizard/cR;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/w;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/history/w;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/cR;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/history/w;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->y:Lcom/google/googlenav/ui/wizard/cR;

    .line 262
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->y:Lcom/google/googlenav/ui/wizard/cR;

    return-object v0
.end method

.method public w()Lcom/google/googlenav/ui/wizard/aY;
    .registers 4

    .prologue
    .line 266
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->f:Lcom/google/googlenav/ui/wizard/aY;

    if-nez v1, :cond_15

    .line 268
    new-instance v1, Lcom/google/googlenav/ui/wizard/aY;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/w;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/history/w;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/aY;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/history/w;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->f:Lcom/google/googlenav/ui/wizard/aY;

    .line 271
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->f:Lcom/google/googlenav/ui/wizard/aY;

    return-object v0
.end method

.method public x()Lcom/google/googlenav/ui/wizard/di;
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->z:Lcom/google/googlenav/ui/wizard/di;

    if-nez v0, :cond_13

    .line 276
    new-instance v0, Lcom/google/googlenav/ui/wizard/di;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/di;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->z:Lcom/google/googlenav/ui/wizard/di;

    .line 279
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->z:Lcom/google/googlenav/ui/wizard/di;

    return-object v0
.end method

.method public y()Lcom/google/googlenav/ui/wizard/dp;
    .registers 9

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->A:Lcom/google/googlenav/ui/wizard/dp;

    if-nez v0, :cond_31

    .line 284
    new-instance v0, Lcom/google/googlenav/ui/wizard/dp;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->D()Lat/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->E()Lat/u;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/ju;->B()Lan/h;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v6

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/wizard/ju;->C()Lcom/google/googlenav/ui/ap;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/dp;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lat/p;Lat/u;Lan/h;Lcom/google/googlenav/aA;Lcom/google/googlenav/J;Lcom/google/googlenav/ui/ap;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->A:Lcom/google/googlenav/ui/wizard/dp;

    .line 292
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->A:Lcom/google/googlenav/ui/wizard/dp;

    return-object v0
.end method

.method public z()Lcom/google/googlenav/ui/wizard/eN;
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->E:Lcom/google/googlenav/ui/wizard/eN;

    if-nez v0, :cond_d

    .line 297
    new-instance v0, Lcom/google/googlenav/ui/wizard/eN;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jB;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/eN;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->E:Lcom/google/googlenav/ui/wizard/eN;

    .line 299
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jB;->E:Lcom/google/googlenav/ui/wizard/eN;

    return-object v0
.end method
