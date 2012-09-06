.class public Lcom/google/googlenav/common/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:Ljava/util/Hashtable;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/util/h;-><init>(I)V

    .line 103
    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, 0x10

    .line 113
    if-lez p1, :cond_f

    .line 114
    const/16 v0, 0x80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 116
    :cond_f
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/common/util/h;->e:I

    .line 118
    iput v1, p0, Lcom/google/googlenav/common/util/h;->d:I

    .line 119
    iput v1, p0, Lcom/google/googlenav/common/util/h;->c:I

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/util/h;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/google/googlenav/common/util/h;->c:I

    return v0
.end method

.method private static a(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    if-ne p0, p1, :cond_5

    .line 362
    :cond_4
    :goto_4
    return v0

    .line 346
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 347
    goto :goto_4

    .line 349
    :cond_b
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 350
    goto :goto_4

    .line 353
    :cond_17
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 354
    :cond_1b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 355
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 356
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 357
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 358
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    move v0, v1

    .line 359
    goto :goto_4
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 314
    array-length v0, p1

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    .line 316
    :goto_8
    if-ge v2, v0, :cond_25

    .line 317
    aget-object v3, p1, v2

    if-nez v3, :cond_12

    aget-object v3, p2, v2

    if-nez v3, :cond_20

    :cond_12
    aget-object v3, p1, v2

    if-eqz v3, :cond_22

    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    move v0, v1

    .line 336
    :goto_21
    return v0

    .line 316
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 323
    :cond_25
    array-length v2, p1

    array-length v3, p2

    if-le v2, v3, :cond_35

    .line 324
    :goto_29
    array-length v2, p1

    if-ge v0, v2, :cond_45

    .line 325
    aget-object v2, p1, v0

    if-eqz v2, :cond_32

    move v0, v1

    .line 326
    goto :goto_21

    .line 324
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 329
    :cond_35
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_45

    .line 330
    :goto_39
    array-length v2, p2

    if-ge v0, v2, :cond_45

    .line 331
    aget-object v2, p2, v0

    if-eqz v2, :cond_42

    move v0, v1

    .line 332
    goto :goto_21

    .line 330
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 336
    :cond_45
    const/4 v0, 0x1

    goto :goto_21
.end method

.method static synthetic b(Lcom/google/googlenav/common/util/h;)[Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/common/util/h;)Ljava/util/Hashtable;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method private c(I)Z
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x80

    const/4 v0, 0x0

    .line 372
    if-ge p1, v2, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-lt p1, v1, :cond_24

    if-lez p1, :cond_24

    .line 373
    iget-object v1, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v1, v1

    .line 375
    :cond_f
    shl-int/lit8 v1, v1, 0x1

    .line 376
    if-le v1, p1, :cond_f

    .line 377
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 378
    new-array v1, v1, [Ljava/lang/Object;

    .line 379
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iput-object v1, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    .line 381
    const/4 v0, 0x1

    .line 383
    :cond_24
    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/util/h;
    .registers 3

    .prologue
    .line 130
    new-instance v0, Lcom/google/googlenav/common/util/h;

    iget v1, p0, Lcom/google/googlenav/common/util/h;->c:I

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/util/h;-><init>(I)V

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 187
    iget v1, p0, Lcom/google/googlenav/common/util/h;->c:I

    if-gt p1, v1, :cond_c

    if-ltz p1, :cond_c

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 194
    :cond_b
    :goto_b
    return-object v0

    .line 189
    :cond_c
    iget v1, p0, Lcom/google/googlenav/common/util/h;->d:I

    if-gt p1, v1, :cond_b

    .line 191
    iget-object v1, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    if-eqz v1, :cond_b

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public a(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 209
    if-nez p2, :cond_6

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/util/h;->b(I)Ljava/lang/Object;

    .line 231
    :goto_5
    return-void

    .line 213
    :cond_6
    iget v0, p0, Lcom/google/googlenav/common/util/h;->d:I

    if-le p1, v0, :cond_c

    .line 214
    iput p1, p0, Lcom/google/googlenav/common/util/h;->d:I

    .line 216
    :cond_c
    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_19

    :cond_13
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/util/h;->c(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 217
    :cond_19
    iget v0, p0, Lcom/google/googlenav/common/util/h;->c:I

    if-le p1, v0, :cond_2a

    .line 218
    iput p1, p0, Lcom/google/googlenav/common/util/h;->c:I

    .line 220
    iget v0, p0, Lcom/google/googlenav/common/util/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/util/h;->e:I

    .line 224
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_5

    .line 221
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_25

    .line 222
    iget v0, p0, Lcom/google/googlenav/common/util/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/util/h;->e:I

    goto :goto_25

    .line 226
    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_42

    .line 227
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    .line 229
    :cond_42
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public b()Lcom/google/googlenav/common/util/i;
    .registers 2

    .prologue
    .line 137
    new-instance v0, Lcom/google/googlenav/common/util/i;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/util/i;-><init>(Lcom/google/googlenav/common/util/h;)V

    return-object v0
.end method

.method public b(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    .line 243
    if-ltz p1, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_19

    .line 244
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 245
    if-eqz v0, :cond_14

    .line 246
    iget v2, p0, Lcom/google/googlenav/common/util/h;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/googlenav/common/util/h;->e:I

    .line 248
    :cond_14
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 252
    :goto_18
    return-object v0

    .line 249
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_28

    .line 250
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_28
    move-object v0, v1

    goto :goto_18
.end method

.method public c()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/google/googlenav/common/util/h;->d:I

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/googlenav/common/util/h;->e:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/googlenav/common/util/h;->e:I

    iget-object v1, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/googlenav/common/util/h;->d()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    if-ne p0, p1, :cond_5

    .line 309
    :cond_4
    :goto_4
    return v0

    .line 302
    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/google/googlenav/common/util/h;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 303
    goto :goto_4

    .line 305
    :cond_d
    check-cast p1, Lcom/google/googlenav/common/util/h;

    .line 306
    invoke-virtual {p0}, Lcom/google/googlenav/common/util/h;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/common/util/h;->d()I

    move-result v3

    if-eq v2, v3, :cond_1b

    move v0, v1

    .line 307
    goto :goto_4

    .line 309
    :cond_1b
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/common/util/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    iget-object v3, p1, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lcom/google/googlenav/common/util/h;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public f()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/high16 v4, -0x8000

    .line 170
    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 171
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 173
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 174
    :cond_1a
    iput v4, p0, Lcom/google/googlenav/common/util/h;->d:I

    .line 175
    iput v4, p0, Lcom/google/googlenav/common/util/h;->c:I

    .line 176
    iput v1, p0, Lcom/google/googlenav/common/util/h;->e:I

    .line 177
    return-void
.end method

.method public g()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v2, v1, 0x4

    .line 410
    iget-object v1, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    if-eqz v1, :cond_21

    .line 411
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 412
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    .line 414
    :goto_1e
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_21
    move v1, v0

    goto :goto_1e
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 276
    const/4 v1, 0x1

    .line 277
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 278
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 279
    if-eqz v2, :cond_15

    .line 280
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 277
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 285
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_1d

    :goto_1c
    return v1

    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "IntMap{lower:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 391
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_27

    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 398
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", higher:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/common/util/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
