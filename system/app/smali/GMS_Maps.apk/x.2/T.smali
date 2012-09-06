.class public Lx/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method private constructor <init>(DDZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v4, -0x3ff6de04abbbd2e8L

    const-wide v0, 0x400921fb54442d18L

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p5, :cond_22

    .line 79
    cmpl-double v2, p1, v4

    if-nez v2, :cond_29

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_29

    move-wide v2, v0

    .line 82
    :goto_18
    cmpl-double v4, p3, v4

    if-nez v4, :cond_27

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_27

    move-wide p3, v0

    move-wide p1, v2

    .line 86
    :cond_22
    :goto_22
    iput-wide p1, p0, Lx/t;->a:D

    .line 87
    iput-wide p3, p0, Lx/t;->b:D

    .line 88
    return-void

    :cond_27
    move-wide p1, v2

    goto :goto_22

    :cond_29
    move-wide v2, p1

    goto :goto_18
.end method

.method public static a(I)D
    .registers 5
    .parameter

    .prologue
    .line 523
    invoke-static {p0}, Ln/Q;->c(I)I

    move-result v0

    .line 524
    int-to-double v0, v0

    const-wide/high16 v2, 0x41c0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a()Lx/t;
    .registers 6

    .prologue
    .line 91
    new-instance v0, Lx/t;

    const-wide v1, 0x400921fb54442d18L

    const-wide v3, -0x3ff6de04abbbd2e8L

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    return-object v0
.end method

.method public static a(DD)Lx/t;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const-wide v3, -0x3ff6de04abbbd2e8L

    const-wide v6, 0x400921fb54442d18L

    .line 113
    cmpl-double v0, p0, v3

    if-nez v0, :cond_2f

    move-wide v1, v6

    .line 116
    :goto_10
    cmpl-double v0, p2, v3

    if-nez v0, :cond_2d

    move-wide v3, v6

    .line 119
    :goto_15
    invoke-static {v1, v2, v3, v4}, Lx/t;->b(DD)D

    move-result-wide v8

    cmpg-double v0, v8, v6

    if-gtz v0, :cond_23

    .line 120
    new-instance v0, Lx/t;

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    .line 122
    :goto_22
    return-object v0

    :cond_23
    new-instance v6, Lx/t;

    move-wide v7, v3

    move-wide v9, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lx/t;-><init>(DDZ)V

    move-object v0, v6

    goto :goto_22

    :cond_2d
    move-wide v3, p2

    goto :goto_15

    :cond_2f
    move-wide v1, p0

    goto :goto_10
.end method

.method public static b(DD)D
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x400921fb54442d18L

    .line 509
    sub-double v0, p2, p0

    .line 510
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_e

    .line 515
    :goto_d
    return-wide v0

    :cond_e
    add-double v0, p2, v4

    sub-double v2, p0, v4

    sub-double/2addr v0, v2

    goto :goto_d
.end method

.method public static b()Lx/t;
    .registers 6

    .prologue
    .line 95
    new-instance v0, Lx/t;

    const-wide v1, -0x3ff6de04abbbd2e8L

    const-wide v3, 0x400921fb54442d18L

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    return-object v0
.end method

.method public static c(D)I
    .registers 6
    .parameter

    .prologue
    .line 528
    const-wide v0, 0x400921fb54442d18L

    div-double v0, p0, v0

    const-wide/high16 v2, 0x41c0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(D)Z
    .registers 5
    .parameter

    .prologue
    .line 207
    const-wide v0, -0x3ff6de04abbbd2e8L

    cmpl-double v0, p1, v0

    if-nez v0, :cond_e

    .line 208
    const-wide p1, 0x400921fb54442d18L

    .line 210
    :cond_e
    invoke-virtual {p0, p1, p2}, Lx/t;->b(D)Z

    move-result v0

    return v0
.end method

.method public a(Lx/t;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lx/t;->g()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 250
    invoke-virtual {p1}, Lx/t;->g()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 251
    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v2

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_27

    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v2

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_27

    .line 258
    :cond_26
    :goto_26
    return v0

    :cond_27
    move v0, v1

    .line 251
    goto :goto_26

    .line 253
    :cond_29
    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v2

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-gez v2, :cond_41

    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v2

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_47

    :cond_41
    invoke-virtual {p0}, Lx/t;->f()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_47
    move v0, v1

    goto :goto_26

    .line 255
    :cond_49
    invoke-virtual {p1}, Lx/t;->g()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 256
    invoke-virtual {p0}, Lx/t;->e()Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {p1}, Lx/t;->f()Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_5b
    move v1, v0

    :cond_5c
    move v0, v1

    goto :goto_26

    .line 258
    :cond_5e
    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v2

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_76

    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v2

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-lez v2, :cond_26

    :cond_76
    move v0, v1

    goto :goto_26
.end method

.method public b(Lx/t;)Lx/t;
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 385
    invoke-virtual {p1}, Lx/t;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p0

    .line 415
    :goto_8
    return-object v0

    .line 388
    :cond_9
    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lx/t;->b(D)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 389
    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lx/t;->b(D)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 392
    invoke-virtual {p0, p1}, Lx/t;->a(Lx/t;)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object v0, p0

    .line 393
    goto :goto_8

    .line 395
    :cond_25
    invoke-static {}, Lx/t;->b()Lx/t;

    move-result-object v0

    goto :goto_8

    .line 397
    :cond_2a
    new-instance v0, Lx/t;

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v1

    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    goto :goto_8

    .line 399
    :cond_38
    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lx/t;->b(D)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 400
    new-instance v0, Lx/t;

    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v1

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    goto :goto_8

    .line 405
    :cond_50
    invoke-virtual {p0}, Lx/t;->f()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lx/t;->b(D)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_60
    move-object v0, p1

    .line 406
    goto :goto_8

    .line 410
    :cond_62
    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v0

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lx/t;->b(DD)D

    move-result-wide v0

    .line 411
    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v2

    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lx/t;->b(DD)D

    move-result-wide v2

    .line 412
    cmpg-double v0, v0, v2

    if-gez v0, :cond_8d

    .line 413
    new-instance v0, Lx/t;

    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v1

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    goto/16 :goto_8

    .line 415
    :cond_8d
    new-instance v0, Lx/t;

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v1

    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    goto/16 :goto_8
.end method

.method public b(D)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lx/t;->g()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 220
    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v2

    cmpl-double v2, p1, v2

    if-gez v2, :cond_18

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1f

    :cond_18
    invoke-virtual {p0}, Lx/t;->f()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 222
    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    .line 220
    goto :goto_1e

    .line 222
    :cond_21
    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v2

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_31

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-lez v2, :cond_1e

    :cond_31
    move v0, v1

    goto :goto_1e
.end method

.method public c()D
    .registers 3

    .prologue
    .line 127
    iget-wide v0, p0, Lx/t;->a:D

    return-wide v0
.end method

.method public d()D
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Lx/t;->b:D

    return-wide v0
.end method

.method public e()Z
    .registers 5

    .prologue
    .line 145
    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v0

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 482
    instance-of v1, p1, Lx/t;

    if-eqz v1, :cond_20

    .line 483
    check-cast p1, Lx/t;

    .line 484
    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v1

    invoke-virtual {p1}, Lx/t;->c()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v1

    invoke-virtual {p1}, Lx/t;->d()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_20

    const/4 v0, 0x1

    .line 486
    :cond_20
    return v0
.end method

.method public f()Z
    .registers 5

    .prologue
    .line 151
    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public g()Z
    .registers 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public h()D
    .registers 9

    .prologue
    const-wide v6, 0x400921fb54442d18L

    .line 165
    const-wide/high16 v0, 0x3fe0

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v2

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v4

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 166
    invoke-virtual {p0}, Lx/t;->g()Z

    move-result v2

    if-nez v2, :cond_18

    .line 170
    :goto_17
    return-wide v0

    :cond_18
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_20

    add-double/2addr v0, v6

    goto :goto_17

    :cond_20
    sub-double/2addr v0, v6

    goto :goto_17
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x25

    .line 491
    const-wide/16 v0, 0x11

    .line 492
    mul-long/2addr v0, v4

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 493
    mul-long/2addr v0, v4

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 494
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public i()Lx/t;
    .registers 7

    .prologue
    .line 195
    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    .line 196
    invoke-static {}, Lx/t;->b()Lx/t;

    move-result-object v0

    .line 198
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lx/t;

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v1

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lx/t;-><init>(DDZ)V

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lx/t;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lx/t;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
