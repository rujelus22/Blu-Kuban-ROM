.class public final Lbk/f;
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
.method private constructor <init>([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    const v0, 0x7fffffff

    iput v0, p0, Lbk/f;->h:I

    .line 527
    const/16 v0, 0x40

    iput v0, p0, Lbk/f;->j:I

    .line 530
    const/high16 v0, 0x400

    iput v0, p0, Lbk/f;->k:I

    .line 537
    iput-object p1, p0, Lbk/f;->a:[B

    .line 538
    add-int v0, p2, p3

    iput v0, p0, Lbk/f;->b:I

    .line 539
    iput p2, p0, Lbk/f;->d:I

    .line 540
    neg-int v0, p2

    iput v0, p0, Lbk/f;->g:I

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lbk/f;->e:Ljava/io/InputStream;

    .line 542
    return-void
.end method

.method public static a([BII)Lbk/f;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lbk/f;

    invoke-direct {v0, p0, p1, p2}, Lbk/f;-><init>([BII)V

    .line 49
    :try_start_5
    invoke-virtual {v0, p2}, Lbk/f;->c(I)I
    :try_end_8
    .catch Lbk/l; {:try_start_5 .. :try_end_8} :catch_9

    .line 60
    return-object v0

    .line 50
    :catch_9
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 692
    iget v0, p0, Lbk/f;->d:I

    iget v3, p0, Lbk/f;->b:I

    if-ge v0, v3, :cond_10

    .line 693
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_10
    iget v0, p0, Lbk/f;->g:I

    iget v3, p0, Lbk/f;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lbk/f;->h:I

    if-ne v0, v3, :cond_22

    .line 699
    if-eqz p1, :cond_20

    .line 700
    invoke-static {}, Lbk/l;->b()Lbk/l;

    move-result-object v0

    throw v0

    :cond_20
    move v0, v2

    .line 729
    :goto_21
    return v0

    .line 706
    :cond_22
    iget v0, p0, Lbk/f;->g:I

    iget v3, p0, Lbk/f;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lbk/f;->g:I

    .line 708
    iput v2, p0, Lbk/f;->d:I

    .line 709
    iget-object v0, p0, Lbk/f;->e:Ljava/io/InputStream;

    if-nez v0, :cond_5b

    move v0, v1

    :goto_30
    iput v0, p0, Lbk/f;->b:I

    .line 710
    iget v0, p0, Lbk/f;->b:I

    if-eqz v0, :cond_3a

    iget v0, p0, Lbk/f;->b:I

    if-ge v0, v1, :cond_64

    .line 711
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbk/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_5b
    iget-object v0, p0, Lbk/f;->e:Ljava/io/InputStream;

    iget-object v3, p0, Lbk/f;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_30

    .line 715
    :cond_64
    iget v0, p0, Lbk/f;->b:I

    if-ne v0, v1, :cond_73

    .line 716
    iput v2, p0, Lbk/f;->b:I

    .line 717
    if-eqz p1, :cond_71

    .line 718
    invoke-static {}, Lbk/l;->b()Lbk/l;

    move-result-object v0

    throw v0

    :cond_71
    move v0, v2

    .line 720
    goto :goto_21

    .line 723
    :cond_73
    invoke-direct {p0}, Lbk/f;->l()V

    .line 724
    iget v0, p0, Lbk/f;->g:I

    iget v1, p0, Lbk/f;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lbk/f;->c:I

    add-int/2addr v0, v1

    .line 726
    iget v1, p0, Lbk/f;->k:I

    if-gt v0, v1, :cond_84

    if-gez v0, :cond_89

    .line 727
    :cond_84
    invoke-static {}, Lbk/l;->i()Lbk/l;

    move-result-object v0

    throw v0

    .line 729
    :cond_89
    const/4 v0, 0x1

    goto :goto_21
.end method

.method private l()V
    .registers 3

    .prologue
    .line 633
    iget v0, p0, Lbk/f;->b:I

    iget v1, p0, Lbk/f;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lbk/f;->b:I

    .line 634
    iget v0, p0, Lbk/f;->g:I

    iget v1, p0, Lbk/f;->b:I

    add-int/2addr v0, v1

    .line 635
    iget v1, p0, Lbk/f;->h:I

    if-le v0, v1, :cond_1d

    .line 637
    iget v1, p0, Lbk/f;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbk/f;->c:I

    .line 638
    iget v0, p0, Lbk/f;->b:I

    iget v1, p0, Lbk/f;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbk/f;->b:I

    .line 642
    :goto_1c
    return-void

    .line 640
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lbk/f;->c:I

    goto :goto_1c
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lbk/f;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 72
    iput v0, p0, Lbk/f;->f:I

    .line 82
    :goto_9
    return v0

    .line 76
    :cond_a
    invoke-virtual {p0}, Lbk/f;->f()I

    move-result v0

    iput v0, p0, Lbk/f;->f:I

    .line 77
    iget v0, p0, Lbk/f;->f:I

    invoke-static {v0}, Lbk/y;->b(I)I

    move-result v0

    if-nez v0, :cond_1d

    .line 80
    invoke-static {}, Lbk/l;->e()Lbk/l;

    move-result-object v0

    throw v0

    .line 82
    :cond_1d
    iget v0, p0, Lbk/f;->f:I

    goto :goto_9
.end method

.method public a(Lbk/r;Lbk/i;)Lbk/p;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0}, Lbk/f;->f()I

    move-result v0

    .line 276
    iget v1, p0, Lbk/f;->i:I

    iget v2, p0, Lbk/f;->j:I

    if-lt v1, v2, :cond_f

    .line 277
    invoke-static {}, Lbk/l;->h()Lbk/l;

    move-result-object v0

    throw v0

    .line 279
    :cond_f
    invoke-virtual {p0, v0}, Lbk/f;->c(I)I

    move-result v1

    .line 280
    iget v0, p0, Lbk/f;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbk/f;->i:I

    .line 281
    invoke-interface {p1, p0, p2}, Lbk/r;->b(Lbk/f;Lbk/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/p;

    .line 282
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lbk/f;->a(I)V

    .line 283
    iget v2, p0, Lbk/f;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbk/f;->i:I

    .line 284
    invoke-virtual {p0, v1}, Lbk/f;->d(I)V

    .line 285
    return-object v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lbk/f;->f:I

    if-eq v0, p1, :cond_9

    .line 96
    invoke-static {}, Lbk/l;->f()Lbk/l;

    move-result-object v0

    throw v0

    .line 98
    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 139
    :cond_0
    invoke-virtual {p0}, Lbk/f;->a()I

    move-result v0

    .line 140
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lbk/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :cond_c
    return-void
.end method

.method public b(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-static {p1}, Lbk/y;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 129
    invoke-static {}, Lbk/l;->g()Lbk/l;

    move-result-object v0

    throw v0

    .line 109
    :pswitch_d
    invoke-virtual {p0}, Lbk/f;->d()I

    .line 127
    :goto_10
    return v0

    .line 112
    :pswitch_11
    invoke-virtual {p0}, Lbk/f;->i()J

    goto :goto_10

    .line 115
    :pswitch_15
    invoke-virtual {p0}, Lbk/f;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Lbk/f;->f(I)V

    goto :goto_10

    .line 118
    :pswitch_1d
    invoke-virtual {p0}, Lbk/f;->b()V

    .line 119
    invoke-static {p1}, Lbk/y;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lbk/y;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lbk/f;->a(I)V

    goto :goto_10

    .line 124
    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_10

    .line 126
    :pswitch_2f
    invoke-virtual {p0}, Lbk/f;->h()I

    goto :goto_10

    .line 107
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 617
    if-gez p1, :cond_7

    .line 618
    invoke-static {}, Lbk/l;->c()Lbk/l;

    move-result-object v0

    throw v0

    .line 620
    :cond_7
    iget v0, p0, Lbk/f;->g:I

    iget v1, p0, Lbk/f;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 621
    iget v1, p0, Lbk/f;->h:I

    .line 622
    if-le v0, v1, :cond_16

    .line 623
    invoke-static {}, Lbk/l;->b()Lbk/l;

    move-result-object v0

    throw v0

    .line 625
    :cond_16
    iput v0, p0, Lbk/f;->h:I

    .line 627
    invoke-direct {p0}, Lbk/f;->l()V

    .line 629
    return v1
.end method

.method public c()J
    .registers 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lbk/f;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lbk/f;->f()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .registers 2
    .parameter

    .prologue
    .line 650
    iput p1, p0, Lbk/f;->h:I

    .line 651
    invoke-direct {p0}, Lbk/f;->l()V

    .line 652
    return-void
.end method

.method public e()Lbk/d;
    .registers 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lbk/f;->f()I

    move-result v1

    .line 291
    if-nez v1, :cond_9

    .line 292
    sget-object v0, Lbk/d;->a:Lbk/d;

    .line 301
    :goto_8
    return-object v0

    .line 293
    :cond_9
    iget v0, p0, Lbk/f;->b:I

    iget v2, p0, Lbk/f;->d:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_20

    if-lez v1, :cond_20

    .line 296
    iget-object v0, p0, Lbk/f;->a:[B

    iget v2, p0, Lbk/f;->d:I

    invoke-static {v0, v2, v1}, Lbk/d;->a([BII)Lbk/d;

    move-result-object v0

    .line 297
    iget v2, p0, Lbk/f;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lbk/f;->d:I

    goto :goto_8

    .line 301
    :cond_20
    invoke-virtual {p0, v1}, Lbk/f;->e(I)[B

    move-result-object v0

    invoke-static {v0}, Lbk/d;->a([B)Lbk/d;

    move-result-object v0

    goto :goto_8
.end method

.method public e(I)[B
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 753
    if-gez p1, :cond_c

    .line 754
    invoke-static {}, Lbk/l;->c()Lbk/l;

    move-result-object v0

    throw v0

    .line 757
    :cond_c
    iget v0, p0, Lbk/f;->g:I

    iget v2, p0, Lbk/f;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lbk/f;->h:I

    if-le v0, v2, :cond_26

    .line 759
    iget v0, p0, Lbk/f;->h:I

    iget v1, p0, Lbk/f;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lbk/f;->d:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lbk/f;->f(I)V

    .line 761
    invoke-static {}, Lbk/l;->b()Lbk/l;

    move-result-object v0

    throw v0

    .line 764
    :cond_26
    iget v0, p0, Lbk/f;->b:I

    iget v2, p0, Lbk/f;->d:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_3c

    .line 766
    new-array v0, p1, [B

    .line 767
    iget-object v2, p0, Lbk/f;->a:[B

    iget v3, p0, Lbk/f;->d:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    iget v1, p0, Lbk/f;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lbk/f;->d:I

    .line 849
    :goto_3b
    return-object v0

    .line 770
    :cond_3c
    if-ge p1, v10, :cond_78

    .line 775
    new-array v2, p1, [B

    .line 776
    iget v0, p0, Lbk/f;->b:I

    iget v3, p0, Lbk/f;->d:I

    sub-int/2addr v0, v3

    .line 777
    iget-object v3, p0, Lbk/f;->a:[B

    iget v4, p0, Lbk/f;->d:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    iget v3, p0, Lbk/f;->b:I

    iput v3, p0, Lbk/f;->d:I

    .line 783
    invoke-direct {p0, v5}, Lbk/f;->a(Z)Z

    .line 785
    :goto_53
    sub-int v3, p1, v0

    iget v4, p0, Lbk/f;->b:I

    if-le v3, v4, :cond_6b

    .line 786
    iget-object v3, p0, Lbk/f;->a:[B

    iget v4, p0, Lbk/f;->b:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    iget v3, p0, Lbk/f;->b:I

    add-int/2addr v0, v3

    .line 788
    iget v3, p0, Lbk/f;->b:I

    iput v3, p0, Lbk/f;->d:I

    .line 789
    invoke-direct {p0, v5}, Lbk/f;->a(Z)Z

    goto :goto_53

    .line 792
    :cond_6b
    iget-object v3, p0, Lbk/f;->a:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 793
    sub-int v0, p1, v0

    iput v0, p0, Lbk/f;->d:I

    move-object v0, v2

    .line 795
    goto :goto_3b

    .line 807
    :cond_78
    iget v5, p0, Lbk/f;->d:I

    .line 808
    iget v6, p0, Lbk/f;->b:I

    .line 811
    iget v0, p0, Lbk/f;->g:I

    iget v2, p0, Lbk/f;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lbk/f;->g:I

    .line 812
    iput v1, p0, Lbk/f;->d:I

    .line 813
    iput v1, p0, Lbk/f;->b:I

    .line 816
    sub-int v0, v6, v5

    sub-int v0, p1, v0

    .line 817
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 819
    :goto_91
    if-lez v4, :cond_c1

    .line 820
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    .line 822
    :goto_9a
    array-length v2, v8

    if-ge v0, v2, :cond_b9

    .line 823
    iget-object v2, p0, Lbk/f;->e:Ljava/io/InputStream;

    if-nez v2, :cond_a9

    move v2, v3

    .line 825
    :goto_a2
    if-ne v2, v3, :cond_b2

    .line 826
    invoke-static {}, Lbk/l;->b()Lbk/l;

    move-result-object v0

    throw v0

    .line 823
    :cond_a9
    iget-object v2, p0, Lbk/f;->e:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_a2

    .line 828
    :cond_b2
    iget v9, p0, Lbk/f;->g:I

    add-int/2addr v9, v2

    iput v9, p0, Lbk/f;->g:I

    .line 829
    add-int/2addr v0, v2

    .line 830
    goto :goto_9a

    .line 831
    :cond_b9
    array-length v0, v8

    sub-int v0, v4, v0

    .line 832
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    .line 833
    goto :goto_91

    .line 836
    :cond_c1
    new-array v3, p1, [B

    .line 839
    sub-int v0, v6, v5

    .line 840
    iget-object v2, p0, Lbk/f;->a:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
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

    .line 844
    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_cf

    :cond_e3
    move-object v0, v3

    .line 849
    goto/16 :goto_3b
.end method

.method public f()I
    .registers 4

    .prologue
    .line 345
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v0

    .line 346
    if-ltz v0, :cond_7

    .line 375
    :cond_6
    :goto_6
    return v0

    .line 349
    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 350
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v1

    if-ltz v1, :cond_13

    .line 351
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    .line 353
    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 354
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v1

    if-ltz v1, :cond_22

    .line 355
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    .line 357
    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 358
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v1

    if-ltz v1, :cond_31

    .line 359
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    .line 361
    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 362
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 363
    if-gez v1, :cond_6

    .line 365
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    .line 366
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v2

    if-gez v2, :cond_6

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 370
    :cond_4c
    invoke-static {}, Lbk/l;->d()Lbk/l;

    move-result-object v0

    throw v0
.end method

.method public f(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 860
    if-gez p1, :cond_8

    .line 861
    invoke-static {}, Lbk/l;->c()Lbk/l;

    move-result-object v0

    throw v0

    .line 864
    :cond_8
    iget v0, p0, Lbk/f;->g:I

    iget v1, p0, Lbk/f;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lbk/f;->h:I

    if-le v0, v1, :cond_22

    .line 866
    iget v0, p0, Lbk/f;->h:I

    iget v1, p0, Lbk/f;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lbk/f;->d:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lbk/f;->f(I)V

    .line 868
    invoke-static {}, Lbk/l;->b()Lbk/l;

    move-result-object v0

    throw v0

    .line 871
    :cond_22
    iget v0, p0, Lbk/f;->b:I

    iget v1, p0, Lbk/f;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2f

    .line 873
    iget v0, p0, Lbk/f;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lbk/f;->d:I

    .line 891
    :goto_2e
    return-void

    .line 876
    :cond_2f
    iget v0, p0, Lbk/f;->b:I

    iget v1, p0, Lbk/f;->d:I

    sub-int/2addr v0, v1

    .line 877
    iget v1, p0, Lbk/f;->b:I

    iput v1, p0, Lbk/f;->d:I

    .line 882
    invoke-direct {p0, v3}, Lbk/f;->a(Z)Z

    .line 883
    :goto_3b
    sub-int v1, p1, v0

    iget v2, p0, Lbk/f;->b:I

    if-le v1, v2, :cond_4c

    .line 884
    iget v1, p0, Lbk/f;->b:I

    add-int/2addr v0, v1

    .line 885
    iget v1, p0, Lbk/f;->b:I

    iput v1, p0, Lbk/f;->d:I

    .line 886
    invoke-direct {p0, v3}, Lbk/f;->a(Z)Z

    goto :goto_3b

    .line 889
    :cond_4c
    sub-int v0, p1, v0

    iput v0, p0, Lbk/f;->d:I

    goto :goto_2e
.end method

.method public g()J
    .registers 7

    .prologue
    .line 431
    const/4 v2, 0x0

    .line 432
    const-wide/16 v0, 0x0

    .line 433
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 434
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v3

    .line 435
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 436
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    .line 437
    return-wide v0

    .line 439
    :cond_15
    add-int/lit8 v2, v2, 0x7

    .line 440
    goto :goto_3

    .line 441
    :cond_18
    invoke-static {}, Lbk/l;->d()Lbk/l;

    move-result-object v0

    throw v0
.end method

.method public h()I
    .registers 5

    .prologue
    .line 446
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v0

    .line 447
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v1

    .line 448
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v2

    .line 449
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v3

    .line 450
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public i()J
    .registers 14

    .prologue
    const-wide/16 v11, 0xff

    .line 458
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v0

    .line 459
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v1

    .line 460
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v2

    .line 461
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v3

    .line 462
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v4

    .line 463
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v5

    .line 464
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v6

    .line 465
    invoke-virtual {p0}, Lbk/f;->k()B

    move-result v7

    .line 466
    int-to-long v8, v0

    and-long/2addr v8, v11

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public j()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 673
    iget v1, p0, Lbk/f;->d:I

    iget v2, p0, Lbk/f;->b:I

    if-ne v1, v2, :cond_e

    invoke-direct {p0, v0}, Lbk/f;->a(Z)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public k()B
    .registers 4

    .prologue
    .line 740
    iget v0, p0, Lbk/f;->d:I

    iget v1, p0, Lbk/f;->b:I

    if-ne v0, v1, :cond_a

    .line 741
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbk/f;->a(Z)Z

    .line 743
    :cond_a
    iget-object v0, p0, Lbk/f;->a:[B

    iget v1, p0, Lbk/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbk/f;->d:I

    aget-byte v0, v0, v1

    return v0
.end method
