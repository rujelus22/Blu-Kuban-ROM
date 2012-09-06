.class public Lat/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lat/P;

.field private b:[Lat/U;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lat/P;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lat/X;->c:J

    .line 57
    iput-object p1, p0, Lat/X;->a:Lat/P;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Lat/P;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lat/X;->a:Lat/P;

    return-object v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 167
    iput-wide p1, p0, Lat/X;->d:J

    .line 168
    return-void
.end method

.method protected a(J[Lat/U;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    iput-wide p1, p0, Lat/X;->c:J

    .line 108
    iput-object p3, p0, Lat/X;->b:[Lat/U;

    .line 109
    return-void
.end method

.method public a([B)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 121
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1, v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 123
    const v2, 0x54524133

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-eq v2, v3, :cond_1d

    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad traffic header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 131
    array-length v2, p1

    sub-int/2addr v2, v4

    .line 143
    invoke-static {p1, v4, v2, v1}, Lcom/google/googlenav/common/io/i;->a([BIII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/io/i;->a([B)Ljava/io/DataInput;

    move-result-object v1

    .line 148
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    .line 149
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    .line 150
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    .line 151
    new-array v5, v4, [Lat/U;

    .line 152
    :goto_39
    if-ge v0, v4, :cond_44

    .line 155
    invoke-static {v1, v2, v3}, Lat/U;->a(Ljava/io/DataInput;II)Lat/U;

    move-result-object v6

    aput-object v6, v5, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 159
    :cond_44
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v5}, Lat/X;->a(J[Lat/U;)V

    .line 161
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lat/X;->b:[Lat/U;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()[Lat/U;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lat/X;->b:[Lat/U;

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lat/X;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    iget-wide v0, p0, Lat/X;->c:J

    goto :goto_12
.end method

.method e()J
    .registers 3

    .prologue
    .line 174
    iget-wide v0, p0, Lat/X;->d:J

    return-wide v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lat/X;->b:[Lat/U;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lat/X;->b:[Lat/U;

    array-length v0, v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
