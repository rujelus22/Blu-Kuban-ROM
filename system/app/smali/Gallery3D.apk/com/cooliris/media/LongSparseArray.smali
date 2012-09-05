.class public final Lcom/cooliris/media/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/LongSparseArray$ArrayUtils;
    }
.end annotation

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

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cooliris/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/cooliris/media/LongSparseArray;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    .line 50
    invoke-static {p1}, Lcom/cooliris/media/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 52
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    .line 53
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 54
    iput v1, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    .line 55
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .registers 10
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 325
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 327
    .local v2, low:I
    :goto_4
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_17

    .line 328
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 330
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_15

    .line 331
    move v2, v0

    goto :goto_4

    .line 333
    :cond_15
    move v1, v0

    goto :goto_4

    .line 336
    .end local v0           #guess:I
    :cond_17
    add-int v3, p1, p2

    if-ne v1, v3, :cond_20

    .line 337
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 341
    .end local v1           #high:I
    :cond_1f
    :goto_1f
    return v1

    .line 338
    .restart local v1       #high:I
    :cond_20
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_1f

    .line 341
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1f
.end method

.method private gc()V
    .registers 9

    .prologue
    .line 108
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    iget v2, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    .line 109
    .local v2, n:I
    const/4 v3, 0x0

    .line 110
    .local v3, o:I
    iget-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    .line 111
    .local v1, keys:[J
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 113
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_21

    .line 114
    aget-object v4, v5, v0

    .line 116
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Lcom/cooliris/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 117
    if-eq v0, v3, :cond_1c

    .line 118
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 119
    aput-object v4, v5, v3

    .line 122
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 113
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 126
    .end local v4           #val:Ljava/lang/Object;
    :cond_21
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    .line 127
    iput v3, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    .line 130
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 11
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 295
    iget v4, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_15

    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 322
    :goto_14
    return-void

    .line 300
    :cond_15
    iget-boolean v4, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_23

    iget v4, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_23

    .line 301
    invoke-direct {p0}, Lcom/cooliris/media/LongSparseArray;->gc()V

    .line 304
    :cond_23
    iget v3, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    .line 305
    .local v3, pos:I
    iget-object v4, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_48

    .line 306
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/cooliris/media/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 308
    .local v0, n:I
    new-array v1, v0, [J

    .line 309
    .local v1, nkeys:[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 312
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    iget-object v4, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iput-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    .line 316
    iput-object v2, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 319
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_48
    iget-object v4, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 320
    iget-object v4, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 321
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    goto :goto_14
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 279
    iget v1, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    .line 280
    .local v1, n:I
    iget-object v2, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 282
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 283
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 286
    :cond_e
    iput v4, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    .line 287
    iput-boolean v4, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    .line 288
    return-void
.end method

.method public delete(J)V
    .registers 7
    .parameter "key"

    .prologue
    .line 88
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    iget-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/cooliris/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 90
    .local v0, i:I
    if-ltz v0, :cond_20

    .line 91
    iget-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/cooliris/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 92
    iget-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/cooliris/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    .line 96
    :cond_20
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cooliris/media/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    .local p3, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/cooliris/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 73
    .local v0, i:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/cooliris/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 76
    .end local p3           #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_17
    :goto_17
    return-object p3

    .restart local p3       #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_18
    iget-object v1, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_17
.end method

.method public keyAt(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 211
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 212
    invoke-direct {p0}, Lcom/cooliris/media/LongSparseArray;->gc()V

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 13
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    :try_start_0
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    const/4 v6, 0x0

    iget v7, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    invoke-static {v5, v6, v7, p1, p2}, Lcom/cooliris/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v1

    .line 140
    .local v1, i:I
    if-ltz v1, :cond_10

    .line 141
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v5, v1

    .line 187
    .end local v1           #i:I
    :goto_f
    return-void

    .line 143
    .restart local v1       #i:I
    :cond_10
    xor-int/lit8 v1, v1, -0x1

    .line 145
    iget v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    if-ge v1, v5, :cond_30

    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    sget-object v6, Lcom/cooliris/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 146
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    aput-wide p1, v5, v1

    .line 147
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v5, v1
    :try_end_2a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_a1

    goto :goto_f

    .line 182
    .end local v1           #i:I
    :catch_2b
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_f

    .line 151
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1       #i:I
    :cond_30
    :try_start_30
    iget-boolean v5, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    if-eqz v5, :cond_49

    iget v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    iget-object v6, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    array-length v6, v6

    if-lt v5, v6, :cond_49

    .line 152
    invoke-direct {p0}, Lcom/cooliris/media/LongSparseArray;->gc()V

    .line 155
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    const/4 v6, 0x0

    iget v7, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    invoke-static {v5, v6, v7, p1, p2}, Lcom/cooliris/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v5

    xor-int/lit8 v1, v5, -0x1

    .line 158
    :cond_49
    iget v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    iget-object v6, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    array-length v6, v6

    if-lt v5, v6, :cond_74

    .line 159
    iget v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/cooliris/media/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    .line 161
    .local v2, n:I
    new-array v3, v2, [J

    .line 162
    .local v3, nkeys:[J
    new-array v4, v2, [Ljava/lang/Object;

    .line 165
    .local v4, nvalues:[Ljava/lang/Object;
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    array-length v8, v8

    invoke-static {v5, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v8, v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v3, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    .line 169
    iput-object v4, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 172
    .end local v2           #n:I
    .end local v3           #nkeys:[J
    .end local v4           #nvalues:[Ljava/lang/Object;
    :cond_74
    iget v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    sub-int/2addr v5, v1

    if-eqz v5, :cond_91

    .line 174
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    iget-object v6, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    :cond_91
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mKeys:[J

    aput-wide p1, v5, v1

    .line 179
    iget-object v5, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v5, v1

    .line 180
    iget v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I
    :try_end_9f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_30 .. :try_end_9f} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_9f} :catch_a1

    goto/16 :goto_f

    .line 184
    .end local v1           #i:I
    :catch_a1
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f
.end method

.method public remove(J)V
    .registers 3
    .parameter "key"

    .prologue
    .line 102
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/cooliris/media/LongSparseArray;->delete(J)V

    .line 103
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 194
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 195
    invoke-direct {p0}, Lcom/cooliris/media/LongSparseArray;->gc()V

    .line 198
    :cond_7
    iget v0, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

    return v0
.end method

.method public sizeOnly()I
    .registers 2

    .prologue
    .line 202
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    iget v0, p0, Lcom/cooliris/media/LongSparseArray;->mSize:I

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
    .line 225
    .local p0, this:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/cooliris/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 226
    invoke-direct {p0}, Lcom/cooliris/media/LongSparseArray;->gc()V

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/cooliris/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
