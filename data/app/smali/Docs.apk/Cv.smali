.class LCv;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final a:I

.field private a:[I

.field private b:I

.field private final b:[I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, LCv;->a:I

    .line 44
    iput v0, p0, LCv;->b:I

    .line 46
    iput v0, p0, LCv;->c:I

    .line 47
    iget v0, p0, LCv;->b:I

    iput v0, p0, LCv;->d:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, LCv;->a:[I

    .line 50
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, LCv;->b:[I

    .line 51
    return-void
.end method

.method private final a()V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 253
    iget v1, p0, LCv;->a:I

    .line 254
    invoke-virtual {p0}, LCv;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 255
    mul-int/2addr v2, v1

    invoke-static {v2}, LBZ;->c(I)I

    move-result v2

    div-int/2addr v2, v1

    .line 256
    mul-int v3, v2, v1

    new-array v3, v3, [I

    .line 258
    iget-object v4, p0, LCv;->b:[I

    .line 259
    iget v5, p0, LCv;->c:I

    .line 261
    iget v6, p0, LCv;->b:I

    iget v7, p0, LCv;->d:I

    add-int/2addr v7, v5

    sub-int/2addr v6, v7

    .line 263
    iget-object v7, p0, LCv;->a:[I

    if-eqz v7, :cond_35

    .line 264
    iget-object v7, p0, LCv;->a:[I

    mul-int v8, v1, v5

    invoke-static {v7, v0, v3, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget-object v7, p0, LCv;->a:[I

    iget v8, p0, LCv;->b:I

    sub-int/2addr v8, v6

    mul-int/2addr v8, v1

    sub-int v9, v2, v6

    mul-int/2addr v9, v1

    mul-int/2addr v6, v1

    invoke-static {v7, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    :cond_35
    :goto_35
    if-ge v0, v1, :cond_4d

    .line 271
    aget v6, v4, v0

    if-lt v6, v5, :cond_4a

    .line 272
    aget v6, v4, v0

    iget v7, p0, LCv;->b:I

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v4, v0

    .line 274
    aget v6, v4, v0

    if-ge v6, v5, :cond_4a

    .line 275
    aput v5, v4, v0

    .line 270
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 280
    :cond_4d
    iget v0, p0, LCv;->d:I

    iget v1, p0, LCv;->b:I

    sub-int v1, v2, v1

    add-int/2addr v0, v1

    iput v0, p0, LCv;->d:I

    .line 281
    iput v2, p0, LCv;->b:I

    .line 282
    iput-object v3, p0, LCv;->a:[I

    .line 283
    return-void
.end method

.method private final a(I)V
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 313
    iget v0, p0, LCv;->c:I

    if-ne p1, v0, :cond_6

    .line 366
    :goto_5
    return-void

    .line 315
    :cond_6
    iget v0, p0, LCv;->c:I

    if-le p1, v0, :cond_52

    .line 316
    iget v0, p0, LCv;->d:I

    add-int/2addr v0, p1

    iget v1, p0, LCv;->c:I

    iget v3, p0, LCv;->d:I

    add-int/2addr v1, v3

    sub-int v5, v0, v1

    .line 317
    iget v6, p0, LCv;->a:I

    .line 318
    iget-object v7, p0, LCv;->b:[I

    .line 319
    iget-object v8, p0, LCv;->a:[I

    .line 320
    iget v0, p0, LCv;->c:I

    iget v1, p0, LCv;->d:I

    add-int v4, v0, v1

    move v3, v4

    .line 322
    :goto_21
    add-int v0, v4, v5

    if-ge v3, v0, :cond_95

    .line 323
    sub-int v0, v3, v4

    iget v1, p0, LCv;->c:I

    add-int v9, v0, v1

    move v1, v2

    .line 325
    :goto_2c
    if-ge v1, v6, :cond_4e

    .line 326
    mul-int v0, v3, v6

    add-int/2addr v0, v1

    aget v0, v8, v0

    .line 328
    aget v10, v7, v1

    if-lt v3, v10, :cond_3c

    .line 329
    add-int v10, v1, v6

    aget v10, v7, v10

    add-int/2addr v0, v10

    .line 332
    :cond_3c
    aget v10, v7, v1

    if-lt v9, v10, :cond_45

    .line 333
    add-int v10, v1, v6

    aget v10, v7, v10

    sub-int/2addr v0, v10

    .line 336
    :cond_45
    mul-int v10, v9, v6

    add-int/2addr v10, v1

    aput v0, v8, v10

    .line 325
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    .line 322
    :cond_4e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_21

    .line 340
    :cond_52
    iget v0, p0, LCv;->c:I

    sub-int v4, v0, p1

    .line 341
    iget v5, p0, LCv;->a:I

    .line 342
    iget-object v6, p0, LCv;->b:[I

    .line 343
    iget-object v7, p0, LCv;->a:[I

    .line 344
    iget v0, p0, LCv;->c:I

    iget v1, p0, LCv;->d:I

    add-int v8, v0, v1

    .line 346
    add-int v0, p1, v4

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_67
    if-lt v3, p1, :cond_95

    .line 347
    sub-int v0, v3, p1

    add-int/2addr v0, v8

    sub-int v9, v0, v4

    move v1, v2

    .line 349
    :goto_6f
    if-ge v1, v5, :cond_91

    .line 350
    mul-int v0, v3, v5

    add-int/2addr v0, v1

    aget v0, v7, v0

    .line 352
    aget v10, v6, v1

    if-lt v3, v10, :cond_7f

    .line 353
    add-int v10, v1, v5

    aget v10, v6, v10

    add-int/2addr v0, v10

    .line 356
    :cond_7f
    aget v10, v6, v1

    if-lt v9, v10, :cond_88

    .line 357
    add-int v10, v1, v5

    aget v10, v6, v10

    sub-int/2addr v0, v10

    .line 360
    :cond_88
    mul-int v10, v9, v5

    add-int/2addr v10, v1

    aput v0, v7, v10

    .line 349
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f

    .line 346
    :cond_91
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_67

    .line 365
    :cond_95
    iput p1, p0, LCv;->c:I

    goto/16 :goto_5
.end method

.method private final b(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 290
    iget-object v1, p0, LCv;->b:[I

    .line 291
    iget-object v2, p0, LCv;->a:[I

    .line 292
    iget v3, p0, LCv;->a:I

    .line 294
    aget v0, v1, p1

    if-ne p2, v0, :cond_b

    .line 307
    :goto_a
    return-void

    .line 296
    :cond_b
    aget v0, v1, p1

    if-le p2, v0, :cond_22

    .line 297
    aget v0, v1, p1

    :goto_11
    if-ge v0, p2, :cond_36

    .line 298
    mul-int v4, v0, v3

    add-int/2addr v4, p1

    aget v5, v2, v4

    add-int v6, p1, v3

    aget v6, v1, v6

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    move v0, p2

    .line 301
    :goto_23
    aget v4, v1, p1

    if-ge v0, v4, :cond_36

    .line 302
    mul-int v4, v0, v3

    add-int/2addr v4, p1

    aget v5, v2, v4

    add-int v6, p1, v3

    aget v6, v1, v6

    sub-int/2addr v5, v6

    aput v5, v2, v4

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 306
    :cond_36
    aput p2, v1, p1

    goto :goto_a
.end method

.method private b(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget v0, p0, LCv;->c:I

    if-lt p1, v0, :cond_7

    .line 123
    iget v0, p0, LCv;->d:I

    add-int/2addr p1, v0

    .line 126
    :cond_7
    iget-object v0, p0, LCv;->b:[I

    .line 127
    aget v1, v0, p2

    if-lt p1, v1, :cond_13

    .line 128
    iget v1, p0, LCv;->a:I

    add-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr p3, v0

    .line 131
    :cond_13
    iget-object v0, p0, LCv;->a:[I

    iget v1, p0, LCv;->a:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 132
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 235
    iget v0, p0, LCv;->b:I

    iget v1, p0, LCv;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(II)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 66
    iget v1, p0, LCv;->a:I

    .line 68
    or-int v0, p1, p2

    if-ltz v0, :cond_e

    invoke-virtual {p0}, LCv;->a()I

    move-result v0

    if-ge p1, v0, :cond_e

    if-lt p2, v1, :cond_2b

    .line 69
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2b
    iget v0, p0, LCv;->c:I

    if-lt p1, v0, :cond_32

    .line 73
    iget v0, p0, LCv;->d:I

    add-int/2addr p1, v0

    .line 76
    :cond_32
    iget-object v0, p0, LCv;->a:[I

    mul-int v2, p1, v1

    add-int/2addr v2, p2

    aget v0, v0, v2

    .line 78
    iget-object v2, p0, LCv;->b:[I

    .line 79
    aget v3, v2, p2

    if-lt p1, v3, :cond_43

    .line 80
    add-int/2addr v1, p2

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 83
    :cond_43
    return v0
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 215
    or-int v0, p1, p2

    if-ltz v0, :cond_c

    add-int v0, p1, p2

    invoke-virtual {p0}, LCv;->a()I

    move-result v1

    if-le v0, v1, :cond_29

    .line 216
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_29
    add-int v0, p1, p2

    invoke-direct {p0, v0}, LCv;->a(I)V

    .line 221
    iget v0, p0, LCv;->c:I

    sub-int/2addr v0, p2

    iput v0, p0, LCv;->c:I

    .line 222
    iget v0, p0, LCv;->d:I

    add-int/2addr v0, p2

    iput v0, p0, LCv;->d:I

    .line 226
    return-void
.end method

.method public a(III)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    or-int v0, p1, p2

    if-ltz v0, :cond_10

    invoke-virtual {p0}, LCv;->a()I

    move-result v0

    if-gt p1, v0, :cond_10

    invoke-virtual {p0}, LCv;->b()I

    move-result v0

    if-lt p2, v0, :cond_2d

    .line 150
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2d
    iget v0, p0, LCv;->c:I

    if-lt p1, v0, :cond_34

    .line 154
    iget v0, p0, LCv;->d:I

    add-int/2addr p1, v0

    .line 157
    :cond_34
    invoke-direct {p0, p2, p1}, LCv;->b(II)V

    .line 158
    iget-object v0, p0, LCv;->b:[I

    iget v1, p0, LCv;->a:I

    add-int/2addr v1, p2

    aget v2, v0, v1

    add-int/2addr v2, p3

    aput v2, v0, v1

    .line 159
    return-void
.end method

.method public a(I[I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 175
    if-ltz p1, :cond_8

    invoke-virtual {p0}, LCv;->a()I

    move-result v0

    if-le p1, v0, :cond_21

    .line 176
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_21
    if-eqz p2, :cond_44

    array-length v0, p2

    invoke-virtual {p0}, LCv;->b()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 180
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_44
    invoke-direct {p0, p1}, LCv;->a(I)V

    .line 185
    iget v0, p0, LCv;->d:I

    if-nez v0, :cond_4e

    .line 186
    invoke-direct {p0}, LCv;->a()V

    .line 189
    :cond_4e
    iget v0, p0, LCv;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCv;->c:I

    .line 190
    iget v0, p0, LCv;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LCv;->d:I

    .line 192
    if-nez p2, :cond_69

    .line 193
    iget v0, p0, LCv;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_60
    if-ltz v0, :cond_77

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LCv;->b(III)V

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto :goto_60

    .line 197
    :cond_69
    iget v0, p0, LCv;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_6d
    if-ltz v0, :cond_77

    .line 198
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, LCv;->b(III)V

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_6d

    .line 201
    :cond_77
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, LCv;->a:I

    return v0
.end method
