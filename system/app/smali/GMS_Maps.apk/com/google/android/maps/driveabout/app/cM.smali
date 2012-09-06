.class public Lcom/google/android/maps/driveabout/app/cM;
.super Lcom/google/android/maps/driveabout/app/k;
.source "SourceFile"


# static fields
.field private static final d:F

.field static final e:Lcom/google/android/maps/driveabout/app/cN;

.field private static final l:F

.field private static final m:F


# instance fields
.field protected f:I

.field protected g:Lcom/google/android/maps/driveabout/app/cN;

.field protected h:Lcom/google/android/maps/driveabout/app/cN;

.field protected i:Lcom/google/android/maps/driveabout/app/cN;

.field protected j:Lcom/google/android/maps/driveabout/app/cN;

.field protected k:Lcom/google/android/maps/driveabout/app/cN;

.field private n:F

.field private final o:Lr/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    const-wide v0, 0x408f400000000000L

    invoke-static {v4, v5}, Ln/Q;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/cM;->d:F

    .line 48
    const-wide v0, 0x40a7700000000000L

    invoke-static {v4, v5}, Ln/Q;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/cM;->l:F

    .line 65
    new-instance v0, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v1, 0x418e

    const/high16 v2, 0x4220

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/cM;->e:Lcom/google/android/maps/driveabout/app/cN;

    .line 76
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/cM;->m:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/k;-><init>()V

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cM;->f:I

    .line 79
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cM;->n:F

    .line 97
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cM;->g:Lcom/google/android/maps/driveabout/app/cN;

    .line 98
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cM;->h:Lcom/google/android/maps/driveabout/app/cN;

    .line 99
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cM;->j:Lcom/google/android/maps/driveabout/app/cN;

    .line 100
    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cM;->i:Lcom/google/android/maps/driveabout/app/cN;

    .line 101
    sget-object v0, Lcom/google/android/maps/driveabout/app/cM;->e:Lcom/google/android/maps/driveabout/app/cN;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->k:Lcom/google/android/maps/driveabout/app/cN;

    .line 102
    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/cM;->o:Lr/ao;

    .line 103
    return-void
.end method

.method private a(F)F
    .registers 3
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->h:Lcom/google/android/maps/driveabout/app/cN;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cN;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    .line 210
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->h:Lcom/google/android/maps/driveabout/app/cN;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cN;->b:F

    .line 214
    :goto_c
    return v0

    .line 211
    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->g:Lcom/google/android/maps/driveabout/app/cN;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cN;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1a

    .line 212
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->g:Lcom/google/android/maps/driveabout/app/cN;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cN;->b:F

    goto :goto_c

    .line 214
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->j:Lcom/google/android/maps/driveabout/app/cN;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cN;->b:F

    goto :goto_c
.end method

.method private a(Ln/Q;Ln/r;IILn/Q;)F
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 441
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v2

    .line 443
    aget v0, v2, v3

    if-gez v0, :cond_34

    .line 445
    invoke-virtual {p2}, Ln/r;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {p2}, Ln/r;->g()Ln/Q;

    move-result-object v3

    invoke-static {v0, v3, p5, p1}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)D

    move-result-wide v3

    double-to-float v0, v3

    div-float v0, v1, v0

    .line 454
    :goto_1d
    aget v3, v2, v5

    if-gez v3, :cond_48

    .line 456
    invoke-virtual {p2}, Ln/r;->f()Ln/Q;

    move-result-object v2

    invoke-virtual {p2}, Ln/r;->g()Ln/Q;

    move-result-object v3

    invoke-static {v2, v3, p5, p1}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 466
    :cond_33
    :goto_33
    return v0

    .line 448
    :cond_34
    aget v0, v2, v3

    if-le v0, p3, :cond_5f

    .line 450
    invoke-virtual {p2}, Ln/r;->e()Ln/Q;

    move-result-object v0

    invoke-virtual {p2}, Ln/r;->f()Ln/Q;

    move-result-object v3

    invoke-static {v0, v3, p5, p1}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)D

    move-result-wide v3

    double-to-float v0, v3

    div-float v0, v1, v0

    goto :goto_1d

    .line 459
    :cond_48
    aget v2, v2, v5

    if-le v2, p4, :cond_33

    .line 461
    invoke-virtual {p2}, Ln/r;->e()Ln/Q;

    move-result-object v2

    invoke-virtual {p2}, Ln/r;->d()Ln/Q;

    move-result-object v3

    invoke-static {v2, v3, p5, p1}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_33

    :cond_5f
    move v0, v1

    goto :goto_1d
.end method

.method private a(ILn/Q;FF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cM;->c(I)Lcom/google/android/maps/driveabout/app/cN;

    move-result-object v1

    .line 178
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    iget v2, v1, Lcom/google/android/maps/driveabout/app/cN;->a:F

    iget v3, v1, Lcom/google/android/maps/driveabout/app/cN;->b:F

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/l;FLn/Q;IIF)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 302
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cM;->f:I

    if-ne v0, v2, :cond_f

    const/high16 v0, 0x4170

    .line 304
    :goto_9
    cmpg-float v0, p2, v0

    if-gez v0, :cond_12

    move v0, v1

    .line 340
    :goto_e
    return v0

    .line 302
    :cond_f
    const/high16 v0, 0x41a0

    goto :goto_9

    .line 310
    :cond_12
    if-eqz p3, :cond_25

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p3, v0}, Ln/Q;->d(Ln/Q;)F

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/cM;->l:F

    sget v4, Lcom/google/android/maps/driveabout/app/cM;->l:F

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_27

    :cond_25
    move v0, v2

    .line 313
    goto :goto_e

    .line 317
    :cond_27
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v4

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/google/android/maps/driveabout/app/cM;->a(ILn/Q;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 321
    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/google/android/maps/driveabout/app/cM;->a(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 327
    const v0, 0x3e4ccccc

    .line 328
    iget v3, p0, Lcom/google/android/maps/driveabout/app/cM;->f:I

    if-ne v3, v5, :cond_42

    .line 329
    const/4 v0, 0x0

    .line 332
    :cond_42
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v3, p3}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v3

    .line 333
    aget v4, v3, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_84

    aget v4, v3, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_84

    aget v4, v3, v2

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v5

    if-ge v4, v5, :cond_84

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_84

    move v0, v1

    .line 338
    goto :goto_e

    :cond_84
    move v0, v2

    .line 340
    goto :goto_e
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/l;Ln/Q;IIF)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    if-eqz p2, :cond_16

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln/Q;->d(Ln/Q;)F

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/cM;->d:F

    sget v4, Lcom/google/android/maps/driveabout/app/cM;->d:F

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_18

    :cond_16
    move v0, v2

    .line 289
    :goto_17
    return v0

    .line 266
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v4

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/google/android/maps/driveabout/app/cM;->a(ILn/Q;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/android/maps/driveabout/app/cM;->a(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 277
    const v0, 0x3e4ccccc

    .line 278
    iget v3, p0, Lcom/google/android/maps/driveabout/app/cM;->f:I

    if-ne v3, v5, :cond_33

    .line 279
    const/4 v0, 0x0

    .line 282
    :cond_33
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v3, p2}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v3

    .line 283
    aget v4, v3, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_75

    aget v4, v3, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_75

    aget v4, v3, v1

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v5

    if-ge v4, v5, :cond_75

    aget v3, v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_75

    move v0, v1

    .line 287
    goto :goto_17

    :cond_75
    move v0, v2

    .line 289
    goto :goto_17
.end method

.method private c(I)Lcom/google/android/maps/driveabout/app/cN;
    .registers 3
    .parameter

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_12

    .line 204
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->k:Lcom/google/android/maps/driveabout/app/cN;

    :goto_5
    return-object v0

    .line 191
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->j:Lcom/google/android/maps/driveabout/app/cN;

    goto :goto_5

    .line 194
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->g:Lcom/google/android/maps/driveabout/app/cN;

    goto :goto_5

    .line 197
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->h:Lcom/google/android/maps/driveabout/app/cN;

    goto :goto_5

    .line 200
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->i:Lcom/google/android/maps/driveabout/app/cN;

    goto :goto_5

    .line 189
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method protected a()F
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cM;->g:Lcom/google/android/maps/driveabout/app/cN;

    iget v0, v0, Lcom/google/android/maps/driveabout/app/cN;->a:F

    return v0
.end method

.method protected a(Landroid/location/Location;)F
    .registers 3
    .parameter

    .prologue
    .line 546
    const/high16 v0, 0x4168

    return v0
.end method

.method a(Lm/b;FI)F
    .registers 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-virtual {p1}, Lm/b;->h()Ln/ac;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ln/ac;->f()I

    move-result v1

    const/16 v3, 0x50

    if-ge v1, v3, :cond_13

    .line 487
    :cond_e
    invoke-virtual {p1}, Lm/b;->getBearing()F

    move-result v1

    .line 539
    :goto_12
    return v1

    .line 490
    :cond_13
    invoke-virtual {p1}, Lm/b;->i()Ln/Q;

    move-result-object v5

    .line 491
    invoke-virtual {p1}, Lm/b;->getBearing()F

    move-result v6

    .line 496
    const-wide/high16 v3, 0x4000

    const/high16 v1, 0x41f0

    sub-float v1, v1, p2

    float-to-double v7, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move/from16 v0, p3

    int-to-double v7, v0

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x4070

    div-double/2addr v3, v7

    double-to-float v1, v3

    .line 499
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v3

    .line 500
    invoke-virtual {v3}, Lt/k;->e()I

    move-result v7

    .line 502
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cM;->o:Lr/ao;

    if-eqz v3, :cond_85

    .line 503
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cM;->o:Lr/ao;

    invoke-virtual {p1}, Lm/b;->getBearing()F

    move-result v4

    invoke-virtual {v3, v2, v4, v1, v7}, Lr/ao;->a(Ln/ac;FFI)Ljava/util/List;

    move-result-object v1

    .line 513
    :goto_44
    new-instance v8, Ln/Q;

    invoke-direct {v8}, Ln/Q;-><init>()V

    .line 514
    const/4 v3, 0x0

    .line 515
    const/4 v2, 0x0

    .line 516
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/ac;

    .line 517
    invoke-virtual {v1}, Ln/ac;->b()Ln/U;

    move-result-object v10

    .line 518
    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v13

    :goto_64
    invoke-virtual {v10}, Ln/U;->b()I

    move-result v4

    if-ge v3, v4, :cond_be

    .line 519
    invoke-virtual {v10, v3, v8}, Ln/U;->a(ILn/Q;)V

    .line 520
    invoke-virtual {v8, v5}, Ln/Q;->d(Ln/Q;)F

    move-result v4

    mul-int v11, v7, v7

    int-to-float v11, v11

    cmpg-float v4, v4, v11

    if-gez v4, :cond_8e

    move v4, v2

    move v2, v1

    .line 518
    :goto_7a
    invoke-virtual {v10}, Ln/U;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v3

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_64

    .line 506
    :cond_85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 523
    :cond_8e
    invoke-static {v5, v8}, Ln/Q;->a(Ln/Q;Ln/Q;)D

    move-result-wide v11

    double-to-float v4, v11

    invoke-static {v6, v4}, Ln/S;->b(FF)F

    move-result v4

    .line 525
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x42b4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a4

    move v4, v2

    move v2, v1

    .line 528
    goto :goto_7a

    .line 531
    :cond_a4
    const/high16 v11, -0x3d90

    const/high16 v12, 0x4270

    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 532
    cmpg-float v11, v4, v1

    if-gez v11, :cond_b8

    move v13, v4

    move v4, v2

    move v2, v13

    .line 533
    goto :goto_7a

    .line 534
    :cond_b8
    cmpl-float v11, v4, v2

    if-lez v11, :cond_c9

    move v2, v1

    .line 535
    goto :goto_7a

    :cond_be
    move v3, v2

    move v2, v1

    .line 538
    goto :goto_4f

    .line 539
    :cond_c1
    add-float v1, v3, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v6

    goto/16 :goto_12

    :cond_c9
    move v4, v2

    move v2, v1

    goto :goto_7a
.end method

.method a(Lcom/google/android/maps/driveabout/vector/l;Ln/Q;FLn/Q;IIF)I
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cM;->a(Lcom/google/android/maps/driveabout/vector/l;Ln/Q;IIF)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v6

    .line 248
    :goto_f
    return v0

    .line 236
    :cond_10
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_1b

    const/high16 v0, 0x42c8

    cmpl-float v0, p3, v0

    if-lez v0, :cond_24

    .line 237
    :cond_1b
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cM;->f:I

    if-ne v0, v6, :cond_21

    move v0, v7

    .line 238
    goto :goto_f

    .line 240
    :cond_21
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cM;->f:I

    goto :goto_f

    :cond_24
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 244
    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cM;->a(Lcom/google/android/maps/driveabout/vector/l;FLn/Q;IIF)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 246
    const/4 v0, 0x1

    goto :goto_f

    :cond_33
    move v0, v7

    .line 248
    goto :goto_f
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;F)Lcom/google/android/maps/driveabout/vector/l;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cM;->g:Lcom/google/android/maps/driveabout/app/cN;

    iget v1, v1, Lcom/google/android/maps/driveabout/app/cN;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    .line 164
    :cond_14
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cM;->g:Lcom/google/android/maps/driveabout/app/cN;

    iget v3, v3, Lcom/google/android/maps/driveabout/app/cN;->b:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    move-object p1, v0

    .line 168
    :cond_2b
    return-object p1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v1

    .line 473
    const/high16 v0, 0x3f80

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cM;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cM;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float v5, v0, v2

    .line 474
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/cM;->a(Landroid/location/Location;)F

    move-result v2

    .line 475
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    const/high16 v3, 0x4220

    check-cast p2, Lm/b;

    invoke-virtual {p0, p2, v2, p4}, Lcom/google/android/maps/driveabout/app/cM;->a(Lm/b;FI)F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/P;Lo/I;FIIF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cM;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cM;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v0, p7

    int-to-float v3, v0

    div-float/2addr v2, v3

    sub-float v6, v1, v2

    .line 119
    if-eqz p4, :cond_1e

    invoke-virtual/range {p4 .. p4}, Lo/I;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 120
    invoke-virtual/range {p4 .. p4}, Lo/I;->j()Lo/I;

    move-result-object p4

    .line 123
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getSpeed()F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/cM;->n:F

    .line 127
    :cond_2a
    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-ltz v1, :cond_45

    .line 128
    new-instance v1, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual/range {p3 .. p3}, Ln/P;->a()Ln/Q;

    move-result-object v2

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/cM;->a(F)F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Ln/P;->b()F

    move-result v5

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 137
    :goto_44
    return-object v1

    .line 133
    :cond_45
    if-nez p4, :cond_6a

    const/4 v11, 0x0

    .line 134
    :goto_48
    invoke-virtual/range {p3 .. p3}, Ln/P;->a()Ln/Q;

    move-result-object v9

    iget v10, p0, Lcom/google/android/maps/driveabout/app/cM;->n:F

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/maps/driveabout/app/cM;->a(Lcom/google/android/maps/driveabout/vector/l;Ln/Q;FLn/Q;IIF)I

    move-result v1

    .line 136
    iput v1, p0, Lcom/google/android/maps/driveabout/app/cM;->f:I

    .line 137
    invoke-virtual/range {p3 .. p3}, Ln/P;->a()Ln/Q;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ln/P;->b()F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/google/android/maps/driveabout/app/cM;->a(ILn/Q;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    goto :goto_44

    .line 133
    :cond_6a
    invoke-virtual/range {p4 .. p4}, Lo/I;->a()Ln/Q;

    move-result-object v11

    goto :goto_48
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/ai;IIF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    .line 375
    if-nez p3, :cond_3

    .line 415
    :goto_2
    return-object p1

    .line 379
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v4

    .line 381
    invoke-virtual/range {p3 .. p3}, Ln/ai;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ln/ai;->a(I)Ln/Q;

    move-result-object v9

    .line 384
    new-instance v3, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cM;->a()F

    move-result v5

    const/high16 v6, 0x4220

    invoke-static {v4, v9}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v7

    const/high16 v8, 0x3f80

    const/high16 v10, 0x4000

    iget v11, p0, Lcom/google/android/maps/driveabout/app/cM;->b:I

    iget v12, p0, Lcom/google/android/maps/driveabout/app/cM;->c:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    div-float/2addr v10, v11

    sub-float/2addr v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 390
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cM;->a(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 397
    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cM;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v5

    invoke-virtual {v5}, Ln/aK;->c()Ln/ab;

    move-result-object v7

    check-cast v7, Ln/r;

    move-object v5, p0

    move-object v6, v9

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, v4

    .line 399
    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/app/cM;->a(Ln/Q;Ln/r;IILn/Q;)F

    move-result v8

    .line 402
    new-instance v6, Ln/Q;

    invoke-direct {v6}, Ln/Q;-><init>()V

    .line 403
    invoke-virtual/range {p3 .. p3}, Ln/ai;->a()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    .line 404
    if-nez v5, :cond_b5

    .line 405
    const/4 v5, 0x1

    move v11, v5

    .line 407
    :goto_69
    const/4 v5, 0x0

    move v12, v5

    move v13, v8

    :goto_6c
    invoke-virtual/range {p3 .. p3}, Ln/ai;->a()I

    move-result v5

    if-ge v12, v5, :cond_8a

    .line 408
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Ln/ai;->a(ILn/Q;)V

    move-object v5, p0

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, v4

    .line 409
    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/app/cM;->a(Ln/Q;Ln/r;IILn/Q;)F

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 407
    add-int v5, v12, v11

    move v12, v5

    move v13, v8

    goto :goto_6c

    .line 412
    :cond_8a
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v4

    float-to-double v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    sget v6, Lcom/google/android/maps/driveabout/app/cM;->m:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const v5, 0x3ecccccd

    sub-float v5, v4, v5

    .line 415
    new-instance p1, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    goto/16 :goto_2

    :cond_b5
    move v11, v5

    goto :goto_69
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Lo/I;Z)Lcom/google/android/maps/driveabout/vector/l;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p2}, Lo/I;->a()Ln/Q;

    move-result-object v0

    .line 148
    if-eqz p3, :cond_11

    .line 149
    const/4 v1, 0x4

    invoke-virtual {p2}, Lo/I;->g()F

    move-result v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/cM;->a(ILn/Q;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 152
    :goto_10
    return-object v0

    :cond_11
    const/4 v1, 0x5

    invoke-virtual {p2}, Lo/I;->g()F

    move-result v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/cM;->a(ILn/Q;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    goto :goto_10
.end method
