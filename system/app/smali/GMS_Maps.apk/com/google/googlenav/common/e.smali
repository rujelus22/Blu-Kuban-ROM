.class public Lcom/google/googlenav/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object v1, p0, Lcom/google/googlenav/common/e;->d:[Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/google/googlenav/common/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/e;->c(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/e;->d(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 378
    const/4 v0, 0x4

    .line 386
    :goto_7
    return v0

    .line 379
    :cond_8
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 380
    const/4 v0, 0x3

    goto :goto_7

    .line 381
    :cond_10
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 382
    const/4 v0, 0x2

    goto :goto_7

    .line 383
    :cond_18
    if-eqz p3, :cond_1c

    .line 384
    const/4 v0, 0x1

    goto :goto_7

    .line 386
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)Lcom/google/googlenav/common/e;
    .registers 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/google/googlenav/common/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-static {p0}, Lcom/google/googlenav/common/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-static {v5}, Lcom/google/googlenav/common/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 351
    const/4 v0, -0x1

    move v2, v0

    move v3, v1

    move v0, v1

    .line 352
    :goto_d
    array-length v4, p1

    if-ge v0, v4, :cond_22

    .line 353
    aget-object v7, p1, v0

    .line 354
    if-nez v0, :cond_20

    const/4 v4, 0x1

    :goto_15
    invoke-static {v5, v6, v7, v4}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    .line 356
    if-le v4, v2, :cond_1d

    move v2, v4

    move v3, v0

    .line 352
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_20
    move v4, v1

    .line 354
    goto :goto_15

    .line 361
    :cond_22
    aget-object v0, p1, v3

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/16 v2, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 81
    const-string v0, "en"

    .line 82
    if-eqz p0, :cond_52

    .line 84
    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 86
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_24

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_52

    .line 88
    :cond_24
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 89
    array-length v2, v1

    if-lt v2, v5, :cond_52

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_52

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_52
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 248
    invoke-static {p0}, Lcom/google/googlenav/common/e;->j(Ljava/lang/String;)I

    move-result v0

    .line 249
    if-gez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-static {p0}, Lcom/google/googlenav/common/e;->j(Ljava/lang/String;)I

    move-result v0

    .line 257
    if-gez v0, :cond_8

    .line 265
    :goto_7
    return-object v1

    .line 260
    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/google/googlenav/common/e;->j(Ljava/lang/String;)I

    move-result v2

    .line 262
    if-ltz v2, :cond_19

    .line 263
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    :goto_1f
    move-object v1, v0

    goto :goto_7

    :cond_21
    move-object v0, v1

    goto :goto_1f
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 334
    invoke-static {p0}, Lcom/google/googlenav/common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 49
    if-nez p0, :cond_5

    .line 50
    const-string p0, "en"

    .line 56
    :cond_4
    :goto_4
    return-object p0

    .line 51
    :cond_5
    const-string v0, "en_AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "en_NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 52
    :cond_15
    const-string p0, "en_GB"

    goto :goto_4

    .line 53
    :cond_18
    const-string v0, "nb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    const-string p0, "no"

    goto :goto_4
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 138
    invoke-static {p0}, Lcom/google/googlenav/common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v0, "microedition.locale"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    move-object v0, v1

    .line 148
    :cond_24
    return-object v0
.end method

.method private static j(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 273
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 274
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 275
    if-gez v0, :cond_10

    move v0, v1

    .line 280
    :cond_f
    :goto_f
    return v0

    .line 277
    :cond_10
    if-ltz v1, :cond_f

    .line 280
    if-lt v0, v1, :cond_f

    move v0, v1

    goto :goto_f
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_53

    .line 308
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " systemLocale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uiLocale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uiLanguage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_53
    iget-object v0, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_5b
    return-object v0

    :cond_5c
    const-string v0, ""

    goto :goto_5b
.end method

.method public a([Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    .line 207
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-static {p1}, Lcom/google/googlenav/common/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 410
    invoke-static {v7}, Lcom/google/googlenav/common/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 412
    if-nez p2, :cond_16

    .line 413
    new-instance v0, Ljava/io/IOException;

    const-string v1, "data input is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_16
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    const v1, 0xfab2

    if-eq v0, v1, :cond_27

    .line 417
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bum string resources signature"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_27
    const/4 v5, 0x0

    .line 423
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v9

    .line 424
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v10

    .line 426
    if-lez v10, :cond_76

    if-lez v9, :cond_76

    .line 427
    const/4 v3, -0x1

    .line 428
    const/4 v1, 0x0

    .line 431
    const/4 v0, 0x0

    move v6, v0

    :goto_38
    if-ge v6, v10, :cond_5a

    .line 432
    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 435
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 436
    if-nez v6, :cond_58

    const/4 v2, 0x1

    :goto_49
    invoke-static {v7, v8, v11, v2}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 438
    if-le v2, v3, :cond_83

    move v1, v2

    move-object v2, v4

    .line 431
    :goto_51
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v5, v2

    move v3, v1

    move v1, v0

    goto :goto_38

    .line 436
    :cond_58
    const/4 v2, 0x0

    goto :goto_49

    .line 445
    :cond_5a
    const/4 v0, -0x1

    if-ne v3, v0, :cond_65

    .line 446
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty string resources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_65
    invoke-static {p2, v1}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/DataInput;I)V

    .line 451
    new-array v1, v9, [Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    :goto_6b
    if-ge v0, v9, :cond_7e

    .line 453
    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 461
    :cond_76
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bum string resources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_7e
    if-eqz p3, :cond_82

    .line 468
    iput-object v5, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    .line 470
    :cond_82
    return-object v1

    :cond_83
    move v0, v1

    move-object v2, v5

    move v1, v3

    goto :goto_51
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/googlenav/common/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 227
    invoke-static {p1}, Lcom/google/googlenav/common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/e;->a:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/googlenav/common/e;->e:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 240
    if-eqz p1, :cond_11

    invoke-static {p1}, Lcom/google/googlenav/common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/common/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/e;->c:Ljava/lang/String;

    .line 242
    return-void

    .line 240
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/common/e;->a:Ljava/lang/String;

    goto :goto_6
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/googlenav/common/e;->c:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/common/e;->c:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/common/e;->c:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/common/e;->b:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method
