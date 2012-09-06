.class public Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source "HCSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 41
    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result p1

    .line 43
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 44
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 45
    iput v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 46
    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 9
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 314
    add-int v1, p1, p2

    .local v1, high:I
    sub-int v2, p1, v4

    .line 316
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    if-le v3, v4, :cond_15

    .line 317
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 319
    .local v0, guess:I
    aget v3, p0, v0

    if-ge v3, p3, :cond_13

    .line 320
    move v2, v0

    goto :goto_5

    .line 322
    :cond_13
    move v1, v0

    goto :goto_5

    .line 325
    .end local v0           #guess:I
    :cond_15
    add-int v3, p1, p2

    if-ne v1, v3, :cond_1e

    .line 326
    add-int v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    .line 330
    :goto_1d
    return v3

    .line 327
    :cond_1e
    aget v3, p0, v1

    if-ne v3, p3, :cond_24

    move v3, v1

    .line 328
    goto :goto_1d

    .line 330
    :cond_24
    xor-int/lit8 v3, v1, -0x1

    goto :goto_1d
.end method

.method private checkIntegrity()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 334
    move v0, v4

    :goto_2
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_51

    .line 335
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    sub-int v3, v0, v4

    aget v2, v2, v3

    if-gt v1, v2, :cond_4e

    .line 336
    const/4 v0, 0x0

    :goto_13
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_48

    .line 337
    const-string v1, "FAIL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 340
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 334
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 343
    :cond_51
    return-void
.end method

.method private gc()V
    .registers 8

    .prologue
    .line 104
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 105
    .local v2, n:I
    const/4 v3, 0x0

    .line 106
    .local v3, o:I
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 107
    .local v1, keys:[I
    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 109
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_1d

    .line 110
    aget-object v4, v5, v0

    .line 112
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1a

    .line 113
    if-eq v0, v3, :cond_18

    .line 114
    aget v6, v1, v0

    aput v6, v1, v3

    .line 115
    aput-object v4, v5, v3

    .line 118
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 109
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 122
    .end local v4           #val:Ljava/lang/Object;
    :cond_1d
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 123
    iput v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 126
    return-void
.end method

.method static idealByteArraySize(I)I
    .registers 5
    .parameter "need"

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 346
    const/4 v0, 0x4

    .local v0, i:I
    :goto_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_14

    .line 347
    shl-int v1, v2, v0

    sub-int/2addr v1, v3

    if-gt p0, v1, :cond_11

    .line 348
    shl-int v1, v2, v0

    sub-int/2addr v1, v3

    .line 350
    :goto_10
    return v1

    .line 346
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    move v1, p0

    .line 350
    goto :goto_10
.end method

.method static idealIntArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 354
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 11
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v7, 0x0

    .line 284
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    if-gt p1, v4, :cond_13

    .line 285
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 311
    :goto_12
    return-void

    .line 289
    :cond_13
    iget-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v4, :cond_21

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_21

    .line 290
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 293
    :cond_21
    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 294
    .local v3, pos:I
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_46

    .line 295
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v0

    .line 297
    .local v0, n:I
    new-array v1, v0, [I

    .line 298
    .local v1, nkeys:[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 301
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 305
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 308
    .end local v0           #n:I
    .end local v1           #nkeys:[I
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_46
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v4, v3

    .line 309
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 310
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto :goto_12
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 268
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 269
    .local v1, n:I
    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 271
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 272
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 275
    :cond_e
    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 276
    iput-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 277
    return-void
.end method

.method public delete(I)V
    .registers 6
    .parameter "key"

    .prologue
    .line 74
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 76
    .local v0, i:I
    if-ltz v0, :cond_1c

    .line 77
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 78
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 82
    :cond_1c
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 63
    .local v0, i:I
    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_15

    :cond_13
    move-object v1, p2

    .line 66
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_14
.end method

.method public indexOfKey(I)I
    .registers 5
    .parameter "key"

    .prologue
    .line 237
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 238
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 241
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    .line 254
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 257
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_17

    .line 258
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_14

    move v1, v0

    .line 261
    :goto_13
    return v1

    .line 257
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 261
    :cond_17
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public keyAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 198
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 199
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 202
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 11
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 134
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 136
    .local v0, i:I
    if-ltz v0, :cond_10

    .line 137
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 178
    :goto_f
    return-void

    .line 139
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 141
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v4, :cond_27

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_27

    .line 142
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 143
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_f

    .line 147
    :cond_27
    iget-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3f

    .line 148
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 151
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 154
    :cond_3f
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_66

    .line 155
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    .line 157
    .local v1, n:I
    new-array v2, v1, [I

    .line 158
    .local v2, nkeys:[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 161
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 165
    iput-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 168
    .end local v1           #n:I
    .end local v2           #nkeys:[I
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_66
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_83

    .line 170
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_83
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 175
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 176
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(I)V
    .registers 2
    .parameter "key"

    .prologue
    .line 88
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->delete(I)V

    .line 89
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 95
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 96
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 99
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 225
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 228
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 229
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 185
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 186
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 189
    :cond_7
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 212
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 215
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
