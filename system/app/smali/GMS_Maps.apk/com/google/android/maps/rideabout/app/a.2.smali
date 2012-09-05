.class public Lcom/google/android/maps/rideabout/app/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbc/d;

.field private b:LF/C;

.field private c:Lcom/google/android/maps/rideabout/app/c;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lbc/d;Lcom/google/android/maps/rideabout/app/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lbc/d;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    return-void
.end method

.method private b(ZLjava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_6

    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/rideabout/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    return-object p2
.end method

.method private b(LF/C;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/a;->c(LF/C;)Lcom/google/android/maps/rideabout/app/c;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->b:LF/D;

    iget-object v2, p1, LF/C;->b:LF/D;

    if-ne v0, v2, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    if-nez v0, :cond_22

    iget-object v0, p1, LF/C;->c:Lbc/a;

    if-nez v0, :cond_46

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_2c

    iget-object v0, p1, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_46

    :cond_2c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_4c

    iget-object v0, p1, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_4c

    iget-object v0, p1, LF/C;->c:Lbc/a;

    iget-object v0, v0, Lbc/a;->a:Lbc/t;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v2, v2, LF/C;->c:Lbc/a;

    iget-object v2, v2, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v2}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_46
    const/4 v0, 0x1

    :goto_47
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/a;->e:Z

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    return-void

    :cond_4c
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private c(LF/C;)Lcom/google/android/maps/rideabout/app/c;
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, LF/C;->c:Lbc/a;

    sget-object v1, Lcom/google/android/maps/rideabout/app/b;->b:[I

    iget-object v2, p1, LF/C;->b:LF/D;

    invoke-virtual {v2}, LF/D;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_96

    :goto_11
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    :goto_13
    return-object v0

    :pswitch_14
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->i:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :pswitch_17
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lbc/d;

    iget-object v2, v0, Lbc/a;->a:Lbc/t;

    invoke-virtual {v1, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/rideabout/app/b;->a:[I

    invoke-virtual {v1}, Lbc/h;->b()Lbc/q;

    move-result-object v3

    invoke-virtual {v3}, Lbc/q;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a0

    goto :goto_11

    :pswitch_32
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :pswitch_35
    iget v2, v0, Lbc/a;->b:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3e

    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->b:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :cond_3e
    :pswitch_3e
    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lbc/d;

    iget-object v3, v0, Lbc/a;->a:Lbc/t;

    invoke-virtual {v2, v3}, Lbc/d;->g(Lbc/t;)Z

    move-result v2

    invoke-virtual {v1}, Lbc/h;->w()F

    move-result v1

    const/high16 v3, 0x3f80

    iget v4, v0, Lbc/a;->b:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    if-eqz v2, :cond_61

    iget v0, v0, Lbc/a;->b:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_61

    const/high16 v0, 0x447a

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_61

    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->d:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :cond_61
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :pswitch_64
    iget v2, v0, Lbc/a;->b:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_85

    instance-of v2, v1, Lbc/o;

    if-eqz v2, :cond_7e

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lbc/d;

    iget-object v0, v0, Lbc/a;->a:Lbc/t;

    invoke-virtual {v1, v0}, Lbc/d;->c(Lbc/t;)Z

    move-result v0

    if-eqz v0, :cond_7b

    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->f:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :cond_7b
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :cond_7e
    instance-of v0, v1, Lbc/m;

    if-eqz v0, :cond_85

    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :cond_85
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->j()Z

    move-result v0

    if-eqz v0, :cond_8d

    iput-boolean v4, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    :cond_8d
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    :pswitch_90
    iput-boolean v4, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->g:Lcom/google/android/maps/rideabout/app/c;

    goto/16 :goto_13

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_35
        :pswitch_3e
        :pswitch_64
        :pswitch_90
    .end packed-switch
.end method

.method private c(ZLjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->m()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    if-nez p1, :cond_c

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->n()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3a
    return-object v1
.end method

.method private m()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->p()I

    move-result v1

    const-string v0, ""

    if-eqz v1, :cond_22

    invoke-static {v1}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v1

    if-nez v1, :cond_22

    const/16 v1, 0x3b0

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_22
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->p()I

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->o()F

    move-result v1

    float-to-int v1, v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method private o()F
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    iget v0, v0, Lbc/a;->b:F

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v1

    invoke-virtual {v1}, Lbc/h;->x()F

    move-result v2

    invoke-virtual {v1}, Lbc/h;->p()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method private p()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    iget v0, v0, Lbc/a;->b:F

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v1

    invoke-virtual {v1}, Lbc/h;->y()I

    move-result v2

    invoke-virtual {v1}, Lbc/h;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, v2, v0

    return v0
.end method

.method private static q()J
    .registers 2

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->t:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_be

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :pswitch_16
    const/16 v1, 0x401

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lbc/h;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :pswitch_2d
    check-cast v0, Lbc/s;

    const/16 v1, 0x3b5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lbc/s;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lbc/s;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :pswitch_50
    invoke-virtual {v0}, Lbc/h;->a()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :pswitch_6b
    const/16 v0, 0x3c7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :pswitch_76
    const/16 v0, 0x3c5

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :pswitch_81
    check-cast v0, Lbc/o;

    const/16 v1, 0x3ed

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lbc/o;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lbc/o;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    :pswitch_a5
    const/16 v0, 0x3b1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    :pswitch_ad
    const/16 v0, 0x3ff

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    :pswitch_b5
    const/16 v0, 0x3df

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_50
        :pswitch_ad
        :pswitch_16
        :pswitch_2d
        :pswitch_6b
        :pswitch_76
        :pswitch_81
        :pswitch_a5
        :pswitch_b5
    .end packed-switch
.end method

.method public a(ZLjava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v3

    sget-object v4, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v5, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v5}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_56

    :pswitch_14
    move-object v0, v2

    :goto_15
    return-object v0

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v2

    if-nez v2, :cond_21

    :goto_1c
    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/rideabout/app/a;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_21
    move v0, v1

    goto :goto_1c

    :pswitch_23
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lbc/h;->a(Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_54

    invoke-static {}, Lcom/google/android/maps/rideabout/app/a;->q()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_54

    long-to-int v2, v3

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bq;->a(IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_45

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/rideabout/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_45
    const/16 v3, 0x3bd

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_54
    move-object v0, v2

    goto :goto_15

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_16
        :pswitch_23
        :pswitch_16
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method public a(LF/C;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/a;->b(LF/C;)V

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/a;->e:Z

    return v0
.end method

.method public b()Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    iget-boolean v1, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    if-eqz v1, :cond_13

    :goto_12
    :pswitch_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    sget-object v2, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    if-ne v1, v2, :cond_21

    const/16 v1, 0x3d5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    check-cast v0, Lbc/s;

    invoke-virtual {v0}, Lbc/s;->E()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {p0, v3}, Lcom/google/android/maps/rideabout/app/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public d()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->a()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x3d6

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "/"

    invoke-direct {p0, v4, v3}, Lcom/google/android/maps/rideabout/app/a;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->p()I

    move-result v1

    const/16 v2, 0x3cf

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_4b
    const-string v0, "/"

    invoke-virtual {p0, v4, v0}, Lcom/google/android/maps/rideabout/app/a;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public e()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    :cond_13
    :goto_13
    :pswitch_13
    return-object v0

    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_19
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lbc/h;->a(Ljava/util/Date;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    invoke-static {}, Lcom/google/android/maps/rideabout/app/a;->q()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    long-to-int v0, v1

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bq;->a(IZ)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3bd

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public f()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    sget-object v0, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    :cond_10
    :pswitch_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public g()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    iget v0, v0, Lbc/a;->b:F

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v1

    invoke-virtual {v1}, Lbc/h;->z()I

    move-result v2

    invoke-virtual {v1}, Lbc/h;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, v2, v0

    return v0
.end method

.method public h()Z
    .registers 3

    sget-object v0, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_12

    const/4 v0, 0x1

    :goto_e
    return v0

    :sswitch_f
    const/4 v0, 0x0

    goto :goto_e

    nop

    :sswitch_data_12
    .sparse-switch
        0x2 -> :sswitch_f
        0x8 -> :sswitch_f
        0x9 -> :sswitch_f
    .end sparse-switch
.end method

.method public i()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v1, v1, LF/C;->b:LF/D;

    sget-object v2, LF/D;->c:LF/D;

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v1, v1, LF/C;->a:LF/R;

    invoke-virtual {v1}, LF/R;->a()LF/S;

    move-result-object v1

    sget-object v2, LF/S;->a:LF/S;

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public j()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()Lbc/h;

    move-result-object v0

    instance-of v1, v0, Lbc/p;

    if-nez v1, :cond_c

    instance-of v0, v0, Lbc/k;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public k()Lbc/h;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v0, v0, LF/C;->c:Lbc/a;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->a:Lbc/d;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LF/C;

    iget-object v1, v1, LF/C;->c:Lbc/a;

    iget-object v1, v1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    goto :goto_b
.end method

.method public l()Lcom/google/android/maps/rideabout/app/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    return-object v0
.end method
