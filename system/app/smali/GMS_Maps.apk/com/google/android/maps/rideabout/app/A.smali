.class public Lcom/google/android/maps/rideabout/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LaP/d;

.field private b:LC/z;

.field private c:Lcom/google/android/maps/rideabout/app/c;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(LaP/d;Lcom/google/android/maps/rideabout/app/c;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    .line 76
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/a;->a:LaP/d;

    .line 77
    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    .line 78
    return-void
.end method

.method private b(ZLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 234
    if-eqz p1, :cond_6

    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/rideabout/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    return-object p2
.end method

.method private b(LC/z;)V
    .registers 5
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/a;->c(LC/z;)Lcom/google/android/maps/rideabout/app/c;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->b:LC/A;

    iget-object v2, p1, LC/z;->b:LC/A;

    if-ne v0, v2, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->c:LaP/a;

    if-nez v0, :cond_22

    iget-object v0, p1, LC/z;->c:LaP/a;

    if-nez v0, :cond_46

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->c:LaP/a;

    if-eqz v0, :cond_2c

    iget-object v0, p1, LC/z;->c:LaP/a;

    if-eqz v0, :cond_46

    :cond_2c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->c:LaP/a;

    if-eqz v0, :cond_4c

    iget-object v0, p1, LC/z;->c:LaP/a;

    if-eqz v0, :cond_4c

    iget-object v0, p1, LC/z;->c:LaP/a;

    iget-object v0, v0, LaP/a;->a:LaP/t;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v2, v2, LC/z;->c:LaP/a;

    iget-object v2, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v2}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_46
    const/4 v0, 0x1

    :goto_47
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/a;->e:Z

    .line 107
    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    .line 108
    return-void

    .line 98
    :cond_4c
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private c(LC/z;)Lcom/google/android/maps/rideabout/app/c;
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    iget-object v0, p1, LC/z;->c:LaP/a;

    .line 118
    sget-object v1, Lcom/google/android/maps/rideabout/app/b;->b:[I

    iget-object v2, p1, LC/z;->b:LC/A;

    invoke-virtual {v2}, LC/A;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_96

    .line 163
    :goto_11
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    :goto_13
    return-object v0

    .line 120
    :pswitch_14
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->i:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 122
    :pswitch_17
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 124
    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->a:LaP/d;

    iget-object v2, v0, LaP/a;->a:LaP/t;

    invoke-virtual {v1, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v1

    .line 125
    sget-object v2, Lcom/google/android/maps/rideabout/app/b;->a:[I

    invoke-virtual {v1}, LaP/h;->b()LaP/q;

    move-result-object v3

    invoke-virtual {v3}, LaP/q;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a0

    goto :goto_11

    .line 127
    :pswitch_32
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 129
    :pswitch_35
    iget v2, v0, LaP/a;->b:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3e

    .line 130
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->b:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 134
    :cond_3e
    :pswitch_3e
    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->a:LaP/d;

    iget-object v3, v0, LaP/a;->a:LaP/t;

    invoke-virtual {v2, v3}, LaP/d;->g(LaP/t;)Z

    move-result v2

    .line 135
    invoke-virtual {v1}, LaP/h;->w()F

    move-result v1

    const/high16 v3, 0x3f80

    iget v4, v0, LaP/a;->b:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 136
    if-eqz v2, :cond_61

    iget v0, v0, LaP/a;->b:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_61

    const/high16 v0, 0x447a

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_61

    .line 138
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->d:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 140
    :cond_61
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 143
    :pswitch_64
    iget v2, v0, LaP/a;->b:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_85

    .line 144
    instance-of v2, v1, LaP/o;

    if-eqz v2, :cond_7e

    .line 145
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->a:LaP/d;

    iget-object v0, v0, LaP/a;->a:LaP/t;

    invoke-virtual {v1, v0}, LaP/d;->c(LaP/t;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 146
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->f:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 148
    :cond_7b
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 150
    :cond_7e
    instance-of v0, v1, LaP/m;

    if-eqz v0, :cond_85

    .line 151
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 154
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->j()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 155
    iput-boolean v4, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    .line 157
    :cond_8d
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    goto :goto_13

    .line 159
    :pswitch_90
    iput-boolean v4, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    .line 160
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->g:Lcom/google/android/maps/rideabout/app/c;

    goto/16 :goto_13

    .line 118
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch

    .line 125
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
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->m()Ljava/lang/String;

    move-result-object v1

    .line 350
    const-string v0, ""

    .line 351
    if-nez p1, :cond_c

    .line 352
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 356
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    :cond_3a
    return-object v1
.end method

.method private m()Ljava/lang/String;
    .registers 5

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->p()I

    move-result v1

    .line 366
    const-string v0, ""

    .line 367
    if-eqz v1, :cond_22

    .line 368
    invoke-static {v1}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v1

    if-nez v1, :cond_22

    .line 370
    const/16 v1, 0x48a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_22
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 378
    const-string v0, ""

    .line 379
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->o()F

    move-result v1

    float-to-int v1, v1

    .line 380
    if-eqz v1, :cond_e

    .line 381
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 383
    :cond_e
    return-object v0
.end method

.method private o()F
    .registers 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->c:LaP/a;

    iget v0, v0, LaP/a;->b:F

    .line 391
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, LaP/h;->x()F

    move-result v2

    invoke-virtual {v1}, LaP/h;->p()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method private p()I
    .registers 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->c:LaP/a;

    iget v0, v0, LaP/a;->b:F

    .line 400
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, LaP/h;->y()I

    move-result v2

    invoke-virtual {v1}, LaP/h;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, v2, v0

    return v0
.end method

.method private static q()J
    .registers 2

    .prologue
    .line 471
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->t:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_be

    .line 230
    const/4 v0, 0x0

    :goto_15
    return-object v0

    .line 199
    :pswitch_16
    const/16 v1, 0x4ec

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, LaP/h;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 203
    :pswitch_2d
    check-cast v0, LaP/s;

    .line 204
    const/16 v1, 0x48f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0}, LaP/s;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, LaP/s;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 209
    :pswitch_50
    invoke-virtual {v0}, LaP/h;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    .line 210
    const/16 v1, 0x4cf

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 214
    :pswitch_6b
    const/16 v0, 0x4a5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 216
    :pswitch_76
    const/16 v0, 0x4a3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 218
    :pswitch_81
    check-cast v0, LaP/o;

    .line 219
    const/16 v1, 0x4da

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0}, LaP/o;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, LaP/o;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/a;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 224
    :pswitch_a5
    const/16 v0, 0x48b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 226
    :pswitch_ad
    const/16 v0, 0x4eb

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 228
    :pswitch_b5
    const/16 v0, 0x4c6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 197
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
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v3

    .line 281
    sget-object v4, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v5, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v5}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_56

    :pswitch_14
    move-object v0, v2

    .line 300
    :goto_15
    return-object v0

    .line 286
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

    .line 288
    :pswitch_23
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, LaP/h;->a(Ljava/util/Date;)J

    move-result-wide v3

    .line 289
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_54

    invoke-static {}, Lcom/google/android/maps/rideabout/app/a;->q()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_54

    .line 290
    long-to-int v2, v3

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bi;->a(IZ)Ljava/lang/String;

    move-result-object v2

    .line 291
    if-eqz p1, :cond_45

    .line 292
    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/rideabout/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    :cond_45
    const/16 v3, 0x49a

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_54
    move-object v0, v2

    .line 297
    goto :goto_15

    .line 281
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

.method public a(LC/z;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/a;->b(LC/z;)V

    .line 87
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    .line 88
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/a;->e:Z

    return v0
.end method

.method public b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 179
    sget-object v1, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 184
    iget-boolean v1, p0, Lcom/google/android/maps/rideabout/app/a;->d:Z

    if-eqz v1, :cond_13

    .line 187
    :goto_12
    :pswitch_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12

    .line 179
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    sget-object v2, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    if-ne v1, v2, :cond_21

    .line 244
    const/16 v1, 0x4b7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    check-cast v0, LaP/s;

    invoke-virtual {v0}, LaP/s;->E()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {p0, v3}, Lcom/google/android/maps/rideabout/app/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public d()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_4b

    .line 258
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, LaP/h;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 261
    const/16 v1, 0x4b8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "/"

    invoke-direct {p0, v4, v3}, Lcom/google/android/maps/rideabout/app/a;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_31
    return-object v0

    .line 265
    :cond_32
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->p()I

    move-result v1

    .line 266
    const/16 v2, 0x4b1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 273
    :cond_4b
    const-string v0, "/"

    invoke-virtual {p0, v4, v0}, Lcom/google/android/maps/rideabout/app/a;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public e()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v1

    .line 306
    sget-object v2, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    .line 322
    :cond_13
    :goto_13
    :pswitch_13
    return-object v0

    .line 311
    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 313
    :pswitch_19
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, LaP/h;->a(Ljava/util/Date;)J

    move-result-wide v1

    .line 314
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    invoke-static {}, Lcom/google/android/maps/rideabout/app/a;->q()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    .line 315
    long-to-int v0, v1

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bi;->a(IZ)Ljava/lang/String;

    move-result-object v0

    .line 316
    const/16 v1, 0x49a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 306
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

    .prologue
    .line 327
    sget-object v0, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 337
    :cond_d
    :pswitch_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 333
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 334
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/a;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 327
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public g()I
    .registers 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->c:LaP/a;

    iget v0, v0, LaP/a;->b:F

    .line 410
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, LaP/h;->z()I

    move-result v2

    invoke-virtual {v1}, LaP/h;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, v2, v0

    return v0
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 419
    sget-object v0, Lcom/google/android/maps/rideabout/app/b;->c:[I

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_12

    .line 425
    const/4 v0, 0x1

    :goto_e
    return v0

    .line 423
    :sswitch_f
    const/4 v0, 0x0

    goto :goto_e

    .line 419
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

    .prologue
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v1, v1, LC/z;->b:LC/A;

    sget-object v2, LC/A;->c:LC/A;

    if-ne v1, v2, :cond_e

    .line 439
    :cond_d
    :goto_d
    return v0

    .line 436
    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v1, v1, LC/z;->a:LC/R;

    invoke-virtual {v1}, LC/R;->a()LC/S;

    move-result-object v1

    .line 439
    sget-object v2, LC/S;->a:LC/S;

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v0

    .line 447
    instance-of v1, v0, LaP/p;

    if-nez v1, :cond_c

    instance-of v0, v0, LaP/k;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public k()LaP/h;
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v0, v0, LC/z;->c:LaP/a;

    if-nez v0, :cond_c

    .line 457
    :cond_a
    const/4 v0, 0x0

    .line 459
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->a:LaP/d;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/a;->b:LC/z;

    iget-object v1, v1, LC/z;->c:LaP/a;

    iget-object v1, v1, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v1}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    goto :goto_b
.end method

.method public l()Lcom/google/android/maps/rideabout/app/c;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/a;->c:Lcom/google/android/maps/rideabout/app/c;

    return-object v0
.end method
