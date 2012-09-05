.class public final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    }
.end annotation


# instance fields
.field private _collCount:I

.field private _collEnd:I

.field private _collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field private _count:I

.field final _intern:Z

.field private _mainHash:[I

.field private _mainHashMask:I

.field private _mainHashShared:Z

.field private _mainNames:[Lorg/codehaus/jackson/sym/Name;

.field private _mainNamesShared:Z

.field private transient _needRehash:Z

.field final _parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;


# direct methods
.method private constructor <init>(IZ)V
    .registers 5
    .parameter "hashSize"
    .parameter "intern"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 190
    iput-boolean p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 194
    const/16 v1, 0x10

    if-ge p1, v1, :cond_12

    .line 195
    const/16 p1, 0x10

    .line 208
    :cond_e
    :goto_e
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V

    .line 209
    return-void

    .line 200
    :cond_12
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_e

    .line 201
    const/16 v0, 0x10

    .line 202
    .local v0, curr:I
    :goto_19
    if-ge v0, p1, :cond_1d

    .line 203
    add-int/2addr v0, v0

    goto :goto_19

    .line 205
    :cond_1d
    move p1, v0

    goto :goto_e
.end method

.method private constructor <init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    .registers 5
    .parameter "parent"
    .parameter "intern"

    .prologue
    const/4 v1, 0x1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 217
    iput-boolean p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 220
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 221
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 222
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 223
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 224
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 225
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 226
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 229
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 230
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 231
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 232
    return-void
.end method

.method private _addSymbol(ILorg/codehaus/jackson/sym/Name;)V
    .registers 12
    .parameter "hash"
    .parameter "symbol"

    .prologue
    const/4 v8, 0x1

    .line 597
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-eqz v5, :cond_8

    .line 598
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareMain()V

    .line 601
    :cond_8
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v5, :cond_f

    .line 602
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->rehash()V

    .line 605
    :cond_f
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 610
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v4, p1, v5

    .line 611
    .local v4, ix:I
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v5, v5, v4

    if-nez v5, :cond_44

    .line 612
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v6, p1, 0x8

    aput v6, v5, v4

    .line 613
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    if-eqz v5, :cond_2c

    .line 614
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareNames()V

    .line 616
    :cond_2c
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aput-object p2, v5, v4

    .line 653
    :goto_30
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v3, v5

    .line 654
    .local v3, hashSize:I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_43

    .line 655
    shr-int/lit8 v2, v3, 0x2

    .line 659
    .local v2, hashQuarter:I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    sub-int v6, v3, v2

    if-le v5, v6, :cond_8e

    .line 660
    iput-boolean v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 666
    .end local v2           #hashQuarter:I
    :cond_43
    :goto_43
    return-void

    .line 621
    .end local v3           #hashSize:I
    :cond_44
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v5, :cond_4b

    .line 622
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareCollision()V

    .line 625
    :cond_4b
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 626
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v1, v5, v4

    .line 627
    .local v1, entryValue:I
    and-int/lit16 v0, v1, 0xff

    .line 628
    .local v0, bucket:I
    if-nez v0, :cond_8b

    .line 629
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v6, 0xfe

    if-gt v5, v6, :cond_86

    .line 630
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 631
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 633
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    array-length v5, v5

    if-lt v0, v5, :cond_6f

    .line 634
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 640
    :cond_6f
    :goto_6f
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v6, v1, -0x100

    add-int/lit8 v7, v0, 0x1

    or-int/2addr v6, v7

    aput v6, v5, v4

    .line 646
    :goto_78
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    new-instance v6, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v7, v7, v0

    invoke-direct {v6, p2, v7}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v6, v5, v0

    goto :goto_30

    .line 637
    :cond_86
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_6f

    .line 642
    :cond_8b
    add-int/lit8 v0, v0, -0x1

    goto :goto_78

    .line 661
    .end local v0           #bucket:I
    .end local v1           #entryValue:I
    .restart local v2       #hashQuarter:I
    .restart local v3       #hashSize:I
    :cond_8e
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v5, v2, :cond_43

    .line 662
    iput-boolean v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto :goto_43
.end method

.method public static final calcHash(I)I
    .registers 3
    .parameter "firstQuad"

    .prologue
    .line 487
    move v0, p0

    .line 488
    .local v0, hash:I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 489
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 490
    return v0
.end method

.method public static final calcHash(II)I
    .registers 4
    .parameter "firstQuad"
    .parameter "secondQuad"

    .prologue
    .line 495
    mul-int/lit8 v1, p0, 0x1f

    add-int v0, v1, p1

    .line 500
    .local v0, hash:I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 501
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 502
    return v0
.end method

.method public static final calcHash([II)I
    .registers 6
    .parameter "quads"
    .parameter "qlen"

    .prologue
    .line 508
    const/4 v2, 0x0

    aget v0, p0, v2

    .line 509
    .local v0, hash:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_4
    if-ge v1, p1, :cond_f

    .line 510
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    add-int v0, v2, v3

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 513
    :cond_f
    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v0, v2

    .line 514
    ushr-int/lit8 v2, v0, 0x8

    xor-int/2addr v0, v2

    .line 516
    return v0
.end method

.method private static constructName(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
    .registers 12
    .parameter "hash"
    .parameter "name"
    .parameter "quads"
    .parameter "qlen"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 840
    const/4 v0, 0x4

    if-ge p3, v0, :cond_8

    .line 841
    packed-switch p3, :pswitch_data_3c

    .line 852
    :cond_8
    new-array v6, p3, [I

    .line 853
    .local v6, buf:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_b
    if-ge v7, p3, :cond_35

    .line 854
    aget v0, p2, v7

    aput v0, v6, v7

    .line 853
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 843
    .end local v6           #buf:[I
    .end local v7           #i:I
    :pswitch_14
    new-instance v0, Lorg/codehaus/jackson/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 856
    :goto_1b
    return-object v0

    .line 845
    :pswitch_1c
    new-instance v0, Lorg/codehaus/jackson/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lorg/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_1b

    .line 847
    :pswitch_26
    new-instance v0, Lorg/codehaus/jackson/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1b

    .line 856
    .restart local v6       #buf:[I
    .restart local v7       #i:I
    :cond_35
    new-instance v0, Lorg/codehaus/jackson/sym/NameN;

    invoke-direct {v0, p1, p0, v6, p3}, Lorg/codehaus/jackson/sym/NameN;-><init>(Ljava/lang/String;I[II)V

    goto :goto_1b

    .line 841
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method

.method public static createRoot()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(IZ)V

    return-object v0
.end method

.method private expandCollision()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 815
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 816
    .local v1, old:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v1

    .line 817
    .local v0, len:I
    add-int v2, v0, v0

    new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 818
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    return-void
.end method

.method private findBestBucket()I
    .registers 8

    .prologue
    .line 758
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 759
    .local v2, buckets:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    const v0, 0x7fffffff

    .line 760
    .local v0, bestCount:I
    const/4 v1, -0x1

    .line 762
    .local v1, bestIx:I
    const/4 v4, 0x0

    .local v4, i:I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .local v5, len:I
    :goto_9
    if-ge v4, v5, :cond_1c

    .line 763
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v3

    .line 764
    .local v3, count:I
    if-ge v3, v0, :cond_19

    .line 765
    const/4 v6, 0x1

    if-ne v3, v6, :cond_17

    .line 772
    .end local v3           #count:I
    .end local v4           #i:I
    :goto_16
    return v4

    .line 768
    .restart local v3       #count:I
    .restart local v4       #i:I
    :cond_17
    move v0, v3

    .line 769
    move v1, v4

    .line 762
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .end local v3           #count:I
    :cond_1c
    move v4, v1

    .line 772
    goto :goto_16
.end method

.method public static getEmptyName()Lorg/codehaus/jackson/sym/Name;
    .registers 1

    .prologue
    .line 311
    invoke-static {}, Lorg/codehaus/jackson/sym/Name1;->getEmptyName()Lorg/codehaus/jackson/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .registers 4
    .parameter "hashSize"

    .prologue
    const/4 v1, 0x0

    .line 236
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 237
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 238
    new-array v0, p1, [Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 239
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 240
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 241
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 245
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 247
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 248
    return-void
.end method

.method private markAsShared()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 287
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 288
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 289
    return-void
.end method

.method private declared-synchronized mergeChild(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 254
    .local v0, childCount:I
    iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    if-gt v0, v1, :cond_9

    .line 282
    :goto_7
    monitor-exit p0

    return-void

    .line 264
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->size()I

    move-result v1

    const/16 v2, 0x1770

    if-le v1, v2, :cond_1a

    .line 270
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 253
    .end local v0           #childCount:I
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 272
    .restart local v0       #childCount:I
    :cond_1a
    :try_start_1a
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 273
    iget-object v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 274
    iget-object v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 275
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 277
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 278
    iget-object v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 279
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 280
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_17

    goto :goto_7
.end method

.method private rehash()V
    .registers 18

    .prologue
    .line 670
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 672
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 678
    const/4 v12, 0x0

    .line 679
    .local v12, symbolsSeen:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 680
    .local v9, oldMainHash:[I
    array-length v6, v9

    .line 681
    .local v6, len:I
    add-int v14, v6, v6

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 682
    add-int v14, v6, v6

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 683
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 684
    .local v10, oldNames:[Lorg/codehaus/jackson/sym/Name;
    add-int v14, v6, v6

    new-array v14, v14, [Lorg/codehaus/jackson/sym/Name;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 685
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2d
    if-ge v4, v6, :cond_50

    .line 686
    aget-object v11, v10, v4

    .line 687
    .local v11, symbol:Lorg/codehaus/jackson/sym/Name;
    if-eqz v11, :cond_4d

    .line 688
    add-int/lit8 v12, v12, 0x1

    .line 689
    invoke-virtual {v11}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v3

    .line 690
    .local v3, hash:I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v5, v3, v14

    .line 691
    .local v5, ix:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aput-object v11, v14, v5

    .line 692
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v15, v3, 0x8

    aput v15, v14, v5

    .line 685
    .end local v3           #hash:I
    .end local v5           #ix:I
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 700
    .end local v11           #symbol:Lorg/codehaus/jackson/sym/Name;
    :cond_50
    move-object/from16 v0, p0

    iget v8, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 701
    .local v8, oldEnd:I
    if-nez v8, :cond_57

    .line 749
    :cond_56
    return-void

    .line 705
    :cond_57
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 706
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 707
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 709
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 710
    .local v7, oldBuckets:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    array-length v14, v7

    new-array v14, v14, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 711
    const/4 v4, 0x0

    :goto_72
    if-ge v4, v8, :cond_101

    .line 712
    aget-object v2, v7, v4

    .local v2, curr:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_76
    if-eqz v2, :cond_fd

    .line 713
    add-int/lit8 v12, v12, 0x1

    .line 714
    iget-object v11, v2, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 715
    .restart local v11       #symbol:Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v11}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v3

    .line 716
    .restart local v3       #hash:I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v5, v3, v14

    .line 717
    .restart local v5       #ix:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v13, v14, v5

    .line 718
    .local v13, val:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v14, v14, v5

    if-nez v14, :cond_a5

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v15, v3, 0x8

    aput v15, v14, v5

    .line 720
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aput-object v11, v14, v5

    .line 712
    :goto_a2
    iget-object v2, v2, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_76

    .line 722
    :cond_a5
    move-object/from16 v0, p0

    iget v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 723
    and-int/lit16 v1, v13, 0xff

    .line 724
    .local v1, bucket:I
    if-nez v1, :cond_fa

    .line 725
    move-object/from16 v0, p0

    iget v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v15, 0xfe

    if-gt v14, v15, :cond_f5

    .line 726
    move-object/from16 v0, p0

    iget v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 727
    move-object/from16 v0, p0

    iget v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 729
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    array-length v14, v14

    if-lt v1, v14, :cond_d3

    .line 730
    invoke-direct/range {p0 .. p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 736
    :cond_d3
    :goto_d3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v15, v13, -0x100

    add-int/lit8 v16, v1, 0x1

    or-int v15, v15, v16

    aput v15, v14, v5

    .line 741
    :goto_df
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    new-instance v15, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v16, v0

    aget-object v16, v16, v1

    move-object/from16 v0, v16

    invoke-direct {v15, v11, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v15, v14, v1

    goto :goto_a2

    .line 733
    :cond_f5
    invoke-direct/range {p0 .. p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v1

    goto :goto_d3

    .line 738
    :cond_fa
    add-int/lit8 v1, v1, -0x1

    goto :goto_df

    .line 711
    .end local v1           #bucket:I
    .end local v3           #hash:I
    .end local v5           #ix:I
    .end local v11           #symbol:Lorg/codehaus/jackson/sym/Name;
    .end local v13           #val:I
    :cond_fd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_72

    .line 746
    .end local v2           #curr:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_101
    move-object/from16 v0, p0

    iget v14, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    if-eq v12, v14, :cond_56

    .line 747
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Internal error: count after rehash "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; should be "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private unshareCollision()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 793
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 794
    .local v1, old:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-nez v1, :cond_e

    .line 795
    const/16 v2, 0x20

    new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 801
    :goto_b
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 802
    return-void

    .line 797
    :cond_e
    array-length v0, v1

    .line 798
    .local v0, len:I
    new-array v2, v0, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 799
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b
.end method

.method private unshareMain()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 783
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 784
    .local v1, old:[I
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v0, v2

    .line 786
    .local v0, len:I
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 787
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 789
    return-void
.end method

.method private unshareNames()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 806
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 807
    .local v1, old:[Lorg/codehaus/jackson/sym/Name;
    array-length v0, v1

    .line 808
    .local v0, len:I
    new-array v2, v0, [Lorg/codehaus/jackson/sym/Name;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 809
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 811
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
    .registers 7
    .parameter "symbolStr"
    .parameter "quads"
    .parameter "qlen"

    .prologue
    .line 470
    iget-boolean v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_a

    .line 471
    sget-object v2, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 473
    :cond_a
    invoke-static {p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v0

    .line 474
    .local v0, hash:I
    invoke-static {v0, p1, p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 475
    .local v1, symbol:Lorg/codehaus/jackson/sym/Name;
    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_addSymbol(ILorg/codehaus/jackson/sym/Name;)V

    .line 476
    return-object v1
.end method

.method public findName(I)Lorg/codehaus/jackson/sym/Name;
    .registers 9
    .parameter "firstQuad"

    .prologue
    const/4 v5, 0x0

    .line 331
    invoke-static {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 332
    .local v1, hash:I
    iget v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 333
    .local v2, ix:I
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 338
    .local v4, val:I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_34

    .line 340
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 341
    .local v3, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v3, :cond_1c

    move-object v3, v5

    .line 360
    .end local v3           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_1b
    :goto_1b
    return-object v3

    .line 344
    .restart local v3       #name:Lorg/codehaus/jackson/sym/Name;
    :cond_1c
    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/sym/Name;->equals(I)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 351
    .end local v3           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_22
    and-int/lit16 v4, v4, 0xff

    .line 352
    if-lez v4, :cond_38

    .line 353
    add-int/lit8 v4, v4, -0x1

    .line 354
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 355
    .local v0, bucket:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_38

    .line 356
    const/4 v5, 0x0

    invoke-virtual {v0, v1, p1, v5}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_1b

    .line 347
    .end local v0           #bucket:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_34
    if-nez v4, :cond_22

    move-object v3, v5

    .line 348
    goto :goto_1b

    :cond_38
    move-object v3, v5

    .line 360
    goto :goto_1b
.end method

.method public findName(II)Lorg/codehaus/jackson/sym/Name;
    .registers 10
    .parameter "firstQuad"
    .parameter "secondQuad"

    .prologue
    const/4 v5, 0x0

    .line 381
    invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v1

    .line 382
    .local v1, hash:I
    iget v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 383
    .local v2, ix:I
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 388
    .local v4, val:I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_33

    .line 390
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 391
    .local v3, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v3, :cond_1c

    move-object v3, v5

    .line 410
    .end local v3           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_1b
    :goto_1b
    return-object v3

    .line 394
    .restart local v3       #name:Lorg/codehaus/jackson/sym/Name;
    :cond_1c
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 401
    .end local v3           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_22
    and-int/lit16 v4, v4, 0xff

    .line 402
    if-lez v4, :cond_37

    .line 403
    add-int/lit8 v4, v4, -0x1

    .line 404
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 405
    .local v0, bucket:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_37

    .line 406
    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_1b

    .line 397
    .end local v0           #bucket:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_33
    if-nez v4, :cond_22

    move-object v3, v5

    .line 398
    goto :goto_1b

    :cond_37
    move-object v3, v5

    .line 410
    goto :goto_1b
.end method

.method public findName([II)Lorg/codehaus/jackson/sym/Name;
    .registers 10
    .parameter "quads"
    .parameter "qlen"

    .prologue
    const/4 v5, 0x0

    .line 438
    invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v1

    .line 440
    .local v1, hash:I
    iget v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 441
    .local v2, ix:I
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 442
    .local v4, val:I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_21

    .line 443
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 444
    .local v3, name:Lorg/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_20

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 459
    .end local v3           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_20
    :goto_20
    return-object v3

    .line 448
    :cond_21
    if-nez v4, :cond_25

    move-object v3, v5

    .line 449
    goto :goto_20

    .line 451
    :cond_25
    and-int/lit16 v4, v4, 0xff

    .line 452
    if-lez v4, :cond_36

    .line 453
    add-int/lit8 v4, v4, -0x1

    .line 454
    iget-object v6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 455
    .local v0, bucket:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_36

    .line 456
    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_20

    .end local v0           #bucket:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_36
    move-object v3, v5

    .line 459
    goto :goto_20
.end method

.method public declared-synchronized makeChild(Z)Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .registers 3
    .parameter "intern"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maybeDirty()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public release()V
    .registers 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_12

    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->mergeChild(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V

    .line 183
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->markAsShared()V

    .line 185
    :cond_12
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v7, "[NameCanonicalizer, size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    iget-object v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    const-string v7, " coll; avg length: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget v4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 568
    .local v4, pathCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    iget v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    if-ge v2, v7, :cond_42

    .line 569
    iget-object v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v6

    .line 570
    .local v6, spillLen:I
    const/4 v3, 0x1

    .local v3, j:I
    :goto_39
    if-gt v3, v6, :cond_3f

    .line 571
    add-int/2addr v4, v3

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 568
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 576
    .end local v3           #j:I
    .end local v6           #spillLen:I
    :cond_42
    iget v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    if-nez v7, :cond_55

    .line 577
    const-wide/16 v0, 0x0

    .line 584
    .local v0, avgLength:D
    :goto_48
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 585
    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 579
    .end local v0           #avgLength:D
    :cond_55
    int-to-double v7, v4

    iget v9, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    int-to-double v9, v9

    div-double v0, v7, v9

    .restart local v0       #avgLength:D
    goto :goto_48
.end method
