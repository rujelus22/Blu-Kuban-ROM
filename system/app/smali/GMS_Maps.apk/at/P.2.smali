.class public Lat/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:I

.field private static g:[Lat/P;

.field private static final h:[I


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lat/Y;

.field private final d:B

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lat/P;->h:[I

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Lat/P;->a(I)V

    .line 160
    return-void

    .line 124
    :array_e
    .array-data 0x4
        0x83t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0x7t 0x4t 0x0t 0x0t
        0x5t 0x8t 0x0t 0x0t
        0x3t 0x10t 0x0t 0x0t
        0x11t 0x20t 0x0t 0x0t
        0x1bt 0x40t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(BIILat/Y;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    if-nez p4, :cond_d

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_d
    iput-byte p1, p0, Lat/P;->d:B

    .line 222
    iput p2, p0, Lat/P;->a:I

    .line 223
    iput p3, p0, Lat/P;->b:I

    .line 224
    iput-object p4, p0, Lat/P;->c:Lat/Y;

    .line 225
    iput p5, p0, Lat/P;->e:I

    .line 226
    return-void
.end method

.method public static a()B
    .registers 1

    .prologue
    .line 230
    const/4 v0, 0x6

    return v0
.end method

.method private static a(IILat/Y;I)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    mul-int/lit8 v0, p0, 0x1d

    xor-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p2}, Lat/Y;->a()I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    return v0
.end method

.method public static a(Lat/B;Lat/Y;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lat/B;->a(Lat/Y;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static a(BIILat/Y;)Lat/P;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-virtual {p3}, Lat/Y;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    rem-int v2, p1, v0

    .line 194
    if-gez v2, :cond_11

    .line 195
    invoke-virtual {p3}, Lat/Y;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    add-int/2addr v2, v0

    .line 198
    :cond_11
    invoke-static {v2, p2, p3, p0}, Lat/P;->a(IILat/Y;I)I

    move-result v5

    .line 199
    sget v0, Lat/P;->f:I

    rem-int v0, v5, v0

    .line 200
    if-gez v0, :cond_43

    .line 201
    sget v1, Lat/P;->f:I

    add-int/2addr v0, v1

    move v6, v0

    .line 203
    :goto_1f
    sget-object v0, Lat/P;->g:[Lat/P;

    aget-object v0, v0, v6

    .line 204
    if-eqz v0, :cond_36

    iget-byte v1, v0, Lat/P;->d:B

    if-ne v1, p0, :cond_36

    iget v1, v0, Lat/P;->a:I

    if-ne v1, v2, :cond_36

    iget v1, v0, Lat/P;->b:I

    if-ne v1, p2, :cond_36

    iget-object v1, v0, Lat/P;->c:Lat/Y;

    if-ne v1, p3, :cond_36

    .line 213
    :goto_35
    return-object v0

    .line 211
    :cond_36
    new-instance v0, Lat/P;

    move v1, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lat/P;-><init>(BIILat/Y;I)V

    .line 212
    sget-object v1, Lat/P;->g:[Lat/P;

    aput-object v0, v1, v6

    goto :goto_35

    :cond_43
    move v6, v0

    goto :goto_1f
.end method

.method public static a(BLat/B;Lat/Y;)Lat/P;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {p1, p2}, Lat/P;->a(Lat/B;Lat/Y;)I

    move-result v0

    invoke-static {p1, p2}, Lat/P;->b(Lat/B;Lat/Y;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lat/P;->a(BIILat/Y;)Lat/P;

    move-result-object v0

    return-object v0
.end method

.method public static a(BLat/P;)Lat/P;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 181
    iget v0, p1, Lat/P;->a:I

    iget v1, p1, Lat/P;->b:I

    iget-object v2, p1, Lat/P;->c:Lat/Y;

    invoke-static {p0, v0, v1, v2}, Lat/P;->a(BIILat/Y;)Lat/P;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lat/P;
    .registers 5
    .parameter

    .prologue
    .line 352
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-static {v3}, Lat/Y;->b(I)Lat/Y;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lat/P;->a(BIILat/Y;)Lat/P;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    return-object v0

    .line 358
    :catch_19
    move-exception v0

    .line 359
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(I)V
    .registers 2
    .parameter

    .prologue
    .line 114
    mul-int/lit8 v0, p0, 0x6

    .line 115
    invoke-static {v0}, Lat/P;->b(I)I

    move-result v0

    sput v0, Lat/P;->f:I

    .line 116
    sget v0, Lat/P;->f:I

    new-array v0, v0, [Lat/P;

    sput-object v0, Lat/P;->g:[Lat/P;

    .line 117
    return-void
.end method

.method private static b(I)I
    .registers 3
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lat/P;->h:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 143
    sget-object v1, Lat/P;->h:[I

    aget v1, v1, v0

    .line 145
    if-lt v1, p0, :cond_e

    move v0, v1

    .line 149
    :goto_d
    return v0

    .line 142
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_11
    sget-object v0, Lat/P;->h:[I

    sget-object v1, Lat/P;->h:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_d
.end method

.method public static b(Lat/B;Lat/Y;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lat/B;->b(Lat/Y;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 372
    iget-byte v0, p0, Lat/P;->d:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 373
    iget v0, p0, Lat/P;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 374
    iget v0, p0, Lat/P;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 375
    iget-object v0, p0, Lat/P;->c:Lat/Y;

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 376
    return-void
.end method

.method public b()B
    .registers 2

    .prologue
    .line 242
    iget-byte v0, p0, Lat/P;->d:B

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lat/P;->a:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lat/P;->b:I

    return v0
.end method

.method public e()Lat/Y;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lat/P;->c:Lat/Y;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 380
    if-ne p0, p1, :cond_5

    .line 388
    :cond_4
    :goto_4
    return v0

    .line 383
    :cond_5
    instance-of v2, p1, Lat/P;

    if-nez v2, :cond_b

    move v0, v1

    .line 384
    goto :goto_4

    .line 387
    :cond_b
    check-cast p1, Lat/P;

    .line 388
    iget v2, p0, Lat/P;->a:I

    iget v3, p1, Lat/P;->a:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lat/P;->b:I

    iget v3, p1, Lat/P;->b:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lat/P;->c:Lat/Y;

    iget-object v3, p1, Lat/P;->c:Lat/Y;

    if-ne v2, v3, :cond_25

    iget-byte v2, p0, Lat/P;->d:B

    iget-byte v3, p1, Lat/P;->d:B

    if-eq v2, v3, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public f()I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lat/P;->a:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lat/P;->b:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public h()Lat/P;
    .registers 5

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lat/P;->c:Lat/Y;

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_25

    .line 312
    iget v1, p0, Lat/P;->a:I

    .line 313
    iget v0, p0, Lat/P;->b:I

    .line 317
    if-gez v1, :cond_17

    .line 318
    add-int/lit8 v1, v1, -0x1

    .line 320
    :cond_17
    if-gez v0, :cond_1b

    .line 321
    add-int/lit8 v0, v0, -0x1

    .line 324
    :cond_1b
    iget-byte v3, p0, Lat/P;->d:B

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v1, v0, v2}, Lat/P;->a(BIILat/Y;)Lat/P;

    move-result-object v0

    .line 327
    :cond_25
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lat/P;->e:I

    return v0
.end method

.method public i()Lat/P;
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lat/P;->a(BLat/P;)Lat/P;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 407
    iget v0, p0, Lat/P;->b:I

    if-ltz v0, :cond_10

    iget v0, p0, Lat/P;->b:I

    iget-object v1, p0, Lat/P;->c:Lat/Y;

    invoke-virtual {v1}, Lat/Y;->b()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    if-lt v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lat/P;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lat/P;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lat/P;->c:Lat/Y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
