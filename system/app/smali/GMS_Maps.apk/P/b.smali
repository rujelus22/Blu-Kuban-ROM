.class public Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lq/e;)F
    .registers 3
    .parameter

    .prologue
    .line 22
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lq/e;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lq/e;->b(I)Ln/Q;

    move-result-object v0

    invoke-virtual {p0}, Lq/e;->e()Ln/Q;

    move-result-object v1

    invoke-static {v0, v1}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v0

    goto :goto_3
.end method

.method public static a(Lq/e;Lq/e;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lp/b;->a(Lq/e;)F

    move-result v0

    .line 53
    invoke-static {p1}, Lp/b;->b(Lq/e;)F

    move-result v1

    .line 54
    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 55
    if-gez v0, :cond_f

    .line 56
    add-int/lit16 v0, v0, 0x168

    .line 58
    :cond_f
    const/16 v1, 0xb4

    if-le v0, v1, :cond_15

    add-int/lit16 v0, v0, -0x168

    :cond_15
    return v0
.end method

.method public static b(Lq/e;)F
    .registers 3
    .parameter

    .prologue
    .line 35
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq/e;->b(I)Ln/Q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lq/e;->b(I)Ln/Q;

    move-result-object v1

    invoke-static {v0, v1}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v0

    goto :goto_3
.end method

.method public static c(Lq/e;)I
    .registers 6
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Lp/b;->b(Lq/e;)F

    move-result v0

    .line 67
    float-to-double v1, v0

    const-wide v3, 0x4075180000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_18

    float-to-double v1, v0

    const-wide v3, 0x4036800000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1a

    .line 68
    :cond_18
    const/4 v0, 0x1

    .line 82
    :goto_19
    return v0

    .line 69
    :cond_1a
    float-to-double v1, v0

    const-wide v3, 0x4050e00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_26

    .line 70
    const/4 v0, 0x2

    goto :goto_19

    .line 71
    :cond_26
    float-to-double v1, v0

    const-wide v3, 0x405c200000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_32

    .line 72
    const/4 v0, 0x3

    goto :goto_19

    .line 73
    :cond_32
    float-to-double v1, v0

    const-wide v3, 0x4063b00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3e

    .line 74
    const/4 v0, 0x4

    goto :goto_19

    .line 75
    :cond_3e
    float-to-double v1, v0

    const-wide v3, 0x4069500000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_4a

    .line 76
    const/4 v0, 0x5

    goto :goto_19

    .line 77
    :cond_4a
    float-to-double v1, v0

    const-wide v3, 0x406ef00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_56

    .line 78
    const/4 v0, 0x6

    goto :goto_19

    .line 79
    :cond_56
    float-to-double v0, v0

    const-wide v2, 0x4072480000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_62

    .line 80
    const/4 v0, 0x7

    goto :goto_19

    .line 82
    :cond_62
    const/16 v0, 0x8

    goto :goto_19
.end method
