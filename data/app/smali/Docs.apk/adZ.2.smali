.class public LadZ;
.super Ljava/util/AbstractMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field a:I

.field private a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 396
    return-void
.end method

.method public static a()LadZ;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "LadZ",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, LadZ;

    invoke-direct {v0}, LadZ;-><init>()V

    return-object v0
.end method

.method private a(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, LadZ;->a:[Ljava/lang/Object;

    .line 265
    aput-object p2, v0, p1

    .line 266
    add-int/lit8 v1, p1, 0x1

    aput-object p3, v0, v1

    .line 267
    return-void
.end method

.method private b(Ljava/lang/Object;)I
    .registers 6
    .parameter

    .prologue
    .line 282
    iget v0, p0, LadZ;->a:I

    shl-int/lit8 v1, v0, 0x1

    .line 283
    iget-object v2, p0, LadZ;->a:[Ljava/lang/Object;

    .line 284
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_19

    .line 285
    aget-object v3, v2, v0

    .line 286
    if-nez p1, :cond_10

    if-nez v3, :cond_16

    .line 290
    :cond_f
    :goto_f
    return v0

    .line 286
    :cond_10
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 284
    :cond_16
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 290
    :cond_19
    const/4 v0, -0x2

    goto :goto_f
.end method

.method private b(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 249
    if-nez p1, :cond_7

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, LadZ;->a:[Ljava/lang/Object;

    .line 261
    :cond_6
    :goto_6
    return-void

    .line 253
    :cond_7
    iget v0, p0, LadZ;->a:I

    .line 254
    iget-object v1, p0, LadZ;->a:[Ljava/lang/Object;

    .line 255
    if-eqz v0, :cond_10

    array-length v2, v1

    if-eq p1, v2, :cond_6

    .line 256
    :cond_10
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, LadZ;->a:[Ljava/lang/Object;

    .line 257
    if-eqz v0, :cond_6

    .line 258
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method private d(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 270
    if-gez p1, :cond_4

    .line 271
    const/4 v0, 0x0

    .line 275
    :goto_3
    return-object v0

    .line 274
    :cond_4
    iget-object v0, p0, LadZ;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_3
.end method

.method private e(I)Ljava/lang/Object;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 298
    iget v0, p0, LadZ;->a:I

    shl-int/lit8 v2, v0, 0x1

    .line 299
    if-ltz p1, :cond_9

    if-lt p1, v2, :cond_b

    :cond_9
    move-object v0, v1

    .line 310
    :goto_a
    return-object v0

    .line 302
    :cond_b
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LadZ;->d(I)Ljava/lang/Object;

    move-result-object v0

    .line 303
    iget-object v3, p0, LadZ;->a:[Ljava/lang/Object;

    .line 304
    sub-int v4, v2, p1

    add-int/lit8 v4, v4, -0x2

    .line 305
    if-eqz v4, :cond_1e

    .line 306
    add-int/lit8 v5, p1, 0x2

    invoke-static {v3, v5, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    :cond_1e
    iget v3, p0, LadZ;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, LadZ;->a:I

    .line 309
    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v2, v1, v1}, LadZ;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1}, LadZ;->b(Ljava/lang/Object;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 103
    if-ltz p1, :cond_6

    iget v0, p0, LadZ;->a:I

    if-lt p1, v0, :cond_8

    .line 104
    :cond_6
    const/4 v0, 0x0

    .line 108
    :goto_7
    return-object v0

    .line 107
    :cond_8
    iget-object v0, p0, LadZ;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 151
    iget v0, p0, LadZ;->a:I

    .line 152
    if-ltz p1, :cond_6

    if-lt p1, v0, :cond_c

    .line 153
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 155
    :cond_c
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 156
    invoke-direct {p0, v0}, LadZ;->d(I)Ljava/lang/Object;

    move-result-object v1

    .line 157
    iget-object v2, p0, LadZ;->a:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 158
    return-object v1
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 130
    if-gez p1, :cond_8

    .line 131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 133
    :cond_8
    add-int/lit8 v0, p1, 0x1

    .line 134
    invoke-virtual {p0, v0}, LadZ;->a(I)V

    .line 135
    shl-int/lit8 v1, p1, 0x1

    .line 136
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, LadZ;->d(I)Ljava/lang/Object;

    move-result-object v2

    .line 137
    invoke-direct {p0, v1, p2, p3}, LadZ;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    iget v1, p0, LadZ;->a:I

    if-le v0, v1, :cond_1e

    .line 139
    iput v0, p0, LadZ;->a:I

    .line 141
    :cond_1e
    return-object v2
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 233
    iget-object v1, p0, LadZ;->a:[Ljava/lang/Object;

    .line 234
    shl-int/lit8 v0, p1, 0x1

    .line 235
    if-nez v1, :cond_1c

    const/4 v1, 0x0

    .line 236
    :goto_7
    if-le v0, v1, :cond_1b

    .line 237
    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 238
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 241
    :cond_16
    if-ge v1, v0, :cond_1e

    .line 244
    :goto_18
    invoke-direct {p0, v0}, LadZ;->b(I)V

    .line 246
    :cond_1b
    return-void

    .line 235
    :cond_1c
    array-length v1, v1

    goto :goto_7

    :cond_1e
    move v0, v1

    goto :goto_18
.end method

.method public b()LadZ;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LadZ",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LadZ;

    .line 342
    iget-object v1, p0, LadZ;->a:[Ljava/lang/Object;

    .line 343
    if-eqz v1, :cond_14

    .line 344
    array-length v2, v1

    .line 345
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v0, LadZ;->a:[Ljava/lang/Object;

    .line 346
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_14} :catch_15

    .line 351
    :cond_14
    :goto_14
    return-object v0

    .line 349
    :catch_15
    move-exception v0

    .line 351
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 113
    if-ltz p1, :cond_6

    iget v0, p0, LadZ;->a:I

    if-lt p1, v0, :cond_8

    .line 114
    :cond_6
    const/4 v0, 0x0

    .line 116
    :goto_7
    return-object v0

    :cond_8
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, LadZ;->d(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final c(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 177
    shl-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LadZ;->e(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x0

    iput v0, p0, LadZ;->a:I

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, LadZ;->a:[Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, LadZ;->b()LadZ;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 183
    const/4 v0, -0x2

    invoke-direct {p0, p1}, LadZ;->b(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 321
    iget v1, p0, LadZ;->a:I

    shl-int/lit8 v2, v1, 0x1

    .line 322
    iget-object v3, p0, LadZ;->a:[Ljava/lang/Object;

    move v1, v0

    .line 323
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 324
    aget-object v4, v3, v1

    .line 325
    if-nez p1, :cond_11

    if-nez v4, :cond_17

    .line 329
    :cond_10
    :goto_10
    return v0

    .line 325
    :cond_11
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 323
    :cond_17
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 329
    :cond_1a
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Laec;

    invoke-direct {v0, p0}, Laec;-><init>(LadZ;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1}, LadZ;->b(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, LadZ;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0, p1}, LadZ;->a(Ljava/lang/Object;)I

    move-result v0

    .line 208
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 209
    iget v0, p0, LadZ;->a:I

    .line 211
    :cond_9
    invoke-virtual {p0, v0, p1, p2}, LadZ;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1}, LadZ;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, LadZ;->e(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, LadZ;->a:I

    return v0
.end method
