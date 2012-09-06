.class public final Ln/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static b:Ln/ag;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:[I

.field private final f:[Ln/af;

.field private final g:Ln/ak;

.field private final h:Ln/aj;

.field private final i:Ln/af;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 33
    new-array v0, v1, [I

    sput-object v0, Ln/ag;->a:[I

    .line 35
    new-instance v0, Ln/ag;

    sget-object v3, Ln/ag;->a:[I

    new-array v4, v1, [Ln/af;

    invoke-static {}, Ln/ak;->a()Ln/ak;

    move-result-object v5

    invoke-static {}, Ln/aj;->a()Ln/aj;

    move-result-object v6

    invoke-static {}, Ln/af;->a()Ln/af;

    move-result-object v7

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ln/ag;-><init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V

    sput-object v0, Ln/ag;->b:Ln/ag;

    return-void
.end method

.method public constructor <init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Ln/ag;->c:I

    .line 158
    iput p2, p0, Ln/ag;->d:I

    .line 159
    iput-object p3, p0, Ln/ag;->e:[I

    .line 160
    iput-object p4, p0, Ln/ag;->f:[Ln/af;

    .line 161
    iput-object p5, p0, Ln/ag;->g:Ln/ak;

    .line 162
    iput-object p6, p0, Ln/ag;->h:Ln/aj;

    .line 163
    iput-object p7, p0, Ln/ag;->i:Ln/af;

    .line 164
    return-void
.end method

.method public static a()Ln/ag;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Ln/ag;->b:Ln/ag;

    return-object v0
.end method

.method public static a(ILjava/io/DataInput;I)Ln/ag;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 79
    invoke-static {v2}, Ln/ag;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 80
    invoke-static {p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 81
    new-array v3, v5, [I

    move v4, v1

    .line 82
    :goto_13
    if-ge v4, v5, :cond_1f

    .line 83
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    aput v6, v3, v4

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1e
    move-object v3, v0

    .line 89
    :cond_1f
    invoke-static {v2}, Ln/ag;->d(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 90
    invoke-static {p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 91
    new-array v4, v5, [Ln/af;

    .line 92
    :goto_2b
    if-ge v1, v5, :cond_37

    .line 93
    invoke-static {p1, p2}, Ln/af;->a(Ljava/io/DataInput;I)Ln/af;

    move-result-object v6

    aput-object v6, v4, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_36
    move-object v4, v0

    .line 99
    :cond_37
    invoke-static {v2}, Ln/ag;->e(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 100
    invoke-static {p1, p2}, Ln/ak;->a(Ljava/io/DataInput;I)Ln/ak;

    move-result-object v5

    .line 105
    :goto_41
    invoke-static {v2}, Ln/ag;->f(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 106
    invoke-static {p1, p2}, Ln/aj;->a(Ljava/io/DataInput;I)Ln/aj;

    move-result-object v6

    .line 111
    :goto_4b
    invoke-static {v2}, Ln/ag;->g(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 112
    invoke-static {p1, p2}, Ln/af;->a(Ljava/io/DataInput;I)Ln/af;

    move-result-object v7

    .line 114
    :goto_55
    new-instance v0, Ln/ag;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Ln/ag;-><init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V

    return-object v0

    :cond_5c
    move-object v7, v0

    goto :goto_55

    :cond_5e
    move-object v6, v0

    goto :goto_4b

    :cond_60
    move-object v5, v0

    goto :goto_41
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    if-nez p1, :cond_10

    .line 302
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    :goto_f
    return-void

    .line 305
    :cond_10
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/4 v0, 0x1

    .line 307
    array-length v3, p1

    move v2, v1

    :goto_18
    if-ge v2, v3, :cond_2f

    aget v4, p1, v2

    .line 308
    if-eqz v0, :cond_29

    move v0, v1

    .line 313
    :goto_1f
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 311
    :cond_29
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 315
    :cond_2f
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f
.end method

.method private static c(I)Z
    .registers 2
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static d(I)Z
    .registers 2
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .registers 2
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x4

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .registers 2
    .parameter

    .prologue
    .line 214
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static g(I)Z
    .registers 2
    .parameter

    .prologue
    .line 218
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Ln/ag;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Ln/ag;->f:[Ln/af;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ln/ag;->f:[Ln/af;

    array-length v0, v0

    goto :goto_5
.end method

.method public b(I)Ln/af;
    .registers 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Ln/ag;->f:[Ln/af;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Ln/ag;->e:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ln/ag;->e:[I

    array-length v0, v0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Ln/ag;->d:I

    invoke-static {v0}, Ln/ag;->d(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Ln/ag;->d:I

    invoke-static {v0}, Ln/ag;->e(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    if-ne p0, p1, :cond_5

    .line 369
    :cond_4
    :goto_4
    return v0

    .line 329
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 330
    goto :goto_4

    .line 332
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 333
    goto :goto_4

    .line 335
    :cond_15
    check-cast p1, Ln/ag;

    .line 336
    iget-object v2, p0, Ln/ag;->i:Ln/af;

    if-nez v2, :cond_21

    .line 337
    iget-object v2, p1, Ln/ag;->i:Ln/af;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 338
    goto :goto_4

    .line 340
    :cond_21
    iget-object v2, p0, Ln/ag;->i:Ln/af;

    iget-object v3, p1, Ln/ag;->i:Ln/af;

    invoke-virtual {v2, v3}, Ln/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 341
    goto :goto_4

    .line 343
    :cond_2d
    iget v2, p0, Ln/ag;->d:I

    iget v3, p1, Ln/ag;->d:I

    if-eq v2, v3, :cond_35

    move v0, v1

    .line 344
    goto :goto_4

    .line 346
    :cond_35
    iget-object v2, p0, Ln/ag;->e:[I

    iget-object v3, p1, Ln/ag;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_41

    move v0, v1

    .line 347
    goto :goto_4

    .line 349
    :cond_41
    iget v2, p0, Ln/ag;->c:I

    iget v3, p1, Ln/ag;->c:I

    if-eq v2, v3, :cond_49

    move v0, v1

    .line 350
    goto :goto_4

    .line 352
    :cond_49
    iget-object v2, p0, Ln/ag;->f:[Ln/af;

    iget-object v3, p1, Ln/ag;->f:[Ln/af;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    move v0, v1

    .line 353
    goto :goto_4

    .line 355
    :cond_55
    iget-object v2, p0, Ln/ag;->h:Ln/aj;

    if-nez v2, :cond_5f

    .line 356
    iget-object v2, p1, Ln/ag;->h:Ln/aj;

    if-eqz v2, :cond_6b

    move v0, v1

    .line 357
    goto :goto_4

    .line 359
    :cond_5f
    iget-object v2, p0, Ln/ag;->h:Ln/aj;

    iget-object v3, p1, Ln/ag;->h:Ln/aj;

    invoke-virtual {v2, v3}, Ln/aj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    move v0, v1

    .line 360
    goto :goto_4

    .line 362
    :cond_6b
    iget-object v2, p0, Ln/ag;->g:Ln/ak;

    if-nez v2, :cond_75

    .line 363
    iget-object v2, p1, Ln/ag;->g:Ln/ak;

    if-eqz v2, :cond_4

    move v0, v1

    .line 364
    goto :goto_4

    .line 366
    :cond_75
    iget-object v2, p0, Ln/ag;->g:Ln/ak;

    iget-object v3, p1, Ln/ag;->g:Ln/ak;

    invoke-virtual {v2, v3}, Ln/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 367
    goto :goto_4
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Ln/ag;->d:I

    invoke-static {v0}, Ln/ag;->f(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Ln/ag;->d:I

    invoke-static {v0}, Ln/ag;->g(I)Z

    move-result v0

    return v0
.end method

.method public h()Ln/ak;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Ln/ag;->g:Ln/ak;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 264
    .line 266
    iget-object v0, p0, Ln/ag;->i:Ln/af;

    if-nez v0, :cond_34

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 267
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/ag;->d:I

    add-int/2addr v0, v2

    .line 268
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ln/ag;->e:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/ag;->c:I

    add-int/2addr v0, v2

    .line 270
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ln/ag;->f:[Ln/af;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 271
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ln/ag;->h:Ln/aj;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_2b
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ln/ag;->g:Ln/ak;

    if-nez v2, :cond_42

    :goto_32
    add-int/2addr v0, v1

    .line 273
    return v0

    .line 266
    :cond_34
    iget-object v0, p0, Ln/ag;->i:Ln/af;

    invoke-virtual {v0}, Ln/af;->hashCode()I

    move-result v0

    goto :goto_6

    .line 271
    :cond_3b
    iget-object v0, p0, Ln/ag;->h:Ln/aj;

    invoke-virtual {v0}, Ln/aj;->hashCode()I

    move-result v0

    goto :goto_2b

    .line 272
    :cond_42
    iget-object v1, p0, Ln/ag;->g:Ln/ak;

    invoke-virtual {v1}, Ln/ak;->hashCode()I

    move-result v1

    goto :goto_32
.end method

.method public i()Ln/aj;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Ln/ag;->h:Ln/aj;

    return-object v0
.end method

.method public j()I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Ln/ag;->e:[I

    if-nez v0, :cond_1c

    move v0, v1

    .line 375
    :goto_6
    iget-object v2, p0, Ln/ag;->f:[Ln/af;

    if-eqz v2, :cond_22

    .line 376
    iget-object v4, p0, Ln/ag;->f:[Ln/af;

    array-length v5, v4

    move v2, v1

    :goto_e
    if-ge v2, v5, :cond_22

    aget-object v3, v4, v2

    .line 377
    invoke-virtual {v3}, Ln/af;->h()I

    move-result v3

    add-int/2addr v3, v1

    .line 376
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_e

    .line 373
    :cond_1c
    iget-object v0, p0, Ln/ag;->e:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_6

    .line 380
    :cond_22
    iget-object v2, p0, Ln/ag;->i:Ln/af;

    invoke-static {v2}, Ln/L;->a(Ln/af;)I

    move-result v2

    .line 381
    add-int/lit8 v0, v0, 0x38

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    const-string v0, "Style{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ln/ag;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v0, "fillColors"

    iget-object v2, p0, Ln/ag;->e:[I

    invoke-static {v0, v2, v1}, Ln/ag;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    .line 282
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v0, ", components="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ln/ag;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", strokes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ln/ag;->f:[Ln/af;

    if-nez v0, :cond_71

    const/4 v0, 0x0

    :goto_3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ln/ag;->g:Ln/ak;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textBoxStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ln/ag;->h:Ln/aj;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", arrowStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ln/ag;->i:Ln/af;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_71
    iget-object v0, p0, Ln/ag;->f:[Ln/af;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3f
.end method
