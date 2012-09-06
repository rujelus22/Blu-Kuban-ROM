.class final Lr/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:I


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Z

.field final g:I

.field final h:J

.field final i:Ljava/util/Locale;

.field final j:I

.field final k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2222
    const/16 v0, 0x2b

    sput v0, Lr/z;->l:I

    .line 2223
    return-void
.end method

.method constructor <init>(IIIIZIJLjava/util/Locale;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2242
    iput p1, p0, Lr/z;->a:I

    .line 2243
    iput p2, p0, Lr/z;->c:I

    .line 2244
    iput p3, p0, Lr/z;->d:I

    .line 2245
    iput p4, p0, Lr/z;->e:I

    .line 2246
    iput-boolean p5, p0, Lr/z;->f:Z

    .line 2247
    iput p6, p0, Lr/z;->g:I

    .line 2248
    iput-object p9, p0, Lr/z;->i:Ljava/util/Locale;

    .line 2249
    iput-wide p7, p0, Lr/z;->h:J

    .line 2252
    invoke-direct {p0}, Lr/z;->a()[B

    move-result-object v0

    .line 2253
    array-length v1, v0

    iput v1, p0, Lr/z;->b:I

    .line 2254
    const/4 v1, 0x4

    iget v2, p0, Lr/z;->b:I

    invoke-static {v0, v1, v2}, Lr/w;->a([BII)V

    .line 2255
    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    invoke-static {v0, v1, v2}, Lr/w;->c([BII)I

    move-result v0

    iput v0, p0, Lr/z;->j:I

    .line 2258
    iget v0, p0, Lr/z;->d:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    .line 2259
    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lr/z;->k:I

    .line 2260
    return-void
.end method

.method constructor <init>([BI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    invoke-static {p1, p2}, Lr/w;->a([BI)I

    move-result v0

    iput v0, p0, Lr/z;->a:I

    .line 2264
    iget v0, p0, Lr/z;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 2266
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t parse header for old schema"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_16
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lr/w;->a([BI)I

    move-result v0

    iput v0, p0, Lr/z;->b:I

    .line 2269
    iget v0, p0, Lr/z;->b:I

    sget v1, Lr/z;->l:I

    if-lt v0, v1, :cond_2a

    iget v0, p0, Lr/z;->b:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_45

    .line 2270
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong header size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lr/z;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2272
    :cond_45
    iget v0, p0, Lr/z;->b:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v0}, Lr/w;->a([BI)I

    move-result v0

    iput v0, p0, Lr/z;->j:I

    .line 2273
    iget v0, p0, Lr/z;->b:I

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, p2, v0}, Lr/w;->c([BII)I

    move-result v0

    .line 2274
    iget v1, p0, Lr/z;->j:I

    if-eq v1, v0, :cond_81

    .line 2275
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checksum mismatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lr/z;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2280
    :cond_81
    new-instance v0, LW/a;

    invoke-direct {v0, p1}, LW/a;-><init>([B)V

    .line 2281
    add-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, LW/a;->skipBytes(I)I

    .line 2283
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v1

    iput v1, p0, Lr/z;->c:I

    .line 2284
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v1

    iput v1, p0, Lr/z;->d:I

    .line 2285
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v1

    iput v1, p0, Lr/z;->e:I

    .line 2286
    invoke-virtual {v0}, LW/a;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lr/z;->f:Z

    .line 2287
    invoke-virtual {v0}, LW/a;->readInt()I

    move-result v1

    iput v1, p0, Lr/z;->g:I

    .line 2288
    invoke-virtual {v0}, LW/a;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lr/z;->h:J

    .line 2292
    invoke-virtual {v0}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 2293
    invoke-virtual {v0}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2294
    invoke-virtual {v0}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 2295
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lr/z;->i:Ljava/util/Locale;

    .line 2298
    iget v0, p0, Lr/z;->d:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    .line 2299
    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lr/z;->k:I

    .line 2300
    return-void
.end method

.method private a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 2319
    iget v0, p0, Lr/z;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2320
    iget v0, p0, Lr/z;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2321
    iget v0, p0, Lr/z;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2322
    iget v0, p0, Lr/z;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2323
    iget v0, p0, Lr/z;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2324
    iget-boolean v0, p0, Lr/z;->f:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 2325
    iget v0, p0, Lr/z;->g:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2326
    iget-wide v0, p0, Lr/z;->h:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 2327
    iget-object v0, p0, Lr/z;->i:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 2328
    iget-object v0, p0, Lr/z;->i:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 2329
    iget-object v0, p0, Lr/z;->i:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 2330
    iget v0, p0, Lr/z;->j:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2331
    return-void
.end method

.method private a()[B
    .registers 3

    .prologue
    .line 2312
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2313
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2314
    invoke-direct {p0, v1}, Lr/z;->a(Ljava/io/DataOutput;)V

    .line 2315
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a([BI)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2306
    invoke-direct {p0}, Lr/z;->a()[B

    move-result-object v0

    .line 2307
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2308
    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatalogVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/z;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/z;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MaxShardCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/z;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RecordsPerBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/z;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AutoConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lr/z;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/z;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CacheCreationTimeMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lr/z;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/z;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
