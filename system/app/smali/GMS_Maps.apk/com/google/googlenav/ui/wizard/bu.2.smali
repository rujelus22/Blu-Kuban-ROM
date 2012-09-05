.class public Lcom/google/googlenav/ui/wizard/bu;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cR;


# static fields
.field public static a:[I


# instance fields
.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Lau/j;

.field protected k:Lcom/google/googlenav/L;

.field private final l:Lau/y;

.field private m:Z

.field private final n:LaE/h;

.field private o:Lbb/k;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaE/h;Lcom/google/googlenav/L;)V
    .registers 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->p:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->q:Z

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bu;->n:LaE/h;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bu;->k:Lcom/google/googlenav/L;

    const-string v0, "locationMemory"

    invoke-static {v0}, Lau/y;->b(Ljava/lang/String;)Lau/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->l:Lau/y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->h()V

    return-void
.end method

.method public static H()I
    .registers 5

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->Q()I

    move-result v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "DIRECTIONS_MODE"

    invoke-interface {v1, v2}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1c

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    :goto_1b
    return v0

    :cond_1c
    const-string v2, "DIRECTIONS_MODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lak/m;->a(Ljava/lang/String;[B)Z

    goto :goto_1b
.end method

.method private I()Lcom/google/googlenav/ui/view/android/r;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/r;

    return-object v0
.end method

.method private J()V
    .registers 10

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v6

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0xd5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v7

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x1c0

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v8

    new-instance v0, Lbb/k;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_59

    const/4 v1, 0x1

    :goto_45
    const/16 v2, 0xe7

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->k()[Laq/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    iget v5, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    invoke-direct/range {v0 .. v8}, Lbb/k;-><init>(ILjava/lang/String;[Laq/a;Lau/j;ILcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->o:Lbb/k;

    return-void

    :cond_59
    const/4 v1, 0x0

    goto :goto_45
.end method

.method private K()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->I()Lcom/google/googlenav/ui/view/android/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(I)V

    return-void
.end method

.method private L()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->I()Lcom/google/googlenav/ui/view/android/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(I)V

    return-void
.end method

.method private M()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->B()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->K()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->k:Lcom/google/googlenav/L;

    const/16 v2, 0x305

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->D()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->L()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->k:Lcom/google/googlenav/L;

    const/16 v2, 0x304

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_15

    :cond_2b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->g()V

    const/4 v0, 0x1

    goto :goto_15
.end method

.method private static N()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->C()Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    :goto_9
    invoke-static {}, Lcom/google/googlenav/M;->B()Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    invoke-static {}, Lcom/google/googlenav/M;->D()Z

    move-result v3

    if-eqz v3, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    invoke-static {}, Lcom/google/googlenav/M;->E()Z

    move-result v3

    if-eqz v3, :cond_21

    add-int/lit8 v0, v0, 0x1

    :cond_21
    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlenav/ui/wizard/bu;->a:[I

    invoke-static {}, Lcom/google/googlenav/M;->C()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/google/googlenav/ui/wizard/bu;->a:[I

    aput v2, v0, v2

    move v2, v1

    :cond_30
    invoke-static {}, Lcom/google/googlenav/M;->B()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v3, Lcom/google/googlenav/ui/wizard/bu;->a:[I

    add-int/lit8 v0, v2, 0x1

    aput v1, v3, v2

    move v2, v0

    :cond_3d
    invoke-static {}, Lcom/google/googlenav/M;->D()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v1, Lcom/google/googlenav/ui/wizard/bu;->a:[I

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    move v2, v0

    :cond_4b
    invoke-static {}, Lcom/google/googlenav/M;->E()Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/google/googlenav/ui/wizard/bu;->a:[I

    add-int/lit8 v1, v2, 0x1

    const/4 v1, 0x3

    aput v1, v0, v2

    :cond_58
    return-void

    :cond_59
    move v0, v2

    goto :goto_9
.end method

.method private O()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->n:LaE/h;

    invoke-virtual {v0}, LaE/h;->j()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->n:LaE/h;

    invoke-virtual {v0}, LaE/h;->k()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->B()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->D()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->q()Z

    move-result v0

    if-nez v0, :cond_43

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->n:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->n:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->n:LaE/h;

    invoke-virtual {v1}, LaE/h;->A()Lt/y;

    move-result-object v1

    invoke-static {v0, v1}, Lau/x;->b(LaJ/B;Lt/y;)Lau/x;

    move-result-object v0

    :goto_3e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v1, v0}, Lau/j;->a(Lau/x;)V

    :cond_43
    return-void

    :cond_44
    invoke-static {}, Lau/x;->a()Lau/x;

    move-result-object v0

    goto :goto_3e
.end method

.method private P()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->k:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->h()Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/googlenav/D;->d()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-static {v0}, Lau/x;->a(Lcom/google/googlenav/ah;)Lau/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lau/j;->b(Lau/x;)V

    goto :goto_6
.end method

.method private static Q()I
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/wizard/bu;->a:[I

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->N()V

    :cond_7
    invoke-static {}, Laf/b;->w()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/google/googlenav/ui/wizard/bu;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_e
.end method

.method private R()V
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bu;->b(I)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/y;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/o;

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/o;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/o;->show()V

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static b(I)V
    .registers 6

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "DIRECTIONS_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method private c(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->I()Lcom/google/googlenav/ui/view/android/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/r;->K_()Lbb/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->o:Lbb/k;

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->I()Lcom/google/googlenav/ui/view/android/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/r;->v()V

    :goto_17
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->I()Lcom/google/googlenav/ui/view/android/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/r;->a(I)V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_28
    new-instance v0, Lcom/google/googlenav/ui/view/android/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->o:Lbb/k;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/r;-><init>(Lcom/google/googlenav/ui/p;Lbb/k;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_17
.end method


# virtual methods
.method protected B()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->C()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected C()Lau/x;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v0}, Lau/j;->as()Lau/x;

    move-result-object v0

    return-object v0
.end method

.method protected D()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected E()Lau/x;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v0}, Lau/j;->au()Lau/x;

    move-result-object v0

    return-object v0
.end method

.method protected F()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v0}, Lau/j;->as()Lau/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v2}, Lau/j;->au()Lau/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lau/j;->a(Lau/x;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v1, v0}, Lau/j;->b(Lau/x;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->c(I)V

    return-void
.end method

.method public G()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->H()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    return-void
.end method

.method public P_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Q_()V
    .registers 1

    return-void
.end method

.method public Z_()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->Z_()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Laq/a;)I
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/n;->n:Laq/a;

    invoke-virtual {v0, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->F()V

    const/4 v0, 0x3

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x4

    goto :goto_c
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    const-string v0, "b"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    :goto_12
    return v0

    :cond_13
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    goto :goto_12
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    return v0
.end method

.method protected a(I)V
    .registers 5

    const/4 v1, 0x3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    iput p1, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    packed-switch p1, :pswitch_data_4c

    :goto_a
    :pswitch_a
    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    goto :goto_a

    :pswitch_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    goto :goto_a

    :pswitch_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->q:Z

    const-string v0, "s"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Ljava/lang/String;)Lam/b;

    move-result-object v0

    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Lam/b;)V

    goto :goto_a

    :pswitch_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->q:Z

    const-string v0, "e"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Ljava/lang/String;)Lam/b;

    move-result-object v0

    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Lam/b;)V

    goto :goto_a

    :pswitch_40
    const-string v0, "m"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    goto :goto_a

    nop

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_b
        :pswitch_14
        :pswitch_1a
        :pswitch_2d
        :pswitch_40
        :pswitch_a
    .end packed-switch
.end method

.method public a(Lam/b;)V
    .registers 3

    new-instance v0, Lau/j;

    invoke-direct {v0}, Lau/j;-><init>()V

    invoke-virtual {v0, p1}, Lau/j;->a(Lam/b;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Lau/j;)V

    return-void
.end method

.method public a(Lau/b;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bu;->b(Lau/b;)I

    move-result v0

    invoke-virtual {p1}, Lau/b;->ar()Lau/j;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Lau/j;I)V

    return-void
.end method

.method public a(Lau/b;Z)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lau/b;)V

    if-eqz p2, :cond_11

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->K()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->I()Lcom/google/googlenav/ui/view/android/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->b(I)V

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->L()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->I()Lcom/google/googlenav/ui/view/android/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->b(I)V

    goto :goto_10
.end method

.method public a(Lau/j;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->H()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->O()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    return-void
.end method

.method public a(Lau/j;I)V
    .registers 5

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    :cond_8
    iput p2, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    invoke-static {p2}, Lcom/google/googlenav/ui/wizard/bu;->b(I)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lau/j;)V

    return-void
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_e

    const/16 v1, 0xb

    invoke-static {p3, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    :cond_e
    :goto_e
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/bu;->q:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v1, p1}, Lau/j;->a(Lau/x;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ss"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->r()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->J()V

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/bu;->c(I)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_47
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-virtual {v1, p1}, Lau/j;->b(Lau/x;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "es"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->r()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->J()V

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/wizard/bu;->c(I)V

    goto :goto_32
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    const-string v1, "q"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x4

    const-string v2, "q"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_17

    const/4 v0, 0x0

    :goto_d
    aput-object v0, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->o:Lbb/k;

    iget-object v2, v2, Lbb/k;->h:Lau/j;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->o:Lbb/k;

    iget v2, v2, Lbb/k;->i:I

    iput v2, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    sparse-switch p1, :sswitch_data_66

    move v0, v1

    :goto_12
    return v0

    :sswitch_13
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    goto :goto_12

    :sswitch_17
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    goto :goto_12

    :sswitch_1c
    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "Directions"

    invoke-static {v1}, Lac/a;->b(Ljava/lang/String;)V

    :cond_27
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->p:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->i()V

    goto :goto_12

    :sswitch_47
    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "Navigation"

    invoke-static {v1}, Lac/a;->b(Ljava/lang/String;)V

    :cond_52
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->j()V

    goto :goto_12

    :sswitch_56
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    goto :goto_12

    :sswitch_5b
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    goto :goto_12

    :sswitch_5f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->F()V

    goto :goto_12

    :sswitch_63
    move v0, v1

    goto :goto_12

    nop

    :sswitch_data_66
    .sparse-switch
        0xd4 -> :sswitch_13
        0xd5 -> :sswitch_17
        0xd6 -> :sswitch_1c
        0xde -> :sswitch_56
        0xdf -> :sswitch_5b
        0xe4 -> :sswitch_5f
        0xec -> :sswitch_47
        0xb56 -> :sswitch_63
    .end sparse-switch
.end method

.method protected b(Lau/b;)I
    .registers 3

    instance-of v0, p1, Lau/v;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    instance-of v0, p1, Lau/w;

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    instance-of v0, p1, Lau/i;

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected b(Ljava/lang/String;)Lam/b;
    .registers 4

    const/4 v0, 0x4

    const-string v1, "q"

    invoke-static {v0, v1, p1}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 5

    const/4 v3, 0x3

    const/4 v1, 0x0

    iput v3, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->D()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->m:Z

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    packed-switch v0, :pswitch_data_3c

    const/4 v0, -0x1

    :goto_10
    iget v2, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    if-eqz v2, :cond_34

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    if-eq v2, v3, :cond_34

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    :goto_1b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    if-nez v0, :cond_28

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Lat/h;->e(Ljava/lang/String;)V

    :cond_28
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    return-void

    :pswitch_2e
    move v0, v1

    goto :goto_10

    :pswitch_30
    const/4 v0, 0x1

    goto :goto_10

    :pswitch_32
    const/4 v0, 0x2

    goto :goto_10

    :cond_34
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->J()V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->c(I)V

    goto :goto_1b

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_30
        :pswitch_32
    .end packed-switch
.end method

.method public b(Lam/b;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    if-ne v0, v5, :cond_87

    move v4, v5

    :goto_7
    if-eqz v4, :cond_8a

    const/16 v0, 0xbc

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-static {}, Lcom/google/googlenav/ui/wizard/cA;->f()I

    move-result v1

    if-eqz v4, :cond_25

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v2

    invoke-virtual {v2}, Lau/x;->q()Z

    move-result v2

    if-nez v2, :cond_37

    :cond_25
    if-nez v4, :cond_39

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->C()Lau/x;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->C()Lau/x;

    move-result-object v2

    invoke-virtual {v2}, Lau/x;->q()Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_37
    xor-int/lit8 v1, v1, 0x4

    :cond_39
    xor-int/lit8 v7, v1, 0x8

    if-eqz v4, :cond_92

    const/16 v1, 0x496

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_44
    if-eqz v4, :cond_9a

    const/4 v1, 0x4

    move v2, v1

    :goto_48
    if-eqz v4, :cond_9d

    const/16 v1, 0x4df

    :goto_4c
    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v8, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v8}, Lcom/google/googlenav/ui/wizard/cZ;-><init>()V

    invoke-virtual {v8, v0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/wizard/cZ;->a(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/wizard/cZ;->b(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/cZ;->b(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/cZ;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/cZ;->a(B)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/cZ;->c(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/wizard/cZ;->d(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void

    :cond_87
    move v4, v6

    goto/16 :goto_7

    :cond_8a
    const/16 v0, 0xba

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_92
    const/16 v1, 0x102

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_44

    :cond_9a
    const/4 v1, 0x5

    move v2, v1

    goto :goto_48

    :cond_9d
    const/16 v1, 0x4de

    goto :goto_4c
.end method

.method public b(Lau/j;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->h()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->O()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->f()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->P()V

    if-eqz v0, :cond_2e

    invoke-static {}, LaY/G;->bt()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->H()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->p:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->i()V

    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    goto :goto_2d
.end method

.method protected c()V
    .registers 1

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->R()V

    return-void
.end method

.method public c(Lau/b;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lau/b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bu;->p:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->i()V

    return-void
.end method

.method public d(Lau/b;)V
    .registers 3

    invoke-virtual {p1}, Lau/b;->z()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    invoke-virtual {p1}, Lau/b;->au()Lau/x;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->L()V

    :cond_10
    :goto_10
    return-void

    :pswitch_11
    invoke-virtual {p1}, Lau/b;->aF()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->K()V

    goto :goto_10

    :cond_1b
    invoke-virtual {p1}, Lau/b;->aG()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->L()V

    goto :goto_10

    :cond_25
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->K()V

    goto :goto_10

    nop

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_11
    .end packed-switch
.end method

.method public e()Lau/b;
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->f()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DirectionsWizard.getRequest() called too early!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    if-ne v0, v1, :cond_30

    new-instance v0, Lau/v;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    :goto_20
    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/bu;->p:Z

    if-nez v2, :cond_52

    :goto_24
    invoke-virtual {v0, v1}, Lau/b;->a(Z)V

    invoke-virtual {v0}, Lau/b;->aR()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->o:Lbb/k;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/s;->a(Lau/b;Lbb/l;)V

    return-object v0

    :cond_30
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3d

    new-instance v0, Lau/w;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-direct {v0, v2}, Lau/w;-><init>(Lau/k;)V

    goto :goto_20

    :cond_3d
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4a

    new-instance v0, Lau/i;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-direct {v0, v2}, Lau/i;-><init>(Lau/k;)V

    goto :goto_20

    :cond_4a
    new-instance v0, Lau/r;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    invoke-direct {v0, v2}, Lau/r;-><init>(Lau/k;)V

    goto :goto_20

    :cond_52
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->D()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->C()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->C()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->l:Lau/y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->C()Lau/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/y;->a(Lau/x;)Z

    :cond_19
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->c()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->l:Lau/y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/y;->a(Lau/x;)Z

    :cond_32
    return-void
.end method

.method protected h()V
    .registers 3

    const/4 v1, -0x1

    new-instance v0, Lau/j;

    invoke-direct {v0}, Lau/j;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->j:Lau/j;

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->N()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->G()V

    return-void
.end method

.method protected i()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->M()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->V()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->e()Lcom/google/googlenav/ui/wizard/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/be;->a()V

    :cond_1f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->r()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    :cond_32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->K()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    :cond_47
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    return-void
.end method

.method protected j()V
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->M()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->k:Lcom/google/googlenav/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->E()Lau/x;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bu;->g:I

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bu;->o:Lbb/k;

    invoke-static {v3}, Lcom/google/googlenav/ui/s;->a(Lbb/l;)[Lam/b;

    move-result-object v3

    const-string v4, "w"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/L;->a(Lau/x;I[Lam/b;Ljava/lang/String;)V

    :cond_26
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    return-void
.end method

.method public k()[Laq/a;
    .registers 4

    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/google/googlenav/ui/n;->D:Laq/a;

    invoke-static {v1, v2}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/n;->E:Laq/a;

    invoke-static {v1, v2}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iget v1, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    if-nez v1, :cond_36

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-nez v1, :cond_36

    sget-object v1, Lcom/google/googlenav/ui/n;->n:Laq/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Laq/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laq/a;

    :goto_48
    return-object v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public o()V
    .registers 4

    const/4 v2, 0x2

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:I

    packed-switch v0, :pswitch_data_5c

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    iput v2, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    :goto_14
    return-void

    :pswitch_15
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->g()V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->b()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v1

    invoke-static {v1, v0}, LaY/G;->a(Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/y;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Lcom/google/googlenav/ui/wizard/y;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    :cond_51
    iput v2, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    goto :goto_14

    :pswitch_54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bu;->e:I

    goto :goto_14

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_15
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method
