.class public Lx/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:D

.field final b:D


# direct methods
.method public static a(DDDDDD)D
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    sub-double v0, p4, p0

    sub-double v2, p10, p2

    mul-double/2addr v0, v2

    sub-double v2, p8, p0

    sub-double v4, p6, p2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 63
    sub-double v2, p0, p8

    sub-double v4, p0, p8

    mul-double/2addr v2, v4

    sub-double v4, p2, p10

    sub-double v6, p2, p10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sub-double v4, p0, p4

    sub-double v6, p0, p4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sub-double v4, p2, p6

    sub-double v6, p2, p6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3ddb7cdfd9d7bdbbL

    mul-double/2addr v2, v4

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v2

    if-gez v2, :cond_32

    const-wide/16 v0, 0x0

    :cond_32
    return-wide v0
.end method

.method public static a(DDDD)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 45
    if-nez v0, :cond_a

    .line 46
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 48
    :cond_a
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p0, p1, :cond_5

    .line 96
    :cond_4
    :goto_4
    return v0

    .line 92
    :cond_5
    instance-of v2, p1, Lx/y;

    if-nez v2, :cond_b

    move v0, v1

    .line 93
    goto :goto_4

    .line 95
    :cond_b
    check-cast p1, Lx/y;

    .line 96
    iget-wide v2, p1, Lx/y;->a:D

    iget-wide v4, p0, Lx/y;->a:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    iget-wide v2, p1, Lx/y;->b:D

    iget-wide v4, p0, Lx/y;->b:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 102
    iget-wide v0, p0, Lx/y;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 103
    iget-wide v2, p0, Lx/y;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 104
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lx/y;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lx/y;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
