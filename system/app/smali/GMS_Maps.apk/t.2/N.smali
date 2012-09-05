.class public Lt/N;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lt/L;Lt/L;Lt/L;Lt/L;)D
    .registers 12

    iget v0, p0, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    sub-int/2addr v0, v1

    iget v1, p1, Lt/L;->a:I

    iget v2, p0, Lt/L;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, Lt/L;->a:I

    iget v3, p2, Lt/L;->a:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget v4, p0, Lt/L;->b:I

    iget v5, p2, Lt/L;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-double v2, v2

    iget v4, p3, Lt/L;->a:I

    iget v5, p2, Lt/L;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v0

    mul-long/2addr v4, v6

    iget v0, p3, Lt/L;->b:I

    iget v6, p2, Lt/L;->b:I

    sub-int/2addr v0, v6

    int-to-long v6, v0

    int-to-long v0, v1

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    long-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(FF)F
    .registers 4

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-lez v1, :cond_10

    const/high16 v1, 0x43b4

    sub-float v0, v1, v0

    :cond_10
    return v0
.end method

.method public static a(II)F
    .registers 7

    const/high16 v0, 0x42b4

    int-to-double v1, p1

    int-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1e

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    :cond_1e
    return v0
.end method

.method public static a(Lt/L;Lt/L;Lt/L;)I
    .registers 9

    iget v0, p2, Lt/L;->a:I

    iget v1, p0, Lt/L;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p2, Lt/L;->b:I

    iget v3, p1, Lt/L;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p2, Lt/L;->b:I

    iget v3, p0, Lt/L;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, Lt/L;->a:I

    iget v5, p1, Lt/L;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long v1, v0, v2

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_23
    int-to-long v3, v0

    const/16 v0, 0x3f

    shr-long v0, v1, v0

    or-long/2addr v0, v3

    long-to-int v0, v0

    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static a(Lt/L;FLt/L;)V
    .registers 7

    iget v0, p0, Lt/L;->a:I

    int-to-double v0, v0

    iget v2, p0, Lt/L;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_17

    float-to-int v0, p1

    iput v0, p2, Lt/L;->a:I

    const/4 v0, 0x0

    iput v0, p2, Lt/L;->b:I

    :goto_16
    return-void

    :cond_17
    div-float v0, p1, v0

    iget v1, p0, Lt/L;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lt/L;->a:I

    iget v1, p0, Lt/L;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Lt/L;->b:I

    goto :goto_16
.end method

.method public static a(Lt/L;Lt/L;)V
    .registers 3

    iget v0, p0, Lt/L;->b:I

    neg-int v0, v0

    iput v0, p1, Lt/L;->a:I

    iget v0, p0, Lt/L;->a:I

    iput v0, p1, Lt/L;->b:I

    return-void
.end method

.method public static a(Lt/L;Lt/L;Lt/L;Lt/L;Lt/L;)Z
    .registers 15

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lt/L;->b:I

    iget v3, p1, Lt/L;->b:I

    sub-int/2addr v2, v3

    iget v3, p1, Lt/L;->a:I

    iget v4, p0, Lt/L;->a:I

    sub-int/2addr v3, v4

    iget v4, p3, Lt/L;->a:I

    iget v5, p2, Lt/L;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget v6, p3, Lt/L;->b:I

    iget v7, p2, Lt/L;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v3

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_39

    invoke-static {p0, p1, p2}, Lt/N;->a(Lt/L;Lt/L;Lt/L;)I

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p4, p2}, Lt/L;->b(Lt/L;)V

    :goto_2c
    return v0

    :cond_2d
    invoke-static {p0, p1, p3}, Lt/N;->a(Lt/L;Lt/L;Lt/L;)I

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {p4, p3}, Lt/L;->b(Lt/L;)V

    goto :goto_2c

    :cond_37
    move v0, v1

    goto :goto_2c

    :cond_39
    iget v6, p0, Lt/L;->a:I

    iget v7, p2, Lt/L;->a:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    iget v2, p0, Lt/L;->b:I

    iget v8, p2, Lt/L;->b:I

    sub-int/2addr v2, v8

    int-to-long v8, v2

    int-to-long v2, v3

    mul-long/2addr v2, v8

    add-long/2addr v2, v6

    long-to-double v2, v2

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_59

    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_5b

    :cond_59
    move v0, v1

    goto :goto_2c

    :cond_5b
    iget v1, p2, Lt/L;->a:I

    int-to-double v4, v1

    iget v1, p3, Lt/L;->a:I

    iget v6, p2, Lt/L;->a:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p4, Lt/L;->a:I

    iget v1, p2, Lt/L;->b:I

    int-to-double v4, v1

    iget v1, p3, Lt/L;->b:I

    iget v6, p2, Lt/L;->b:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double v1, v6, v2

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p4, Lt/L;->b:I

    goto :goto_2c
.end method

.method public static b(FF)F
    .registers 5

    const/high16 v2, 0x43b4

    sub-float v0, p1, p0

    :goto_4
    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    sub-float/2addr v0, v2

    goto :goto_4

    :cond_c
    :goto_c
    const/high16 v1, -0x3ccc

    cmpg-float v1, v0, v1

    if-gez v1, :cond_14

    add-float/2addr v0, v2

    goto :goto_c

    :cond_14
    return v0
.end method

.method public static b(Lt/L;Lt/L;)F
    .registers 5

    iget v0, p1, Lt/L;->a:I

    iget v1, p0, Lt/L;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, Lt/L;->b:I

    iget v2, p0, Lt/L;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lt/N;->a(II)F

    move-result v0

    return v0
.end method

.method public static b(Lt/L;Lt/L;Lt/L;)Z
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lt/L;->a:I

    iget v3, p0, Lt/L;->b:I

    iget v4, p1, Lt/L;->a:I

    iget v5, p1, Lt/L;->b:I

    iget v6, p2, Lt/L;->a:I

    iget v7, p2, Lt/L;->b:I

    if-gt v3, v7, :cond_13

    if-gt v5, v7, :cond_13

    :cond_12
    :goto_12
    return v1

    :cond_13
    if-lt v6, v2, :cond_17

    if-ge v6, v4, :cond_12

    :cond_17
    if-ge v6, v2, :cond_1b

    if-lt v6, v4, :cond_12

    :cond_1b
    if-lt v4, v2, :cond_31

    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v5, v5

    mul-long/2addr v5, v8

    sub-int v3, v7, v3

    int-to-long v7, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-lez v2, :cond_2f

    :goto_2d
    move v1, v0

    goto :goto_12

    :cond_2f
    move v0, v1

    goto :goto_2d

    :cond_31
    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v5, v5

    mul-long/2addr v5, v8

    sub-int v3, v7, v3

    int-to-long v7, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-gez v2, :cond_43

    :goto_41
    move v1, v0

    goto :goto_12

    :cond_43
    move v0, v1

    goto :goto_41
.end method

.method public static b(Lt/L;Lt/L;Lt/L;Lt/L;)Z
    .registers 16

    iget v0, p1, Lt/L;->a:I

    iget v1, p0, Lt/L;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, Lt/L;->b:I

    iget v2, p0, Lt/L;->b:I

    sub-int/2addr v1, v2

    iget v2, p3, Lt/L;->a:I

    iget v3, p2, Lt/L;->a:I

    sub-int/2addr v2, v3

    iget v3, p3, Lt/L;->b:I

    iget v4, p2, Lt/L;->b:I

    sub-int/2addr v3, v4

    iget v4, p2, Lt/L;->a:I

    iget v5, p0, Lt/L;->a:I

    sub-int/2addr v4, v5

    iget v5, p2, Lt/L;->b:I

    iget v6, p0, Lt/L;->b:I

    sub-int/2addr v5, v6

    int-to-long v6, v2

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v3

    int-to-long v10, v0

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_6f

    if-nez v4, :cond_31

    if-nez v5, :cond_31

    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v4, v5

    int-to-long v8, v0

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41

    const/4 v0, 0x0

    goto :goto_30

    :cond_41
    if-nez v0, :cond_4a

    if-nez v1, :cond_4a

    invoke-static {p2, p3, p0}, Lt/N;->f(Lt/L;Lt/L;Lt/L;)Z

    move-result v0

    goto :goto_30

    :cond_4a
    if-nez v2, :cond_53

    if-nez v3, :cond_53

    invoke-static {p0, p1, p2}, Lt/N;->f(Lt/L;Lt/L;Lt/L;)Z

    move-result v0

    goto :goto_30

    :cond_53
    invoke-static {p0, p1, p2}, Lt/N;->f(Lt/L;Lt/L;Lt/L;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p0, p1, p3}, Lt/N;->f(Lt/L;Lt/L;Lt/L;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p2, p3, p0}, Lt/N;->f(Lt/L;Lt/L;Lt/L;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p2, p3, p1}, Lt/N;->f(Lt/L;Lt/L;Lt/L;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_6b
    const/4 v0, 0x1

    goto :goto_30

    :cond_6d
    const/4 v0, 0x0

    goto :goto_30

    :cond_6f
    neg-int v8, v4

    int-to-long v8, v8

    int-to-long v10, v1

    mul-long/2addr v8, v10

    int-to-long v10, v5

    int-to-long v0, v0

    mul-long/2addr v0, v10

    add-long/2addr v0, v8

    long-to-double v0, v0

    long-to-double v8, v6

    div-double/2addr v0, v8

    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-ltz v8, :cond_86

    const-wide/high16 v8, 0x3ff0

    cmpg-double v0, v0, v8

    if-lez v0, :cond_88

    :cond_86
    const/4 v0, 0x0

    goto :goto_30

    :cond_88
    int-to-long v0, v4

    int-to-long v3, v3

    mul-long/2addr v0, v3

    int-to-long v3, v5

    int-to-long v8, v2

    mul-long v2, v3, v8

    sub-long/2addr v0, v2

    long-to-double v0, v0

    neg-long v2, v6

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_a2

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_a2

    const/4 v0, 0x1

    goto :goto_30

    :cond_a2
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public static c(Lt/L;Lt/L;)J
    .registers 8

    iget v0, p0, Lt/L;->a:I

    int-to-long v0, v0

    iget v2, p1, Lt/L;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lt/L;->b:I

    int-to-long v2, v2

    iget v4, p1, Lt/L;->a:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(Lt/L;Lt/L;Lt/L;)V
    .registers 5

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lt/L;->a:I

    iget v0, p0, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Lt/L;->b:I

    return-void
.end method

.method public static d(Lt/L;Lt/L;Lt/L;)V
    .registers 5

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Lt/L;->a:I

    iget v0, p0, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Lt/L;->b:I

    return-void
.end method

.method public static e(Lt/L;Lt/L;Lt/L;)V
    .registers 5

    iget v0, p0, Lt/L;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lt/L;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Lt/L;->a:I

    iget v0, p0, Lt/L;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lt/L;->b:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Lt/L;->b:I

    return-void
.end method

.method private static f(Lt/L;Lt/L;Lt/L;)Z
    .registers 11

    iget v0, p1, Lt/L;->a:I

    iget v1, p0, Lt/L;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p1, Lt/L;->b:I

    iget v3, p0, Lt/L;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, Lt/L;->a:I

    iget v5, p0, Lt/L;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    iget v6, p2, Lt/L;->b:I

    iget v7, p0, Lt/L;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v0

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    mul-long/2addr v0, v0

    mul-long/2addr v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2a

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method
