.class public final Lcom/google/protobuf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/d;->h:I

    .line 500
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/d;->j:I

    .line 503
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/protobuf/d;->k:I

    .line 518
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/d;->a:[B

    .line 519
    iput v1, p0, Lcom/google/protobuf/d;->b:I

    .line 520
    iput v1, p0, Lcom/google/protobuf/d;->d:I

    .line 521
    iput v1, p0, Lcom/google/protobuf/d;->g:I

    .line 522
    iput-object p1, p0, Lcom/google/protobuf/d;->e:Ljava/io/InputStream;

    .line 523
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/protobuf/d;
    .registers 2
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/google/protobuf/d;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private a(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 665
    iget v0, p0, Lcom/google/protobuf/d;->d:I

    iget v3, p0, Lcom/google/protobuf/d;->b:I

    if-ge v0, v3, :cond_10

    .line 666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_10
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v3, p0, Lcom/google/protobuf/d;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/protobuf/d;->h:I

    if-ne v0, v3, :cond_22

    .line 672
    if-eqz p1, :cond_20

    .line 673
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_20
    move v0, v2

    .line 702
    :goto_21
    return v0

    .line 679
    :cond_22
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v3, p0, Lcom/google/protobuf/d;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/d;->g:I

    .line 681
    iput v2, p0, Lcom/google/protobuf/d;->d:I

    .line 682
    iget-object v0, p0, Lcom/google/protobuf/d;->e:Ljava/io/InputStream;

    if-nez v0, :cond_5b

    move v0, v1

    :goto_30
    iput v0, p0, Lcom/google/protobuf/d;->b:I

    .line 683
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/google/protobuf/d;->b:I

    if-ge v0, v1, :cond_64

    .line 684
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_5b
    iget-object v0, p0, Lcom/google/protobuf/d;->e:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/d;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_30

    .line 688
    :cond_64
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    if-ne v0, v1, :cond_73

    .line 689
    iput v2, p0, Lcom/google/protobuf/d;->b:I

    .line 690
    if-eqz p1, :cond_71

    .line 691
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_71
    move v0, v2

    .line 693
    goto :goto_21

    .line 696
    :cond_73
    invoke-direct {p0}, Lcom/google/protobuf/d;->f()V

    .line 697
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/d;->c:I

    add-int/2addr v0, v1

    .line 699
    iget v1, p0, Lcom/google/protobuf/d;->k:I

    if-gt v0, v1, :cond_84

    if-gez v0, :cond_89

    .line 700
    :cond_84
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 702
    :cond_89
    const/4 v0, 0x1

    goto :goto_21
.end method

.method private c(I)[B
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 726
    if-gez p1, :cond_c

    .line 727
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 730
    :cond_c
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v2, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/google/protobuf/d;->h:I

    if-le v0, v2, :cond_26

    .line 732
    iget v0, p0, Lcom/google/protobuf/d;->h:I

    iget v1, p0, Lcom/google/protobuf/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/d;->d(I)V

    .line 734
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 737
    :cond_26
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    iget v2, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_3c

    .line 739
    new-array v0, p1, [B

    .line 740
    iget-object v2, p0, Lcom/google/protobuf/d;->a:[B

    iget v3, p0, Lcom/google/protobuf/d;->d:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    iget v1, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/d;->d:I

    .line 822
    :goto_3b
    return-object v0

    .line 743
    :cond_3c
    if-ge p1, v10, :cond_78

    .line 748
    new-array v2, p1, [B

    .line 749
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    iget v3, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v3

    .line 750
    iget-object v3, p0, Lcom/google/protobuf/d;->a:[B

    iget v4, p0, Lcom/google/protobuf/d;->d:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    iget v3, p0, Lcom/google/protobuf/d;->b:I

    iput v3, p0, Lcom/google/protobuf/d;->d:I

    .line 756
    invoke-direct {p0, v5}, Lcom/google/protobuf/d;->a(Z)Z

    .line 758
    :goto_53
    sub-int v3, p1, v0

    iget v4, p0, Lcom/google/protobuf/d;->b:I

    if-le v3, v4, :cond_6b

    .line 759
    iget-object v3, p0, Lcom/google/protobuf/d;->a:[B

    iget v4, p0, Lcom/google/protobuf/d;->b:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    iget v3, p0, Lcom/google/protobuf/d;->b:I

    add-int/2addr v0, v3

    .line 761
    iget v3, p0, Lcom/google/protobuf/d;->b:I

    iput v3, p0, Lcom/google/protobuf/d;->d:I

    .line 762
    invoke-direct {p0, v5}, Lcom/google/protobuf/d;->a(Z)Z

    goto :goto_53

    .line 765
    :cond_6b
    iget-object v3, p0, Lcom/google/protobuf/d;->a:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/protobuf/d;->d:I

    move-object v0, v2

    .line 768
    goto :goto_3b

    .line 780
    :cond_78
    iget v5, p0, Lcom/google/protobuf/d;->d:I

    .line 781
    iget v6, p0, Lcom/google/protobuf/d;->b:I

    .line 784
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v2, p0, Lcom/google/protobuf/d;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/d;->g:I

    .line 785
    iput v1, p0, Lcom/google/protobuf/d;->d:I

    .line 786
    iput v1, p0, Lcom/google/protobuf/d;->b:I

    .line 789
    sub-int v0, v6, v5

    sub-int v0, p1, v0

    .line 790
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 792
    :goto_91
    if-lez v4, :cond_c1

    .line 793
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    .line 795
    :goto_9a
    array-length v2, v8

    if-ge v0, v2, :cond_b9

    .line 796
    iget-object v2, p0, Lcom/google/protobuf/d;->e:Ljava/io/InputStream;

    if-nez v2, :cond_a9

    move v2, v3

    .line 798
    :goto_a2
    if-ne v2, v3, :cond_b2

    .line 799
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 796
    :cond_a9
    iget-object v2, p0, Lcom/google/protobuf/d;->e:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_a2

    .line 801
    :cond_b2
    iget v9, p0, Lcom/google/protobuf/d;->g:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/google/protobuf/d;->g:I

    .line 802
    add-int/2addr v0, v2

    .line 803
    goto :goto_9a

    .line 804
    :cond_b9
    array-length v0, v8

    sub-int v0, v4, v0

    .line 805
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    .line 806
    goto :goto_91

    .line 809
    :cond_c1
    new-array v3, p1, [B

    .line 812
    sub-int v0, v6, v5

    .line 813
    iget-object v2, p0, Lcom/google/protobuf/d;->a:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 817
    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_cf

    :cond_e3
    move-object v0, v3

    .line 822
    goto/16 :goto_3b
.end method

.method private d(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 833
    if-gez p1, :cond_8

    .line 834
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 837
    :cond_8
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/d;->h:I

    if-le v0, v1, :cond_22

    .line 839
    iget v0, p0, Lcom/google/protobuf/d;->h:I

    iget v1, p0, Lcom/google/protobuf/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/d;->d(I)V

    .line 841
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 844
    :cond_22
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2f

    .line 846
    iget v0, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/d;->d:I

    .line 864
    :cond_2e
    return-void

    .line 849
    :cond_2f
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v1

    .line 850
    iget v1, p0, Lcom/google/protobuf/d;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/d;->g:I

    .line 851
    iput v2, p0, Lcom/google/protobuf/d;->d:I

    .line 852
    iput v2, p0, Lcom/google/protobuf/d;->b:I

    move v1, v0

    .line 855
    :goto_3e
    if-ge v1, p1, :cond_2e

    .line 856
    iget-object v0, p0, Lcom/google/protobuf/d;->e:Ljava/io/InputStream;

    if-nez v0, :cond_4c

    const/4 v0, -0x1

    .line 857
    :goto_45
    if-gtz v0, :cond_57

    .line 858
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 856
    :cond_4c
    iget-object v0, p0, Lcom/google/protobuf/d;->e:Ljava/io/InputStream;

    sub-int v2, p1, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_45

    .line 860
    :cond_57
    add-int/2addr v1, v0

    .line 861
    iget v2, p0, Lcom/google/protobuf/d;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/d;->g:I

    goto :goto_3e
.end method

.method private e()I
    .registers 4

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v0

    .line 319
    if-ltz v0, :cond_7

    .line 348
    :cond_6
    :goto_6
    return v0

    .line 322
    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 323
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v1

    if-ltz v1, :cond_13

    .line 324
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    .line 326
    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 327
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v1

    if-ltz v1, :cond_22

    .line 328
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    .line 330
    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 331
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v1

    if-ltz v1, :cond_31

    .line 332
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    .line 334
    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 335
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 336
    if-gez v1, :cond_6

    .line 338
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    .line 339
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v2

    if-gez v2, :cond_6

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 343
    :cond_4c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 606
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    iget v1, p0, Lcom/google/protobuf/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->b:I

    .line 607
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->b:I

    add-int/2addr v0, v1

    .line 608
    iget v1, p0, Lcom/google/protobuf/d;->h:I

    if-le v0, v1, :cond_1d

    .line 610
    iget v1, p0, Lcom/google/protobuf/d;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->c:I

    .line 611
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    iget v1, p0, Lcom/google/protobuf/d;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->b:I

    .line 615
    :goto_1c
    return-void

    .line 613
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/d;->c:I

    goto :goto_1c
.end method

.method private g()B
    .registers 4

    .prologue
    .line 713
    iget v0, p0, Lcom/google/protobuf/d;->d:I

    iget v1, p0, Lcom/google/protobuf/d;->b:I

    if-ne v0, v1, :cond_a

    .line 714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/d;->a(Z)Z

    .line 716
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/d;->a:[B

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/d;->d:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 81
    iget v1, p0, Lcom/google/protobuf/d;->d:I

    iget v2, p0, Lcom/google/protobuf/d;->b:I

    if-ne v1, v2, :cond_13

    invoke-direct {p0, v0}, Lcom/google/protobuf/d;->a(Z)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    :goto_e
    if-eqz v1, :cond_15

    .line 82
    iput v0, p0, Lcom/google/protobuf/d;->f:I

    .line 92
    :goto_12
    return v0

    :cond_13
    move v1, v0

    .line 81
    goto :goto_e

    .line 86
    :cond_15
    invoke-direct {p0}, Lcom/google/protobuf/d;->e()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/d;->f:I

    .line 87
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v0

    if-nez v0, :cond_28

    .line 90
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 92
    :cond_28
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    goto :goto_12
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    if-eq v0, p1, :cond_9

    .line 106
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 108
    :cond_9
    return-void
.end method

.method public final a(Lcom/google/protobuf/k;Lcom/google/protobuf/e;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/protobuf/d;->e()I

    move-result v0

    .line 252
    iget v1, p0, Lcom/google/protobuf/d;->i:I

    iget v2, p0, Lcom/google/protobuf/d;->j:I

    if-lt v1, v2, :cond_f

    .line 253
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 255
    :cond_f
    if-gez v0, :cond_16

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_16
    iget v1, p0, Lcom/google/protobuf/d;->g:I

    iget v2, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/d;->h:I

    if-le v0, v1, :cond_25

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_25
    iput v0, p0, Lcom/google/protobuf/d;->h:I

    invoke-direct {p0}, Lcom/google/protobuf/d;->f()V

    .line 256
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/d;->i:I

    .line 257
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/k;->b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->a(I)V

    .line 259
    iget v0, p0, Lcom/google/protobuf/d;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/d;->i:I

    .line 260
    iput v1, p0, Lcom/google/protobuf/d;->h:I

    invoke-direct {p0}, Lcom/google/protobuf/d;->f()V

    .line 261
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/protobuf/d;->e()I

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .registers 16
    .parameter

    .prologue
    const/4 v0, 0x1

    const-wide/16 v12, 0xff

    .line 117
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_a6

    .line 139
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 119
    :pswitch_f
    invoke-direct {p0}, Lcom/google/protobuf/d;->e()I

    .line 137
    :goto_12
    return v0

    .line 122
    :pswitch_13
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v2

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v3

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v4

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v5

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v6

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v7

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v8

    int-to-long v9, v1

    and-long/2addr v9, v12

    int-to-long v1, v2

    and-long/2addr v1, v12

    const/16 v11, 0x8

    shl-long/2addr v1, v11

    or-long/2addr v1, v9

    int-to-long v9, v3

    and-long/2addr v9, v12

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    or-long/2addr v1, v9

    int-to-long v3, v4

    and-long/2addr v3, v12

    const/16 v9, 0x18

    shl-long/2addr v3, v9

    or-long/2addr v1, v3

    int-to-long v3, v5

    and-long/2addr v3, v12

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, v6

    and-long/2addr v3, v12

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, v7

    and-long/2addr v3, v12

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, v8

    and-long/2addr v3, v12

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 123
    goto :goto_12

    .line 125
    :pswitch_60
    invoke-direct {p0}, Lcom/google/protobuf/d;->e()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/d;->d(I)V

    goto :goto_12

    .line 128
    :cond_68
    :pswitch_68
    invoke-virtual {p0}, Lcom/google/protobuf/d;->a()I

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {p0, v1}, Lcom/google/protobuf/d;->b(I)Z

    move-result v1

    if-nez v1, :cond_68

    .line 129
    :cond_74
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/d;->a(I)V

    goto :goto_12

    .line 134
    :pswitch_81
    const/4 v0, 0x0

    goto :goto_12

    .line 136
    :pswitch_83
    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v2

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v3

    invoke-direct {p0}, Lcom/google/protobuf/d;->g()B

    move-result v4

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 137
    goto/16 :goto_12

    .line 117
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_60
        :pswitch_68
        :pswitch_81
        :pswitch_83
    .end packed-switch
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/protobuf/d;->e()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()Ljava/lang/String;
    .registers 6

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 201
    iget v0, p0, Lcom/google/protobuf/d;->b:I

    iget v2, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1e

    if-lez v1, :cond_1e

    .line 204
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/d;->a:[B

    iget v3, p0, Lcom/google/protobuf/d;->d:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 205
    iget v2, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/d;->d:I

    .line 209
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/protobuf/d;->c(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1d
.end method
