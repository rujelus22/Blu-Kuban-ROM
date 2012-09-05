.class public Lcom/google/googlenav/ui/wizard/fX;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cR;


# instance fields
.field protected a:Ljava/lang/String;

.field protected g:Lcom/google/googlenav/ui/wizard/gg;

.field protected h:I

.field protected i:I

.field protected j:Lcom/google/googlenav/ui/wizard/z;

.field private k:Z

.field private l:Lcom/google/googlenav/ui/wizard/gn;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->j:Lcom/google/googlenav/ui/wizard/z;

    new-instance v0, Lcom/google/googlenav/ui/wizard/gn;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/ui/wizard/gn;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/wizard/fX;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->l:Lcom/google/googlenav/ui/wizard/gn;

    return-void
.end method

.method private B()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/gg;->g:I

    if-eqz v0, :cond_9

    :goto_8
    return v1

    :cond_9
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    if-nez v0, :cond_35

    const-string v0, ""

    :goto_13
    invoke-static {v0, v1, v1, v2}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    goto :goto_13

    :cond_3a
    move v0, v2

    goto :goto_33
.end method

.method private C()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/gg;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    const-string v1, ""

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    :cond_1d
    new-instance v0, Lcom/google/googlenav/ui/wizard/fZ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fZ;-><init>(Lcom/google/googlenav/ui/wizard/fX;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(LaT/b;)LaT/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->l:Lcom/google/googlenav/ui/wizard/gn;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/gn;->a(LaT/a;)V

    :goto_35
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x38e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->g()S

    move-result v0

    const-string v1, "nt"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    goto :goto_39

    :cond_57
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(Lat/g;)V

    goto :goto_35
.end method

.method private D()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    packed-switch v1, :pswitch_data_30

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    :goto_a
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :cond_13
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    :cond_18
    return-void

    :pswitch_19
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->f()Lcom/google/googlenav/ui/view/android/bs;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_a

    :pswitch_20
    new-instance v1, Lcom/google/googlenav/ui/wizard/ga;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ga;-><init>(Lcom/google/googlenav/ui/wizard/fX;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_a

    :pswitch_28
    new-instance v1, Lcom/google/googlenav/ui/wizard/gh;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/gh;-><init>(Lcom/google/googlenav/ui/wizard/fX;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_a

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_28
        :pswitch_19
        :pswitch_20
    .end packed-switch
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput v1, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    return-void
.end method

.method public static h()Ljava/lang/String;
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

.method private j()V
    .registers 9

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->B()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/hM;

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

    new-instance v7, Lcom/google/googlenav/ui/wizard/fY;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/wizard/fY;-><init>(Lcom/google/googlenav/ui/wizard/fX;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_a
.end method


# virtual methods
.method public P_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Q_()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->l()V

    return-void
.end method

.method public W_()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->e()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->l()V

    return-void
.end method

.method public Z_()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Laq/b;)I
    .registers 4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fX;->k:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->e:I

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->e:I

    goto :goto_6

    :cond_15
    const/4 v0, 0x3

    goto :goto_6
.end method

.method public a(Laq/c;)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fX;->k:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->e:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x3

    goto :goto_6
.end method

.method protected a(LaT/b;)LaT/a;
    .registers 15

    new-instance v0, LaT/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/gg;->g:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/gg;->a:LaJ/B;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v5, v5, Lcom/google/googlenav/ui/wizard/gg;->b:Lt/y;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v8, v8, Lcom/google/googlenav/ui/wizard/gg;->d:LaJ/H;

    iget-object v9, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v9, v9, Lcom/google/googlenav/ui/wizard/gg;->e:I

    iget-object v10, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v10, v10, Lcom/google/googlenav/ui/wizard/gg;->f:I

    iget-object v11, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v11, v11, Lcom/google/googlenav/ui/wizard/gg;->c:Ljava/lang/String;

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, LaT/a;-><init>(ILjava/lang/String;[BLaJ/B;Lt/y;ZILaJ/H;IILjava/lang/String;LaT/b;)V

    return-object v0
.end method

.method protected a(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->g()S

    move-result v0

    const-string v1, "m"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

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

    iput p1, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->D()V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x39a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/hM;

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

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fX;->e:I

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x425

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/h;->c(Lat/g;)V

    goto :goto_f
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->l()V

    return-void
.end method

.method protected a(Ljava/lang/String;II)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput p2, v0, Lcom/google/googlenav/ui/wizard/gg;->g:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/gg;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->g()S

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

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_8e

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/z;->a(IILjava/lang/Object;)Z

    move-result v7

    :goto_b
    return v7

    :sswitch_c
    const/16 v0, 0x3a3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/googlenav/ui/wizard/fX;->a(Ljava/lang/String;II)V

    goto :goto_b

    :sswitch_16
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    goto :goto_b

    :sswitch_1a
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    goto :goto_b

    :sswitch_1e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    if-ne v0, v1, :cond_26

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->j()V

    goto :goto_b

    :cond_26
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->C()V

    goto :goto_b

    :sswitch_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->a()V

    goto :goto_b

    :sswitch_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    check-cast p3, Ljava/lang/String;

    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    goto :goto_b

    :sswitch_35
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->e()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->g()S

    move-result v0

    const-string v1, "p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(Lam/b;)V

    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    goto :goto_b

    :sswitch_4b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->l:Lcom/google/googlenav/ui/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->l:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-nez v1, :cond_5a

    move v4, v7

    :cond_5a
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/e;->a(Z)V

    goto :goto_b

    :sswitch_5e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/hM;

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

    :sswitch_77
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-nez v1, :cond_86

    move v4, v7

    :cond_86
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/e;->a(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->D()V

    goto/16 :goto_b

    :sswitch_data_8e
    .sparse-switch
        0x1f5 -> :sswitch_1e
        0x1f6 -> :sswitch_2a
        0x5dd -> :sswitch_16
        0x5e1 -> :sswitch_c
        0x5e3 -> :sswitch_2e
        0x5e4 -> :sswitch_77
        0x5e5 -> :sswitch_1a
        0x5ee -> :sswitch_35
        0x5ef -> :sswitch_4b
        0x5f0 -> :sswitch_5e
    .end sparse-switch
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fX;->e:I

    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fX;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fX;->k:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fX;->D()V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fX;->e:I

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method protected f()Lcom/google/googlenav/ui/view/android/bs;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()S
    .registers 2

    const/16 v0, 0x4a

    return v0
.end method

.method public i()Lcom/google/googlenav/login/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->l:Lcom/google/googlenav/ui/wizard/gn;

    return-object v0
.end method

.method public o()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->i:I

    iget v1, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->g()S

    move-result v0

    const-string v1, "c"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    iput v2, p0, Lcom/google/googlenav/ui/wizard/fX;->e:I

    :goto_12
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->j:Lcom/google/googlenav/ui/wizard/z;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->j:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    :cond_1b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->a()V

    :goto_1e
    return-void

    :cond_1f
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:I

    packed-switch v0, :pswitch_data_2e

    :pswitch_24
    goto :goto_12

    :pswitch_25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    goto :goto_1e

    :pswitch_2a
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/fX;->a(I)V

    goto :goto_1e

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_2a
    .end packed-switch
.end method
