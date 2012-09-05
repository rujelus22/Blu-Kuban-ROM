.class Landroid/support/v4/app/HCSparseArray;
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
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 40
    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result p1

    .line 42
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 43
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 44
    iput v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 45
    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 9
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 313
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 315
    .local v2, low:I
    :goto_4
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_15

    .line 316
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 318
    .local v0, guess:I
    aget v3, p0, v0

    if-ge v3, p3, :cond_13

    .line 319
    move v2, v0

    goto :goto_4

    .line 321
    :cond_13
    move v1, v0

    goto :goto_4

    .line 324
    .end local v0           #guess:I
    :cond_15
    add-int v3, p1, p2

    if-ne v1, v3, :cond_1e

    .line 325
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 329
    .end local v1           #high:I
    :cond_1d
    :goto_1d
    return v1

    .line 326
    .restart local v1       #high:I
    :cond_1e
    aget v3, p0, v1

    if-eq v3, p3, :cond_1d

    .line 329
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1d
.end method

.method private gc()V
    .registers 8

    .prologue
    .line 103
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 104
    .local v2, n:I
    const/4 v3, 0x0

    .line 105
    .local v3, o:I
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 106
    .local v1, keys:[I
    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 108
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_1d

    .line 109
    aget-object v4, v5, v0

    .line 111
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1a

    .line 112
    if-eq v0, v3, :cond_18

    .line 113
    aget v6, v1, v0

    aput v6, v1, v3

    .line 114
    aput-object v4, v5, v3

    .line 117
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 108
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 121
    .end local v4           #val:Ljava/lang/Object;
    :cond_1d
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 122
    iput v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 125
    return-void
.end method

.method static idealByteArraySize(I)I
    .registers 4
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 333
    const/4 v0, 0x4

    .local v0, i:I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 334
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 335
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 337
    .end local p0
    :cond_10
    return p0

    .line 333
    .restart local p0
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static idealIntArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 341
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 6

    .prologue
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 267
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 268
    .local v1, n:I
    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 270
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 271
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 274
    :cond_e
    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    .line 275
    iput-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 276
    return-void
.end method

.method public delete(I)V
    .registers 6
    .parameter "key"

    .prologue
    .line 73
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 75
    .local v0, i:I
    if-ltz v0, :cond_1c

    .line 76
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 77
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 81
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
    .line 52
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
    .line 60
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 62
    .local v0, i:I
    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    .line 65
    .end local p2           #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_13
    :goto_13
    return-object p2

    .restart local p2       #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_14
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_13
.end method

.method public keyAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 197
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 198
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 201
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

    .line 133
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 135
    .local v0, i:I
    if-ltz v0, :cond_10

    .line 136
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 177
    :goto_f
    return-void

    .line 138
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 140
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v4, :cond_27

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_27

    .line 141
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 142
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_f

    .line 146
    :cond_27
    iget-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3f

    .line 147
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 150
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 153
    :cond_3f
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_66

    .line 154
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    .line 156
    .local v1, n:I
    new-array v2, v1, [I

    .line 157
    .local v2, nkeys:[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 160
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    .line 164
    iput-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 167
    .end local v1           #n:I
    .end local v2           #nkeys:[I
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_66
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_83

    .line 169
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_83
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 174
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 175
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(I)V
    .registers 2
    .parameter "key"

    .prologue
    .line 87
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->delete(I)V

    .line 88
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 94
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 98
    :cond_11
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 184
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 185
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 188
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
    .line 210
    .local p0, this:Landroid/support/v4/app/HCSparseArray;,"Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 211
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    .line 214
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
