.class Lr/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2642
    mul-int/lit16 v0, p1, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lr/y;->a:[B

    .line 2643
    iput p1, p0, Lr/y;->b:I

    .line 2644
    iput p2, p0, Lr/y;->c:I

    .line 2645
    return-void
.end method

.method static a(J)[I
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v8, 0x1fd3

    const/16 v7, 0x16

    .line 2703
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 2704
    invoke-static {p0, p1, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    .line 2705
    rem-long v4, v2, v8

    long-to-int v4, v4

    aput v4, v1, v0

    .line 2706
    invoke-static {v2, v3, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    .line 2707
    const/4 v4, 0x1

    rem-long v5, v2, v8

    long-to-int v5, v5

    aput v5, v1, v4

    .line 2708
    invoke-static {v2, v3, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    .line 2709
    const/4 v4, 0x2

    rem-long/2addr v2, v8

    long-to-int v2, v2

    aput v2, v1, v4

    .line 2710
    :goto_24
    array-length v2, v1

    if-ge v0, v2, :cond_34

    .line 2711
    aget v2, v1, v0

    if-gez v2, :cond_31

    .line 2712
    aget v2, v1, v0

    add-int/lit16 v2, v2, 0x1fd3

    aput v2, v1, v0

    .line 2710
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 2715
    :cond_34
    return-object v1
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 2697
    invoke-virtual {p0}, Lr/y;->b()V

    .line 2698
    iget-object v0, p0, Lr/y;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 2699
    return-void
.end method

.method a(I)V
    .registers 2
    .parameter

    .prologue
    .line 2652
    invoke-virtual {p0}, Lr/y;->b()V

    .line 2653
    iput p1, p0, Lr/y;->c:I

    .line 2654
    return-void
.end method

.method a(JI)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 2720
    invoke-virtual {p0}, Lr/y;->b()V

    .line 2721
    invoke-static {p1, p2}, Lr/y;->a(J)[I

    move-result-object v1

    .line 2722
    mul-int/lit16 v2, p3, 0x400

    .line 2723
    const/4 v0, 0x0

    :goto_a
    array-length v3, v1

    if-ge v0, v3, :cond_24

    .line 2724
    aget v3, v1, v0

    shr-int/lit8 v3, v3, 0x3

    .line 2725
    aget v4, v1, v0

    and-int/lit8 v4, v4, 0x7

    .line 2726
    iget-object v5, p0, Lr/y;->a:[B

    add-int/2addr v3, v2

    aget-byte v6, v5, v3

    const/4 v7, 0x1

    shl-int v4, v7, v4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    .line 2723
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2728
    :cond_24
    return-void
.end method

.method a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .registers 2
    .parameter

    .prologue
    .line 2648
    iput-object p1, p0, Lr/y;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2649
    return-void
.end method

.method a(Lr/E;)V
    .registers 7
    .parameter

    .prologue
    .line 2675
    invoke-virtual {p0}, Lr/y;->b()V

    .line 2676
    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v0

    invoke-virtual {p0, v0}, Lr/y;->b(I)V

    .line 2677
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Lr/E;->b()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 2678
    invoke-virtual {p1, v0}, Lr/E;->b(I)J

    move-result-wide v1

    .line 2679
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_22

    .line 2680
    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lr/y;->a(JI)V

    .line 2677
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2683
    :cond_25
    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v0

    iget v1, p0, Lr/y;->c:I

    if-lt v0, v1, :cond_35

    .line 2684
    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/y;->c:I

    .line 2686
    :cond_35
    return-void
.end method

.method a(Lr/X;)V
    .registers 4
    .parameter

    .prologue
    .line 2657
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lr/y;->c:I

    if-ge v0, v1, :cond_b

    .line 2658
    invoke-virtual {p0, v0}, Lr/y;->d(I)V

    .line 2657
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2660
    :cond_b
    iget-object v0, p0, Lr/y;->a:[B

    invoke-interface {p1, v0}, Lr/X;->b([B)V

    .line 2661
    return-void
.end method

.method a(Lr/X;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2664
    invoke-virtual {p0, p2}, Lr/y;->d(I)V

    .line 2665
    iget-object v0, p0, Lr/y;->a:[B

    mul-int/lit16 v1, p2, 0x400

    const/16 v2, 0x400

    invoke-interface {p1, v0, v1, v2}, Lr/X;->b([BII)V

    .line 2666
    return-void
.end method

.method a([II)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2735
    mul-int/lit16 v3, p2, 0x400

    move v0, v1

    .line 2736
    :goto_5
    array-length v4, p1

    if-ge v0, v4, :cond_1e

    .line 2737
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x3

    .line 2738
    aget v5, p1, v0

    and-int/lit8 v5, v5, 0x7

    .line 2739
    iget-object v6, p0, Lr/y;->a:[B

    add-int/2addr v4, v3

    aget-byte v4, v6, v4

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-nez v4, :cond_1b

    .line 2743
    :goto_1a
    return v1

    .line 2736
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    move v1, v2

    .line 2743
    goto :goto_1a
.end method

.method b()V
    .registers 3

    .prologue
    .line 2761
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lr/y;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lr/y;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2763
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State write lock needed to modify BloomFilters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2765
    :cond_1a
    return-void
.end method

.method b(I)V
    .registers 6
    .parameter

    .prologue
    .line 2690
    invoke-virtual {p0}, Lr/y;->b()V

    .line 2691
    mul-int/lit16 v0, p1, 0x400

    .line 2692
    iget-object v1, p0, Lr/y;->a:[B

    add-int/lit16 v2, v0, 0x3fc

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 2693
    return-void
.end method

.method b(Lr/X;)V
    .registers 5
    .parameter

    .prologue
    .line 2669
    invoke-virtual {p0}, Lr/y;->b()V

    .line 2670
    iget-object v0, p0, Lr/y;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lr/y;->a:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lr/X;->a([BII)V

    .line 2671
    return-void
.end method

.method b(JI)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2731
    invoke-static {p1, p2}, Lr/y;->a(J)[I

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lr/y;->a([II)Z

    move-result v0

    return v0
.end method

.method c(I)Z
    .registers 5
    .parameter

    .prologue
    .line 2747
    mul-int/lit16 v0, p1, 0x400

    .line 2748
    iget-object v1, p0, Lr/y;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lr/w;->c([BII)I

    move-result v1

    .line 2749
    iget-object v2, p0, Lr/y;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0}, Lr/w;->a([BI)I

    move-result v0

    .line 2750
    if-ne v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method d(I)V
    .registers 5
    .parameter

    .prologue
    .line 2755
    mul-int/lit16 v0, p1, 0x400

    .line 2756
    iget-object v1, p0, Lr/y;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lr/w;->c([BII)I

    move-result v1

    .line 2757
    iget-object v2, p0, Lr/y;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0, v1}, Lr/w;->a([BII)V

    .line 2758
    return-void
.end method
