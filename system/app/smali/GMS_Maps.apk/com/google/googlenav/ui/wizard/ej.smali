.class public Lcom/google/googlenav/ui/wizard/ej;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cR;


# instance fields
.field protected a:Ljava/lang/String;

.field protected g:Lcom/google/googlenav/ui/wizard/em;

.field protected h:I

.field protected i:I

.field protected j:Lcom/google/googlenav/ui/wizard/z;

.field private k:Z

.field private l:Lcom/google/googlenav/ui/wizard/en;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->j:Lcom/google/googlenav/ui/wizard/z;

    new-instance v0, Lcom/google/googlenav/ui/wizard/en;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/ui/wizard/en;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/wizard/ej;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->l:Lcom/google/googlenav/ui/wizard/en;

    return-void
.end method

.method public static B()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->v()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const/16 v0, 0x396

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/16 v1, 0x397

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private E()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iput v1, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    return-void
.end method

.method private F()V
    .registers 9

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->G()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x384

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x380

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcd

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xfe

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/google/googlenav/ui/wizard/ek;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/wizard/ek;-><init>(Lcom/google/googlenav/ui/wizard/ej;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_a
.end method

.method private G()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    if-eqz v0, :cond_9

    :goto_8
    return v1

    :cond_9
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    if-nez v0, :cond_35

    const-string v0, ""

    :goto_13
    invoke-static {v0, v1, v1, v2}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3a

    move v0, v1

    :goto_33
    move v1, v0

    goto :goto_8

    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    goto :goto_13

    :cond_3a
    move v0, v2

    goto :goto_33
.end method

.method private H()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->k:LaJ/B;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    const-string v1, ""

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    :cond_1d
    new-instance v0, Lcom/google/googlenav/ui/wizard/el;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/el;-><init>(Lcom/google/googlenav/ui/wizard/ej;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(LaT/b;)LaT/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->l:Lcom/google/googlenav/ui/wizard/en;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/en;->a(LaT/a;)V

    :goto_35
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x38e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->e()S

    move-result v0

    const-string v1, "nt"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    goto :goto_39

    :cond_57
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(Lat/g;)V

    goto :goto_35
.end method

.method private I()Lcom/google/googlenav/ui/bl;
    .registers 5

    const/16 v0, 0x389

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->l:Lcom/google/googlenav/ui/e;

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    new-instance v2, Lcom/google/googlenav/ui/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/e;-><init>(Z)V

    iput-object v2, v1, Lcom/google/googlenav/ui/wizard/em;->l:Lcom/google/googlenav/ui/e;

    :cond_16
    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x5ef

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->l:Lcom/google/googlenav/ui/e;

    new-instance v2, Lcom/google/googlenav/ui/d;

    invoke-direct {v2}, Lcom/google/googlenav/ui/d;-><init>()V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private J()Lcom/google/googlenav/ui/bl;
    .registers 5

    invoke-static {}, Lcom/google/googlenav/ui/wizard/ej;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    new-instance v2, Lcom/google/googlenav/ui/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/e;-><init>(Z)V

    iput-object v2, v1, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    :cond_14
    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x5e4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    new-instance v2, Lcom/google/googlenav/ui/d;

    invoke-direct {v2}, Lcom/google/googlenav/ui/d;-><init>()V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private K()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/ej;->f:Lcom/google/googlenav/ui/view/android/bs;

    :goto_a
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->f()Lbb/o;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v2, Lcom/google/googlenav/ui/view/android/bh;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_a

    :cond_23
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/ej;->f:Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_a
.end method

.method protected static a(Ljava/lang/String;ILjava/util/Vector;I)V
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public C()Lcom/google/googlenav/login/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->l:Lcom/google/googlenav/ui/wizard/en;

    return-object v0
.end method

.method protected D()I
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public P_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Q_()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->l()V

    return-void
.end method

.method public W_()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->E()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ej;->k:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->e:I

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->e:I

    goto :goto_6

    :cond_15
    const/4 v0, 0x3

    goto :goto_6
.end method

.method public a(Laq/c;)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ej;->k:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->e:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x3

    goto :goto_6
.end method

.method protected a(LaT/b;)LaT/a;
    .registers 15

    new-instance v0, LaT/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/em;->g:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v5, v5, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v8, v8, Lcom/google/googlenav/ui/wizard/em;->d:LaJ/H;

    iget-object v9, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v9, v9, Lcom/google/googlenav/ui/wizard/em;->e:I

    iget-object v10, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v10, v10, Lcom/google/googlenav/ui/wizard/em;->f:I

    iget-object v11, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v11, v11, Lcom/google/googlenav/ui/wizard/em;->c:Ljava/lang/String;

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, LaT/a;-><init>(ILjava/lang/String;[BLaJ/B;Lt/y;ZILaJ/H;IILjava/lang/String;LaT/b;)V

    return-object v0
.end method

.method protected a(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->e()S

    move-result v0

    const-string v1, "m"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iput p1, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->K()V

    return-void
.end method

.method public a(LaJ/H;IILcom/google/googlenav/ui/wizard/z;)V
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/wizard/em;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/em;-><init>(Lcom/google/googlenav/ui/wizard/ej;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/em;->d:LaJ/H;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iput p2, v0, Lcom/google/googlenav/ui/wizard/em;->e:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iput p3, v0, Lcom/google/googlenav/ui/wizard/em;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/ej;->j:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->l()V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x39a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v2, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/wizard/cZ;-><init>()V

    const/16 v3, 0x381

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/wizard/cZ;->a(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/cZ;->b(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/cZ;->b(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/wizard/cZ;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    const/16 v2, 0x391

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/cZ;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/cZ;->a(B)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/cZ;->c(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/cZ;->d(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void
.end method

.method protected a(Lat/g;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ej;->e:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->a()V

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x425

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/h;->c(Lat/g;)V

    goto :goto_12
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/em;->k:LaJ/B;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->l()V

    return-void
.end method

.method protected a(Ljava/lang/String;II)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iput p2, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/em;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->e()S

    move-result v0

    const-string v1, "s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    return-void
.end method

.method protected a(Ljava/util/Vector;)V
    .registers 2

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_92

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/z;->a(IILjava/lang/Object;)Z

    move-result v7

    :goto_b
    return v7

    :sswitch_c
    const/16 v0, 0x3a3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/googlenav/ui/wizard/ej;->a(Ljava/lang/String;II)V

    goto :goto_b

    :sswitch_16
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    goto :goto_b

    :sswitch_1a
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    goto :goto_b

    :sswitch_1e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    if-ne v0, v1, :cond_26

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->F()V

    goto :goto_b

    :cond_26
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->H()V

    goto :goto_b

    :sswitch_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->a()V

    goto :goto_b

    :sswitch_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    check-cast p3, Ljava/lang/String;

    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    goto :goto_b

    :sswitch_35
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->E()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->e()S

    move-result v0

    const-string v1, "p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(Lam/b;)V

    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    goto :goto_b

    :sswitch_4b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->l:Lcom/google/googlenav/ui/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->l:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-nez v1, :cond_5a

    move v4, v7

    :cond_5a
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/e;->a(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->K()V

    goto :goto_b

    :sswitch_61
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x38d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38c

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b5

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_b

    :sswitch_7a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-nez v1, :cond_89

    move v4, v7

    :cond_89
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/e;->a(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->K()V

    goto/16 :goto_b

    nop

    :sswitch_data_92
    .sparse-switch
        0x1f5 -> :sswitch_1e
        0x1f6 -> :sswitch_2a
        0x5dd -> :sswitch_16
        0x5e1 -> :sswitch_c
        0x5e3 -> :sswitch_2e
        0x5e4 -> :sswitch_7a
        0x5e5 -> :sswitch_1a
        0x5ee -> :sswitch_35
        0x5ef -> :sswitch_4b
        0x5f0 -> :sswitch_61
    .end sparse-switch
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ej;->e:I

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ej;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ej;->k:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->K()V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ej;->e:I

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method protected e()S
    .registers 2

    const/16 v0, 0x4a

    return v0
.end method

.method protected f()Lbb/o;
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    packed-switch v0, :pswitch_data_1a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->j()Lbb/o;

    move-result-object v0

    :goto_9
    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->j()Lbb/o;

    move-result-object v0

    goto :goto_9

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->g()Lbb/o;

    move-result-object v0

    goto :goto_9

    :pswitch_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->h()Lbb/o;

    move-result-object v0

    goto :goto_9

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method protected g()Lbb/o;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()Lbb/o;
    .registers 11

    const/16 v2, 0x384

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    const-string v0, ""

    :goto_17
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-nez v1, :cond_115

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    :goto_34
    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0x5e3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->h(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0x5e3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->j(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v2

    if-nez v2, :cond_11e

    new-instance v3, Lbb/n;

    invoke-direct {v3, v1, v0}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    :goto_69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f9

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x5ee

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/16 v0, 0x390

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->k:LaJ/B;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->k:LaJ/B;

    invoke-virtual {v0}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_95
    sget-object v5, Lcom/google/googlenav/ui/bg;->bq:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    new-array v5, v9, [Lcom/google/googlenav/ui/bh;

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/bm;->a([Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->I()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x392

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aa:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v7}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    const/16 v1, 0x393

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->ab:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    new-array v5, v9, [Lcom/google/googlenav/ui/bh;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/bm;->a([Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x5f0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_f9
    const/16 v0, 0xcd

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/bp;->a(Ljava/util/Vector;Ljava/lang/String;)Lbb/p;

    move-result-object v5

    new-instance v0, Lbb/o;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->i()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-object v0

    :cond_10f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    goto/16 :goto_17

    :cond_115
    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->a:Ljava/lang/String;

    move-object v1, v6

    goto/16 :goto_34

    :cond_11e
    new-instance v3, Lbb/n;

    invoke-direct {v3, v0, v6}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    goto/16 :goto_69

    :cond_125
    const/16 v0, 0x38f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_95
.end method

.method protected i()I
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x10

    :goto_c
    return v0

    :cond_d
    const/16 v0, 0xf

    goto :goto_c
.end method

.method protected j()Lbb/o;
    .registers 10

    const/16 v8, 0x394

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x5dd

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x3a6

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->h:Ljava/lang/String;

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e9

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/googlenav/ui/bh;

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->h:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a([Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    :goto_3f
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/wizard/ej;->a(Ljava/util/Vector;)V

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x5e5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->k:LaJ/B;

    if-nez v1, :cond_ee

    const/16 v1, 0x383

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    :goto_79
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ej;->J()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v0

    if-eqz v0, :cond_b1

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    new-array v1, v7, [Lcom/google/googlenav/ui/bh;

    const/16 v2, 0x38b

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aa:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a([Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_b1
    const/16 v0, 0x395

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/bp;->a(Ljava/util/Vector;Ljava/lang/String;)Lbb/p;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_135

    new-instance v3, Lbb/n;

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    :goto_dd
    new-instance v0, Lbb/o;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->D()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-object v0

    :cond_e9
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    goto/16 :goto_3f

    :cond_ee
    const/4 v1, 0x3

    invoke-static {v1}, LK/bR;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x382

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_119

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_119
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->k:LaJ/B;

    if-eqz v2, :cond_130

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ej;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->k:LaJ/B;

    invoke-virtual {v2}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_130
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    goto/16 :goto_79

    :cond_135
    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->a:Ljava/lang/String;

    move-object v3, v6

    goto :goto_dd
.end method

.method public o()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->i:I

    iget v1, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ej;->e()S

    move-result v0

    const-string v1, "c"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    iput v2, p0, Lcom/google/googlenav/ui/wizard/ej;->e:I

    :goto_12
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->j:Lcom/google/googlenav/ui/wizard/z;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->j:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    :cond_1b
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->o()V

    :goto_1e
    return-void

    :cond_1f
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ej;->h:I

    packed-switch v0, :pswitch_data_2e

    :pswitch_24
    goto :goto_12

    :pswitch_25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    goto :goto_1e

    :pswitch_2a
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    goto :goto_1e

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_2a
    .end packed-switch
.end method
