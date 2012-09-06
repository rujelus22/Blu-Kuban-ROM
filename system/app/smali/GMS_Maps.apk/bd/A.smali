.class public Lbd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)D
    .registers 6
    .parameter

    .prologue
    .line 51
    const-wide v0, 0x416312d000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDDD)D
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p0, p1}, Lbd/a;->a(D)D

    move-result-wide v0

    .line 34
    invoke-static {p2, p3}, Lbd/a;->a(D)D

    move-result-wide v2

    .line 35
    invoke-static/range {p4 .. p5}, Lbd/a;->a(D)D

    move-result-wide v4

    .line 36
    invoke-static/range {p6 .. p7}, Lbd/a;->a(D)D

    move-result-wide v6

    .line 37
    const-wide/high16 v8, 0x3fe0

    sub-double v10, v4, v0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 38
    const-wide/high16 v10, 0x3fe0

    sub-double v2, v6, v2

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 39
    mul-double v6, v8, v8

    mul-double/2addr v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    .line 40
    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 41
    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    .line 42
    return-wide v0
.end method

.method public static b(D)D
    .registers 6
    .parameter

    .prologue
    .line 62
    const-wide v0, 0x3ff921fb54442d18L

    invoke-static {p0, p1}, Lbd/a;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 63
    const-wide v2, 0x415849c600000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 65
    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method
