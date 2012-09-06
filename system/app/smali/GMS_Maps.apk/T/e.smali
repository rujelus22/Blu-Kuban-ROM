.class public Lt/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/location/Location;)Lat/B;
    .registers 7
    .parameter

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 165
    new-instance v0, Lat/B;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method public static a(Ln/aL;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 14
    .parameter

    .prologue
    const-wide v11, 0x412e848000000000L

    const-wide v9, 0x404ca5dc1a63c1f8L

    const-wide v7, 0x3e3921fb54442d18L

    .line 146
    invoke-virtual {p0}, Ln/aL;->b()Ln/Q;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Ln/aL;->e()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Ln/Q;->b()D

    move-result-wide v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    mul-double/2addr v1, v7

    mul-double/2addr v1, v9

    mul-double/2addr v1, v11

    double-to-int v1, v1

    .line 150
    invoke-virtual {p0}, Ln/aL;->d()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v7

    mul-double/2addr v2, v9

    mul-double/2addr v2, v11

    double-to-int v2, v2

    .line 153
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/do;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 154
    const/4 v4, 0x1

    invoke-static {v0}, Lt/e;->a(Ln/Q;)Ln/s;

    move-result-object v0

    invoke-static {v0}, Lt/e;->b(Ln/s;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 156
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 157
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 158
    return-object v3
.end method

.method public static a(Ln/s;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 49
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 51
    invoke-virtual {p0}, Ln/s;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 53
    const/4 v1, 0x2

    invoke-virtual {p0}, Ln/s;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 55
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 57
    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 59
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 61
    return-object v1
.end method

.method public static a(Lat/B;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 179
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/s;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 82
    if-nez p0, :cond_6

    .line 113
    :cond_5
    :goto_5
    return-object v0

    .line 85
    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 86
    if-ne v1, v3, :cond_20

    .line 87
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_5

    .line 92
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 93
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 94
    new-instance v0, Ln/s;

    invoke-direct {v0, v2, v1}, Ln/s;-><init>(II)V

    goto :goto_5

    .line 95
    :cond_20
    const/4 v2, 0x5

    if-ne v1, v2, :cond_39

    .line 97
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_5

    .line 103
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 104
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 105
    new-instance v0, Ln/s;

    invoke-direct {v0, v2, v1}, Ln/s;-><init>(II)V

    goto :goto_5

    .line 106
    :cond_39
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 107
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_5

    .line 111
    invoke-static {v1}, Lt/e;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/Q;

    move-result-object v0

    invoke-static {v0}, Lt/e;->a(Ln/Q;)Ln/s;

    move-result-object v0

    goto :goto_5
.end method

.method public static a(Ln/Q;)Ln/s;
    .registers 4
    .parameter

    .prologue
    .line 34
    new-instance v0, Ln/s;

    invoke-virtual {p0}, Ln/Q;->a()I

    move-result v1

    invoke-virtual {p0}, Ln/Q;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ln/s;-><init>(II)V

    return-object v0
.end method

.method public static a(Lat/B;Ln/Q;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ln/Q;->e(II)V

    .line 188
    return-void
.end method

.method public static b(Ln/Q;)Lat/B;
    .registers 4
    .parameter

    .prologue
    .line 172
    new-instance v0, Lat/B;

    invoke-virtual {p0}, Ln/Q;->a()I

    move-result v1

    invoke-virtual {p0}, Ln/Q;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method public static b(Ln/s;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0}, Ln/s;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 72
    const/4 v1, 0x2

    invoke-virtual {p0}, Ln/s;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 74
    return-object v0
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/Q;
    .registers 6
    .parameter

    .prologue
    const/high16 v4, 0x2000

    const/4 v3, 0x1

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 133
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 134
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 136
    rsub-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, -0x7

    shl-int v0, v3, v0

    .line 137
    mul-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 138
    mul-int/2addr v0, v2

    sub-int v0, v4, v0

    .line 139
    new-instance v2, Ln/Q;

    invoke-direct {v2, v1, v0}, Ln/Q;-><init>(II)V

    return-object v2
.end method
