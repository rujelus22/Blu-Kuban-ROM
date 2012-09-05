.class public Lcom/google/googlenav/ui/wizard/hS;
.super Ljava/lang/Object;


# instance fields
.field private A:Lcom/google/googlenav/ui/wizard/dv;

.field private B:Lcom/google/googlenav/ui/wizard/dB;

.field private C:Lcom/google/googlenav/ui/wizard/dI;

.field private D:Lcom/google/googlenav/ui/wizard/dY;

.field private E:Lcom/google/googlenav/ui/wizard/fj;

.field private F:Lcom/google/googlenav/ui/wizard/fu;

.field private G:Lcom/google/googlenav/ui/wizard/fO;

.field private H:Lcom/google/googlenav/ui/wizard/go;

.field private I:Lcom/google/googlenav/ui/wizard/gL;

.field private J:Lcom/google/googlenav/ui/wizard/gx;

.field private K:Lcom/google/googlenav/ui/wizard/gr;

.field private L:Lcom/google/googlenav/ui/wizard/eo;

.field private M:Lcom/google/googlenav/ui/wizard/eA;

.field private N:Lcom/google/googlenav/ui/wizard/gP;

.field private O:Lcom/google/googlenav/ui/wizard/bO;

.field private P:Lcom/google/googlenav/ui/wizard/gU;

.field private Q:Lcom/google/googlenav/ui/wizard/gY;

.field private R:Lcom/google/googlenav/ui/wizard/hi;

.field private S:Lcom/google/googlenav/ui/wizard/hp;

.field private T:Lcom/google/googlenav/ui/wizard/hv;

.field private U:Lcom/google/googlenav/ui/wizard/hA;

.field private V:Lcom/google/googlenav/ui/wizard/hG;

.field private W:Lcom/google/googlenav/ui/wizard/hI;

.field protected final a:Lcom/google/googlenav/ui/wizard/hM;

.field private b:Lcom/google/googlenav/ui/wizard/o;

.field private c:Lcom/google/googlenav/ui/wizard/D;

.field private d:Lcom/google/googlenav/ui/wizard/A;

.field private e:Lcom/google/googlenav/ui/wizard/aT;

.field private f:Lcom/google/googlenav/ui/wizard/ba;

.field private g:Lcom/google/googlenav/ui/wizard/dO;

.field private h:Lcom/google/googlenav/ui/wizard/be;

.field private i:Lcom/google/googlenav/ui/wizard/bf;

.field private j:Lcom/google/googlenav/ui/wizard/bq;

.field private k:Lcom/google/googlenav/ui/wizard/br;

.field private l:Lcom/google/googlenav/ui/wizard/bt;

.field private m:Lcom/google/googlenav/ui/wizard/bu;

.field private n:Lcom/google/googlenav/ui/wizard/bv;

.field private o:Lcom/google/googlenav/ui/wizard/by;

.field private p:Lcom/google/googlenav/ui/wizard/bz;

.field private q:Lcom/google/googlenav/ui/wizard/bL;

.field private r:Lcom/google/googlenav/ui/wizard/bV;

.field private s:Lcom/google/googlenav/ui/wizard/bZ;

.field private t:Lcom/google/googlenav/ui/wizard/J;

.field private u:Lcom/google/googlenav/ui/wizard/eR;

.field private v:Lcom/google/googlenav/ui/wizard/ce;

.field private w:Lcom/google/googlenav/ui/wizard/ct;

.field private x:Lcom/google/googlenav/ui/wizard/cA;

.field private y:Lcom/google/googlenav/ui/wizard/dc;

.field private z:Lcom/google/googlenav/ui/wizard/dr;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    return-void
.end method


# virtual methods
.method public A()Lcom/google/googlenav/ui/wizard/dO;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->g:Lcom/google/googlenav/ui/wizard/dO;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/wizard/dO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dO;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->g:Lcom/google/googlenav/ui/wizard/dO;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->g:Lcom/google/googlenav/ui/wizard/dO;

    return-object v0
.end method

.method public B()Lcom/google/googlenav/ui/wizard/fO;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->G:Lcom/google/googlenav/ui/wizard/fO;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/wizard/fO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/fO;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->G:Lcom/google/googlenav/ui/wizard/fO;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->G:Lcom/google/googlenav/ui/wizard/fO;

    return-object v0
.end method

.method public C()Lcom/google/googlenav/ui/wizard/eo;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->L:Lcom/google/googlenav/ui/wizard/eo;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aA;->a()Lcom/google/googlenav/ui/view/android/aA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aA;->c(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/eo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->L:Lcom/google/googlenav/ui/wizard/eo;

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->L:Lcom/google/googlenav/ui/wizard/eo;

    return-object v0
.end method

.method public D()Lcom/google/googlenav/ui/wizard/eA;
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->M:Lcom/google/googlenav/ui/wizard/eA;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->B()LaE/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->C()Lcom/google/googlenav/ui/at;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/hM;->E()LaJ/u;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;LaE/h;Lcom/google/googlenav/ui/at;LaJ/u;)Lcom/google/googlenav/ui/wizard/eA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->M:Lcom/google/googlenav/ui/wizard/eA;

    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->M:Lcom/google/googlenav/ui/wizard/eA;

    return-object v0
.end method

.method public E()Lcom/google/googlenav/ui/wizard/ba;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->f:Lcom/google/googlenav/ui/wizard/ba;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/googlenav/ui/wizard/ba;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->B()LaE/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ba;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaE/h;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->f:Lcom/google/googlenav/ui/wizard/ba;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->f:Lcom/google/googlenav/ui/wizard/ba;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ba;->i()Lcom/google/googlenav/login/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->f:Lcom/google/googlenav/ui/wizard/ba;

    return-object v0
.end method

.method public F()Lcom/google/googlenav/ui/wizard/go;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->H:Lcom/google/googlenav/ui/wizard/go;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/go;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/go;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->H:Lcom/google/googlenav/ui/wizard/go;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->H:Lcom/google/googlenav/ui/wizard/go;

    return-object v0
.end method

.method public G()Lcom/google/googlenav/ui/wizard/gL;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->I:Lcom/google/googlenav/ui/wizard/gL;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/gL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/gL;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->I:Lcom/google/googlenav/ui/wizard/gL;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->I:Lcom/google/googlenav/ui/wizard/gL;

    return-object v0
.end method

.method public H()Lcom/google/googlenav/ui/wizard/gx;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->J:Lcom/google/googlenav/ui/wizard/gx;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/gx;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/gx;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->J:Lcom/google/googlenav/ui/wizard/gx;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->J:Lcom/google/googlenav/ui/wizard/gx;

    return-object v0
.end method

.method public I()Lcom/google/googlenav/ui/wizard/bt;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->l:Lcom/google/googlenav/ui/wizard/bt;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/google/googlenav/ui/wizard/bt;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bt;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->l:Lcom/google/googlenav/ui/wizard/bt;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->l:Lcom/google/googlenav/ui/wizard/bt;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bt;->C()Lcom/google/googlenav/login/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->l:Lcom/google/googlenav/ui/wizard/bt;

    return-object v0
.end method

.method public J()Lcom/google/googlenav/ui/wizard/bO;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->O:Lcom/google/googlenav/ui/wizard/bO;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aA;->a()Lcom/google/googlenav/ui/view/android/aA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aA;->a(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/bO;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->O:Lcom/google/googlenav/ui/wizard/bO;

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->O:Lcom/google/googlenav/ui/wizard/bO;

    return-object v0
.end method

.method public K()Lcom/google/googlenav/ui/wizard/gP;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->N:Lcom/google/googlenav/ui/wizard/gP;

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->Z()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/gP;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->H()Lay/a;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/gP;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lay/a;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->N:Lcom/google/googlenav/ui/wizard/gP;

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->N:Lcom/google/googlenav/ui/wizard/gP;

    return-object v0
.end method

.method public L()Lcom/google/googlenav/ui/wizard/gU;
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->t()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->P:Lcom/google/googlenav/ui/wizard/gU;

    if-nez v0, :cond_22

    new-instance v0, Lcom/google/googlenav/ui/wizard/gU;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/gU;-><init>(Lcom/google/googlenav/bd;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->P:Lcom/google/googlenav/ui/wizard/gU;

    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->P:Lcom/google/googlenav/ui/wizard/gU;

    return-object v0
.end method

.method public M()Lcom/google/googlenav/ui/wizard/gY;
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->Q:Lcom/google/googlenav/ui/wizard/gY;

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->Z()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Laz/a;

    new-instance v2, Landroid/location/Geocoder;

    new-instance v3, Ljava/util/Locale;

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laf/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-direct {v1, v2}, Laz/a;-><init>(Landroid/location/Geocoder;)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/gY;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/ui/wizard/gY;-><init>(Lcom/google/googlenav/ui/wizard/hM;Laz/a;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->Q:Lcom/google/googlenav/ui/wizard/gY;

    :cond_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->Q:Lcom/google/googlenav/ui/wizard/gY;

    return-object v0
.end method

.method public N()Lcom/google/googlenav/ui/wizard/hi;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->R:Lcom/google/googlenav/ui/wizard/hi;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->Z()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/hi;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/hi;-><init>(Lcom/google/googlenav/ui/wizard/hM;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->R:Lcom/google/googlenav/ui/wizard/hi;

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->R:Lcom/google/googlenav/ui/wizard/hi;

    return-object v0
.end method

.method public O()Lcom/google/googlenav/ui/wizard/hp;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->S:Lcom/google/googlenav/ui/wizard/hp;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/hp;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/hp;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->S:Lcom/google/googlenav/ui/wizard/hp;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->S:Lcom/google/googlenav/ui/wizard/hp;

    return-object v0
.end method

.method public P()Lcom/google/googlenav/ui/wizard/hv;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->T:Lcom/google/googlenav/ui/wizard/hv;

    if-nez v0, :cond_23

    new-instance v0, LaX/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v1

    invoke-virtual {v1}, Lay/p;->a()Lay/a;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v0, v1, v2, v3}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/hv;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/hv;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaX/i;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->T:Lcom/google/googlenav/ui/wizard/hv;

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->T:Lcom/google/googlenav/ui/wizard/hv;

    return-object v0
.end method

.method public Q()Lcom/google/googlenav/ui/wizard/hA;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->U:Lcom/google/googlenav/ui/wizard/hA;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/hA;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/hA;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->U:Lcom/google/googlenav/ui/wizard/hA;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->U:Lcom/google/googlenav/ui/wizard/hA;

    return-object v0
.end method

.method public R()Lcom/google/googlenav/ui/wizard/dv;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->A:Lcom/google/googlenav/ui/wizard/dv;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/wizard/dv;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dv;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->A:Lcom/google/googlenav/ui/wizard/dv;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->A:Lcom/google/googlenav/ui/wizard/dv;

    return-object v0
.end method

.method public S()Lcom/google/googlenav/ui/wizard/hG;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->V:Lcom/google/googlenav/ui/wizard/hG;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aA;->a()Lcom/google/googlenav/ui/view/android/aA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aA;->d(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/hG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->V:Lcom/google/googlenav/ui/wizard/hG;

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->V:Lcom/google/googlenav/ui/wizard/hG;

    return-object v0
.end method

.method public T()Lcom/google/googlenav/ui/wizard/hI;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->W:Lcom/google/googlenav/ui/wizard/hI;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/hI;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/hI;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->W:Lcom/google/googlenav/ui/wizard/hI;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->W:Lcom/google/googlenav/ui/wizard/hI;

    return-object v0
.end method

.method public U()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->e:Lcom/google/googlenav/ui/wizard/aT;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->e:Lcom/google/googlenav/ui/wizard/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aT;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public V()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->h:Lcom/google/googlenav/ui/wizard/be;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->h:Lcom/google/googlenav/ui/wizard/be;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/be;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public W()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->k:Lcom/google/googlenav/ui/wizard/br;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->k:Lcom/google/googlenav/ui/wizard/br;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/br;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public X()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->m:Lcom/google/googlenav/ui/wizard/bu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->m:Lcom/google/googlenav/ui/wizard/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public Y()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->B:Lcom/google/googlenav/ui/wizard/dB;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->B:Lcom/google/googlenav/ui/wizard/dB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public Z()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->M:Lcom/google/googlenav/ui/wizard/eA;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->M:Lcom/google/googlenav/ui/wizard/eA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eA;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a()Lcom/google/googlenav/ui/wizard/o;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->b:Lcom/google/googlenav/ui/wizard/o;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/o;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/o;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->b:Lcom/google/googlenav/ui/wizard/o;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->b:Lcom/google/googlenav/ui/wizard/o;

    return-object v0
.end method

.method public aa()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->E:Lcom/google/googlenav/ui/wizard/fj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->E:Lcom/google/googlenav/ui/wizard/fj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fj;->r()Z

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

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->F:Lcom/google/googlenav/ui/wizard/fu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->F:Lcom/google/googlenav/ui/wizard/fu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fu;->r()Z

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

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->H:Lcom/google/googlenav/ui/wizard/go;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->H:Lcom/google/googlenav/ui/wizard/go;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/go;->r()Z

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

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->J:Lcom/google/googlenav/ui/wizard/gx;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->J:Lcom/google/googlenav/ui/wizard/gx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gx;->r()Z

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

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->U:Lcom/google/googlenav/ui/wizard/hA;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->U:Lcom/google/googlenav/ui/wizard/hA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hA;->r()Z

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

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->V:Lcom/google/googlenav/ui/wizard/hG;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->V:Lcom/google/googlenav/ui/wizard/hG;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hG;->r()Z

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

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->W:Lcom/google/googlenav/ui/wizard/hI;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->W:Lcom/google/googlenav/ui/wizard/hI;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hI;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ah()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->d:Lcom/google/googlenav/ui/wizard/A;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->t:Lcom/google/googlenav/ui/wizard/J;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->e:Lcom/google/googlenav/ui/wizard/aT;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->g:Lcom/google/googlenav/ui/wizard/dO;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->f:Lcom/google/googlenav/ui/wizard/ba;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->h:Lcom/google/googlenav/ui/wizard/be;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->i:Lcom/google/googlenav/ui/wizard/bf;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->j:Lcom/google/googlenav/ui/wizard/bq;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->k:Lcom/google/googlenav/ui/wizard/br;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->l:Lcom/google/googlenav/ui/wizard/bt;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->m:Lcom/google/googlenav/ui/wizard/bu;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->n:Lcom/google/googlenav/ui/wizard/bv;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->o:Lcom/google/googlenav/ui/wizard/by;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->p:Lcom/google/googlenav/ui/wizard/bz;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->O:Lcom/google/googlenav/ui/wizard/bO;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->r:Lcom/google/googlenav/ui/wizard/bV;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->s:Lcom/google/googlenav/ui/wizard/bZ;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->v:Lcom/google/googlenav/ui/wizard/ce;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->w:Lcom/google/googlenav/ui/wizard/ct;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->x:Lcom/google/googlenav/ui/wizard/cA;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->y:Lcom/google/googlenav/ui/wizard/dc;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->z:Lcom/google/googlenav/ui/wizard/dr;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->A:Lcom/google/googlenav/ui/wizard/dv;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->B:Lcom/google/googlenav/ui/wizard/dB;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->C:Lcom/google/googlenav/ui/wizard/dI;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->D:Lcom/google/googlenav/ui/wizard/dY;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->L:Lcom/google/googlenav/ui/wizard/eo;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->M:Lcom/google/googlenav/ui/wizard/eA;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->E:Lcom/google/googlenav/ui/wizard/fj;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->F:Lcom/google/googlenav/ui/wizard/fu;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->G:Lcom/google/googlenav/ui/wizard/fO;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->H:Lcom/google/googlenav/ui/wizard/go;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->J:Lcom/google/googlenav/ui/wizard/gx;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->I:Lcom/google/googlenav/ui/wizard/gL;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->K:Lcom/google/googlenav/ui/wizard/gr;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->P:Lcom/google/googlenav/ui/wizard/gU;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->Q:Lcom/google/googlenav/ui/wizard/gY;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->R:Lcom/google/googlenav/ui/wizard/hi;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->S:Lcom/google/googlenav/ui/wizard/hp;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->T:Lcom/google/googlenav/ui/wizard/hv;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->U:Lcom/google/googlenav/ui/wizard/hA;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->V:Lcom/google/googlenav/ui/wizard/hG;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->W:Lcom/google/googlenav/ui/wizard/hI;

    return-void
.end method

.method public b()Lcom/google/googlenav/ui/wizard/A;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->d:Lcom/google/googlenav/ui/wizard/A;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/A;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/A;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->d:Lcom/google/googlenav/ui/wizard/A;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->d:Lcom/google/googlenav/ui/wizard/A;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/ui/wizard/D;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->c:Lcom/google/googlenav/ui/wizard/D;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/D;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/D;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->c:Lcom/google/googlenav/ui/wizard/D;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->c:Lcom/google/googlenav/ui/wizard/D;

    return-object v0
.end method

.method public d()Lcom/google/googlenav/ui/wizard/aT;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->e:Lcom/google/googlenav/ui/wizard/aT;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/aT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/aT;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->e:Lcom/google/googlenav/ui/wizard/aT;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->e:Lcom/google/googlenav/ui/wizard/aT;

    return-object v0
.end method

.method public e()Lcom/google/googlenav/ui/wizard/be;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->h:Lcom/google/googlenav/ui/wizard/be;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/wizard/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/be;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->h:Lcom/google/googlenav/ui/wizard/be;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->h:Lcom/google/googlenav/ui/wizard/be;

    return-object v0
.end method

.method public f()Lcom/google/googlenav/ui/wizard/bf;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->i:Lcom/google/googlenav/ui/wizard/bf;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/bf;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bf;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->i:Lcom/google/googlenav/ui/wizard/bf;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->i:Lcom/google/googlenav/ui/wizard/bf;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/ui/wizard/bq;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->j:Lcom/google/googlenav/ui/wizard/bq;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/bq;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bq;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->j:Lcom/google/googlenav/ui/wizard/bq;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->j:Lcom/google/googlenav/ui/wizard/bq;

    return-object v0
.end method

.method public h()Lcom/google/googlenav/ui/wizard/br;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->k:Lcom/google/googlenav/ui/wizard/br;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/br;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/br;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->k:Lcom/google/googlenav/ui/wizard/br;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->k:Lcom/google/googlenav/ui/wizard/br;

    return-object v0
.end method

.method public i()Lcom/google/googlenav/ui/wizard/bu;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->m:Lcom/google/googlenav/ui/wizard/bu;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/googlenav/ui/wizard/bu;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->B()LaE/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bu;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaE/h;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->m:Lcom/google/googlenav/ui/wizard/bu;

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->m:Lcom/google/googlenav/ui/wizard/bu;

    return-object v0
.end method

.method public j()Lcom/google/googlenav/ui/wizard/bv;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->n:Lcom/google/googlenav/ui/wizard/bv;

    if-nez v0, :cond_21

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aw()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lcom/google/googlenav/ui/wizard/bv;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bv;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->n:Lcom/google/googlenav/ui/wizard/bv;

    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->n:Lcom/google/googlenav/ui/wizard/bv;

    return-object v0
.end method

.method public k()Lcom/google/googlenav/ui/wizard/by;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->o:Lcom/google/googlenav/ui/wizard/by;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/wizard/by;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/by;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->o:Lcom/google/googlenav/ui/wizard/by;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->o:Lcom/google/googlenav/ui/wizard/by;

    return-object v0
.end method

.method public l()Lcom/google/googlenav/ui/wizard/bV;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->r:Lcom/google/googlenav/ui/wizard/bV;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/bV;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bV;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->r:Lcom/google/googlenav/ui/wizard/bV;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->r:Lcom/google/googlenav/ui/wizard/bV;

    return-object v0
.end method

.method public m()Lcom/google/googlenav/ui/wizard/bz;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->p:Lcom/google/googlenav/ui/wizard/bz;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/bz;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bz;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->p:Lcom/google/googlenav/ui/wizard/bz;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->p:Lcom/google/googlenav/ui/wizard/bz;

    return-object v0
.end method

.method public n()Lcom/google/googlenav/ui/wizard/bZ;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->s:Lcom/google/googlenav/ui/wizard/bZ;

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aw()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v0

    invoke-virtual {v0}, Lay/p;->a()Lay/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/bZ;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bZ;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lay/a;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->s:Lcom/google/googlenav/ui/wizard/bZ;

    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->s:Lcom/google/googlenav/ui/wizard/bZ;

    return-object v0
.end method

.method public o()Lcom/google/googlenav/ui/wizard/J;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->t:Lcom/google/googlenav/ui/wizard/J;

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/googlenav/ui/wizard/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v2, Lcom/google/googlenav/ui/wizard/aB;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/aB;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/J;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/wizard/aB;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->t:Lcom/google/googlenav/ui/wizard/J;

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->t:Lcom/google/googlenav/ui/wizard/J;

    return-object v0
.end method

.method public p()Lcom/google/googlenav/ui/wizard/eR;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->u:Lcom/google/googlenav/ui/wizard/eR;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/eR;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/eR;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->u:Lcom/google/googlenav/ui/wizard/eR;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->u:Lcom/google/googlenav/ui/wizard/eR;

    return-object v0
.end method

.method public q()Lcom/google/googlenav/ui/wizard/dc;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->y:Lcom/google/googlenav/ui/wizard/dc;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/dc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->y:Lcom/google/googlenav/ui/wizard/dc;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->y:Lcom/google/googlenav/ui/wizard/dc;

    return-object v0
.end method

.method public r()Lcom/google/googlenav/ui/wizard/dr;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->z:Lcom/google/googlenav/ui/wizard/dr;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/dr;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/dr;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->z:Lcom/google/googlenav/ui/wizard/dr;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->z:Lcom/google/googlenav/ui/wizard/dr;

    return-object v0
.end method

.method public s()Lcom/google/googlenav/ui/wizard/ce;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->v:Lcom/google/googlenav/ui/wizard/ce;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/wizard/ce;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ce;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->v:Lcom/google/googlenav/ui/wizard/ce;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->v:Lcom/google/googlenav/ui/wizard/ce;

    return-object v0
.end method

.method public t()Lcom/google/googlenav/ui/wizard/bL;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->q:Lcom/google/googlenav/ui/wizard/bL;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/bL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/bL;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->q:Lcom/google/googlenav/ui/wizard/bL;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->q:Lcom/google/googlenav/ui/wizard/bL;

    return-object v0
.end method

.method public u()Lcom/google/googlenav/ui/wizard/ct;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->w:Lcom/google/googlenav/ui/wizard/ct;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/wizard/ct;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ct;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->w:Lcom/google/googlenav/ui/wizard/ct;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->w:Lcom/google/googlenav/ui/wizard/ct;

    return-object v0
.end method

.method public v()Lcom/google/googlenav/ui/wizard/cA;
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->x:Lcom/google/googlenav/ui/wizard/cA;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/googlenav/ui/wizard/cA;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->D()LaJ/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->E()LaJ/u;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/hM;->B()LaE/h;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v6

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/wizard/hM;->C()Lcom/google/googlenav/ui/at;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/cA;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaJ/p;LaJ/u;LaE/h;Lcom/google/googlenav/ay;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/at;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->x:Lcom/google/googlenav/ui/wizard/cA;

    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->x:Lcom/google/googlenav/ui/wizard/cA;

    return-object v0
.end method

.method public w()Lcom/google/googlenav/ui/wizard/dB;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->B:Lcom/google/googlenav/ui/wizard/dB;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/googlenav/ui/wizard/dB;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v2

    invoke-virtual {v2}, LaM/e;->d()LaM/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dB;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaM/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->B:Lcom/google/googlenav/ui/wizard/dB;

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->B:Lcom/google/googlenav/ui/wizard/dB;

    return-object v0
.end method

.method public x()Lcom/google/googlenav/ui/wizard/dI;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->C:Lcom/google/googlenav/ui/wizard/dI;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/googlenav/ui/wizard/dI;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/dI;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->C:Lcom/google/googlenav/ui/wizard/dI;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->C:Lcom/google/googlenav/ui/wizard/dI;

    return-object v0
.end method

.method public y()Lcom/google/googlenav/ui/wizard/dY;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->D:Lcom/google/googlenav/ui/wizard/dY;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aA;->a()Lcom/google/googlenav/ui/view/android/aA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aA;->b(Lcom/google/googlenav/ui/wizard/hM;)Lcom/google/googlenav/ui/wizard/dY;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->D:Lcom/google/googlenav/ui/wizard/dY;

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->D:Lcom/google/googlenav/ui/wizard/dY;

    return-object v0
.end method

.method public z()Lcom/google/googlenav/ui/wizard/fj;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->E:Lcom/google/googlenav/ui/wizard/fj;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/google/googlenav/ui/wizard/fj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hS;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v2

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v3

    invoke-virtual {v3}, LaM/e;->c()LaM/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/fj;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;LaM/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->E:Lcom/google/googlenav/ui/wizard/fj;

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hS;->E:Lcom/google/googlenav/ui/wizard/fj;

    return-object v0
.end method
