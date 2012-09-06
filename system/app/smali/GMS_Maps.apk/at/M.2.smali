.class public Lat/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/g;
.implements Lcom/google/googlenav/ui/aG;


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:I


# instance fields
.field private final a:[Lat/B;

.field private final b:I

.field private final c:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lat/M;->d:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    sput v0, Lat/M;->e:I

    return-void
.end method

.method public constructor <init>([Lat/B;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lat/M;->p()I

    move-result v0

    iput v0, p0, Lat/M;->f:I

    .line 43
    iput-object p1, p0, Lat/M;->a:[Lat/B;

    .line 44
    iput p2, p0, Lat/M;->b:I

    .line 45
    iput p3, p0, Lat/M;->c:I

    .line 46
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/M;
    .registers 5
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 84
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 85
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lat/M;->a([B)[Lat/B;

    move-result-object v2

    .line 87
    new-instance v3, Lat/M;

    invoke-direct {v3, v2, v0, v1}, Lat/M;-><init>([Lat/B;II)V

    return-object v3
.end method

.method public static a([JLat/B;Lat/Y;)Z
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 269
    if-nez p0, :cond_5

    .line 331
    :cond_4
    :goto_4
    return v3

    .line 273
    :cond_5
    invoke-virtual {p1, p2}, Lat/B;->a(Lat/Y;)I

    move-result v4

    .line 274
    invoke-virtual {p1, p2}, Lat/B;->b(Lat/Y;)I

    move-result v5

    move v0, v1

    move v2, v3

    .line 285
    :goto_f
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    .line 286
    aget-wide v6, p0, v2

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v6

    .line 287
    aget-wide v7, p0, v2

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v7

    .line 288
    aget-wide v8, p0, v0

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v8

    .line 289
    aget-wide v9, p0, v0

    invoke-static {v9, v10}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v9

    .line 293
    if-gt v7, v9, :cond_3b

    .line 294
    add-int/lit8 v10, v7, -0x4

    if-gt v10, v5, :cond_36

    add-int/lit8 v10, v9, 0x4

    if-le v5, v10, :cond_43

    .line 285
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 298
    :cond_3b
    add-int/lit8 v10, v9, -0x4

    if-gt v10, v5, :cond_36

    add-int/lit8 v10, v7, 0x4

    if-gt v5, v10, :cond_36

    .line 303
    :cond_43
    if-gt v6, v8, :cond_6f

    .line 304
    add-int/lit8 v10, v6, -0x4

    if-gt v10, v4, :cond_36

    add-int/lit8 v10, v8, 0x4

    if-gt v4, v10, :cond_36

    .line 314
    :cond_4d
    sub-int/2addr v8, v6

    .line 315
    sub-int/2addr v9, v7

    .line 316
    sub-int v6, v4, v6

    .line 317
    sub-int v7, v5, v7

    .line 320
    const/16 v10, 0x50

    mul-int v11, v8, v8

    mul-int v12, v9, v9

    add-int/2addr v11, v12

    invoke-static {v11}, Lcom/google/googlenav/common/util/j;->b(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 322
    mul-int/2addr v6, v9

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/2addr v6, v10

    .line 326
    const/4 v7, 0x4

    if-gt v6, v7, :cond_36

    move v3, v1

    .line 327
    goto :goto_4

    .line 308
    :cond_6f
    add-int/lit8 v10, v8, -0x4

    if-gt v10, v4, :cond_36

    add-int/lit8 v10, v6, 0x4

    if-le v4, v10, :cond_4d

    goto :goto_36
.end method

.method public static a([Lat/B;)[B
    .registers 5
    .parameter

    .prologue
    .line 161
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 162
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    const/4 v0, 0x0

    :goto_e
    array-length v3, p0

    if-ge v0, v3, :cond_26

    .line 165
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lat/B;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 166
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 169
    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[Lat/B;
    .registers 8
    .parameter

    .prologue
    .line 108
    array-length v0, p0

    div-int/lit8 v1, v0, 0x8

    .line 109
    new-array v2, v1, [Lat/B;

    .line 111
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 112
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_25

    .line 114
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 115
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 116
    new-instance v6, Lat/B;

    invoke-direct {v6, v4, v5}, Lat/B;-><init>(II)V

    aput-object v6, v2, v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 118
    :catch_24
    move-exception v0

    .line 121
    :cond_25
    return-object v2
.end method

.method private static p()I
    .registers 3

    .prologue
    .line 54
    sget-object v1, Lat/M;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_3
    sget v0, Lat/M;->e:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lat/M;->e:I

    monitor-exit v1

    return v0

    .line 56
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x2

    return v0
.end method

.method public a(Lat/Y;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 213
    invoke-virtual {p1}, Lat/Y;->a()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_a

    .line 218
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0xa

    iget v2, p0, Lat/M;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_9
.end method

.method public b()Lat/B;
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lat/M;->a:[Lat/B;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c()Ln/B;
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 138
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 139
    const/4 v1, 0x5

    iget v2, p0, Lat/M;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 140
    const/4 v1, 0x4

    iget v2, p0, Lat/M;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 141
    const/4 v1, 0x6

    iget-object v2, p0, Lat/M;->a:[Lat/B;

    invoke-static {v2}, Lat/M;->a([Lat/B;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 142
    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lat/M;->c:I

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lat/M;->g()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lat/M;->f:I

    return v0
.end method

.method public j()[Lat/B;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lat/M;->a:[Lat/B;

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lat/M;->b:I

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 242
    const/4 v0, -0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const-string v0, "polyline"

    return-object v0
.end method

.method public o()[[Lat/B;
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    check-cast v0, [[Lat/B;

    return-object v0
.end method
