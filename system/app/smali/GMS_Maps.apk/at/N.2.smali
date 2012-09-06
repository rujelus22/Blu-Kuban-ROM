.class public final Lat/N;
.super Lat/M;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[[Lat/B;

.field private final c:Lat/B;


# direct methods
.method public constructor <init>([Lat/B;III[[Lat/B;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lat/M;-><init>([Lat/B;II)V

    .line 25
    iput p4, p0, Lat/N;->a:I

    .line 26
    iput-object p5, p0, Lat/N;->b:[[Lat/B;

    .line 27
    invoke-direct {p0}, Lat/N;->p()Lat/B;

    move-result-object v0

    iput-object v0, p0, Lat/N;->c:Lat/B;

    .line 28
    return-void
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/N;
    .registers 10
    .parameter

    .prologue
    const/16 v8, 0xc

    .line 67
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 68
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 69
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 71
    const/4 v0, -0x1

    if-ne v2, v0, :cond_18

    move v2, v4

    .line 78
    :cond_18
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lat/N;->a([B)[Lat/B;

    move-result-object v1

    .line 81
    const/4 v0, 0x0

    check-cast v0, [[Lat/B;

    .line 82
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 83
    if-lez v6, :cond_3d

    .line 84
    new-array v5, v6, [[Lat/B;

    .line 85
    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v6, :cond_3e

    .line 86
    invoke-virtual {p0, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(II)[B

    move-result-object v7

    invoke-static {v7}, Lat/M;->a([B)[Lat/B;

    move-result-object v7

    aput-object v7, v5, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3d
    move-object v5, v0

    .line 90
    :cond_3e
    new-instance v0, Lat/N;

    invoke-direct/range {v0 .. v5}, Lat/N;-><init>([Lat/B;III[[Lat/B;)V

    return-object v0
.end method

.method public static b([JLat/B;Lat/Y;)Z
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 203
    if-nez p0, :cond_5

    .line 233
    :goto_4
    return v3

    .line 207
    :cond_5
    invoke-virtual {p1, p2}, Lat/B;->a(Lat/Y;)I

    move-result v5

    .line 208
    invoke-virtual {p1, p2}, Lat/B;->b(Lat/Y;)I

    move-result v6

    move v0, v1

    move v2, v3

    move v4, v3

    .line 219
    :goto_10
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4a

    .line 220
    aget-wide v7, p0, v2

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v7

    .line 221
    aget-wide v8, p0, v2

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v8

    .line 222
    aget-wide v9, p0, v0

    invoke-static {v9, v10}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v9

    .line 223
    aget-wide v10, p0, v0

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v10

    .line 225
    if-gt v8, v6, :cond_31

    if-lt v6, v10, :cond_35

    :cond_31
    if-gt v10, v6, :cond_43

    if-ge v6, v8, :cond_43

    :cond_35
    sub-int/2addr v9, v7

    sub-int v11, v6, v8

    mul-int/2addr v9, v11

    sub-int v8, v10, v8

    div-int v8, v9, v8

    add-int/2addr v7, v8

    if-ge v5, v7, :cond_43

    .line 229
    if-nez v4, :cond_48

    move v4, v1

    .line 219
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_48
    move v4, v3

    .line 229
    goto :goto_43

    :cond_4a
    move v3, v4

    .line 233
    goto :goto_4
.end method

.method private p()Lat/B;
    .registers 10

    .prologue
    const-wide/16 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lat/N;->j()[Lat/B;

    move-result-object v5

    .line 174
    array-length v0, v5

    add-int/lit8 v6, v0, -0x1

    .line 179
    const/4 v0, 0x0

    move-wide v3, v1

    :goto_b
    if-ge v0, v6, :cond_20

    .line 181
    aget-object v7, v5, v0

    invoke-virtual {v7}, Lat/B;->c()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 182
    aget-object v7, v5, v0

    invoke-virtual {v7}, Lat/B;->e()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v1, v7

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 185
    :cond_20
    int-to-long v7, v6

    div-long/2addr v3, v7

    .line 186
    int-to-long v5, v6

    div-long v0, v1, v5

    .line 188
    new-instance v2, Lat/B;

    long-to-int v3, v3

    long-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lat/B;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x3

    return v0
.end method

.method public b()Lat/B;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lat/N;->c:Lat/B;

    return-object v0
.end method

.method public e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 123
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 124
    const/16 v0, 0x9

    invoke-virtual {p0}, Lat/N;->k()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 125
    const/16 v0, 0x8

    invoke-virtual {p0}, Lat/N;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 126
    const/16 v0, 0xb

    iget v2, p0, Lat/N;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 129
    const/16 v0, 0xa

    invoke-virtual {p0}, Lat/N;->j()[Lat/B;

    move-result-object v2

    invoke-static {v2}, Lat/N;->a([Lat/B;)[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 133
    iget-object v0, p0, Lat/N;->b:[[Lat/B;

    if-eqz v0, :cond_46

    .line 134
    const/4 v0, 0x0

    :goto_31
    iget-object v2, p0, Lat/N;->b:[[Lat/B;

    array-length v2, v2

    if-ge v0, v2, :cond_46

    .line 135
    const/16 v2, 0xc

    iget-object v3, p0, Lat/N;->b:[[Lat/B;

    aget-object v3, v3, v0

    invoke-static {v3}, Lat/N;->a([Lat/B;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 139
    :cond_46
    return-object v1
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lat/N;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public m()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lat/N;->a:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    const-string v0, "polygon"

    return-object v0
.end method

.method public o()[[Lat/B;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lat/N;->b:[[Lat/B;

    return-object v0
.end method
