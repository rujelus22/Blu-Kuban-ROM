.class Lr/U;
.super Lr/j;
.source "SourceFile"


# instance fields
.field a:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private b:Lcom/google/googlenav/common/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/a;)V
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x8

    .line 158
    invoke-direct {p0, v0}, Lr/j;-><init>(I)V

    .line 159
    new-array v0, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lr/U;->a:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 160
    iput-object p1, p0, Lr/U;->b:Lcom/google/googlenav/common/a;

    .line 161
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 218
    const/16 v0, 0x24

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 223
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    invoke-virtual {p0}, Lr/U;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 227
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 231
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dA;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 235
    invoke-virtual {p0}, Lr/U;->c()I

    move-result v0

    if-eq v2, v0, :cond_13

    .line 242
    :cond_12
    return v5

    .line 239
    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_12

    .line 240
    iget-object v3, p0, Lr/U;->a:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    aput-object v4, v3, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method protected a(Lr/m;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Lr/U;->c()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lr/m;->c()Ln/am;

    move-result-object v0

    check-cast v0, Lr/V;

    invoke-virtual {p0, v2}, Lr/U;->a(I)Lr/m;

    move-result-object v1

    invoke-virtual {v1}, Lr/m;->c()Ln/am;

    move-result-object v1

    check-cast v1, Lr/V;

    invoke-virtual {v0, v1}, Lr/V;->a(Lr/V;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public b(I)Ln/al;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x3

    .line 176
    iget-object v0, p0, Lr/U;->a:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v2, v0, p1

    .line 177
    if-nez v2, :cond_9

    .line 178
    const/4 v0, 0x0

    .line 207
    :goto_8
    return-object v0

    .line 180
    :cond_9
    new-instance v4, Ln/ah;

    invoke-direct {v4}, Ln/ah;-><init>()V

    .line 182
    invoke-virtual {p0, p1}, Lr/U;->a(I)Lr/m;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lr/m;->c()Ln/am;

    move-result-object v0

    check-cast v0, Lr/V;

    .line 188
    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    const/4 v1, 0x0

    :goto_22
    if-ge v1, v3, :cond_3d

    .line 191
    invoke-virtual {v2, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-virtual {v4}, Ln/ah;->a()Ln/ag;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lr/T;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/ag;Ln/am;)Ln/l;

    move-result-object v6

    .line 194
    if-eqz v6, :cond_7a

    .line 195
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_7a

    .line 201
    :cond_3d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ln/l;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ln/l;

    .line 202
    invoke-virtual {v0}, Lr/V;->k()Ln/G;

    move-result-object v5

    .line 203
    const-wide/16 v2, -0x1

    .line 204
    invoke-virtual {v5}, Ln/G;->e()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 205
    iget-object v2, p0, Lr/U;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    invoke-virtual {v5}, Ln/G;->f()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 207
    :cond_60
    new-instance v5, Ln/aH;

    invoke-direct {v5}, Ln/aH;-><init>()V

    invoke-virtual {v5, v4}, Ln/aH;->a(Ln/ah;)Ln/aH;

    move-result-object v4

    invoke-virtual {v4, v0}, Ln/aH;->a(Ln/am;)Ln/aH;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln/aH;->a([Ln/l;)Ln/aH;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ln/aH;->a(J)Ln/aH;

    move-result-object v0

    invoke-virtual {v0}, Ln/aH;->a()Ln/aF;

    move-result-object v0

    goto :goto_8

    .line 190
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 12

    .prologue
    const/16 v10, 0x16

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 246
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dA;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 247
    const/16 v0, 0x80

    invoke-virtual {v2, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 251
    invoke-virtual {p0, v1}, Lr/U;->a(I)Lr/m;

    move-result-object v0

    invoke-virtual {v0}, Lr/m;->c()Ln/am;

    move-result-object v0

    check-cast v0, Lr/V;

    .line 252
    invoke-virtual {v0}, Lr/V;->k()Ln/G;

    move-result-object v0

    .line 253
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 254
    const/16 v4, 0x15

    invoke-virtual {v0}, Ln/G;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 255
    invoke-virtual {v0}, Ln/G;->d()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 256
    :goto_32
    array-length v5, v4

    if-ge v0, v5, :cond_4b

    .line 257
    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 259
    aget-object v6, v4, v0

    invoke-virtual {v5, v8, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 260
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 261
    invoke-virtual {v3, v10, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 256
    add-int/lit8 v0, v0, 0x2

    goto :goto_32

    .line 263
    :cond_4b
    invoke-virtual {v2, v7, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 266
    :goto_4e
    invoke-virtual {p0}, Lr/U;->c()I

    move-result v0

    if-ge v1, v0, :cond_84

    .line 267
    invoke-virtual {p0, v1}, Lr/U;->a(I)Lr/m;

    move-result-object v0

    invoke-virtual {v0}, Lr/m;->c()Ln/am;

    move-result-object v0

    .line 268
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/hm;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 270
    const/16 v4, 0x8

    invoke-virtual {v3, v8, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 272
    invoke-virtual {v0}, Ln/am;->c()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 273
    invoke-virtual {v0}, Ln/am;->d()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 274
    const/4 v4, 0x4

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 275
    invoke-virtual {v2, v9, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 277
    :cond_84
    return-object v2
.end method
