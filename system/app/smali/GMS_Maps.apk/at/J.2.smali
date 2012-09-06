.class public Lat/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# instance fields
.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lat/J;->a:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0x4ct
        0x54t
        0x49t
        0x50t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI[B)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 199
    array-length v0, p0

    array-length v2, p2

    add-int/2addr v2, p1

    if-ge v0, v2, :cond_7

    .line 207
    :cond_6
    :goto_6
    return v1

    :cond_7
    move v0, v1

    .line 202
    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_16

    .line 203
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_6

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 207
    :cond_16
    const/4 v1, 0x1

    goto :goto_6
.end method

.method private b([B)I
    .registers 6
    .parameter

    .prologue
    .line 172
    sget-object v0, Lat/J;->a:[B

    array-length v0, v0

    .line 174
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 175
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-static {v1}, Lcom/google/googlenav/common/util/e;->a([B)I

    move-result v1

    .line 178
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 180
    add-int/lit8 v3, v0, 0x4

    .line 181
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 182
    if-gez v1, :cond_20

    .line 183
    invoke-static {v0}, Lcom/google/googlenav/common/io/e;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 185
    :cond_20
    add-int v1, v3, v2

    .line 188
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/hm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v1, p0, Lat/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 189
    iget-object v1, p0, Lat/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 190
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 191
    return v2
.end method

.method private e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 77
    iget-object v0, p0, Lat/J;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_19

    iget-object v0, p0, Lat/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lat/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 79
    iget-object v0, p0, Lat/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lat/J;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 81
    :cond_19
    iget-object v0, p0, Lat/J;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lat/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public a([B)[B
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    .line 51
    sget-object v0, Lat/J;->a:[B

    invoke-static {p1, v1, v0}, Lat/J;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 53
    :try_start_9
    invoke-direct {p0, p1}, Lat/J;->b([B)I

    move-result v0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lat/J;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 55
    sget-object v1, Lat/J;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    .line 56
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [B
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_21

    .line 57
    const/4 v2, 0x0

    :try_start_1b
    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_28

    move-object p1, v0

    .line 62
    :cond_20
    :goto_20
    return-object p1

    .line 58
    :catch_21
    move-exception v0

    .line 59
    :goto_22
    const-string v1, "IOException reading map tile info"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 58
    :catch_28
    move-exception v1

    move-object p1, v0

    move-object v0, v1

    goto :goto_22
.end method

.method public b()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lat/J;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 89
    if-nez v2, :cond_b

    .line 90
    new-array v0, v1, [Ljava/lang/String;

    .line 100
    :cond_a
    return-object v0

    .line 95
    :cond_b
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 96
    new-array v0, v3, [Ljava/lang/String;

    .line 97
    :goto_11
    if-ge v1, v3, :cond_a

    .line 98
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public c()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lat/J;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 108
    if-nez v2, :cond_b

    .line 109
    new-array v0, v1, [Ljava/lang/String;

    .line 117
    :cond_a
    return-object v0

    .line 112
    :cond_b
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 113
    new-array v0, v3, [Ljava/lang/String;

    .line 114
    :goto_11
    if-ge v1, v3, :cond_a

    .line 115
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public d()I
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    .line 124
    .line 125
    invoke-direct {p0}, Lat/J;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_1d

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 127
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 129
    if-nez v1, :cond_1e

    .line 130
    const-string v1, "year=0"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method
