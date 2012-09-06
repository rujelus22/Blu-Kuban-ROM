.class abstract Lcom/google/common/collect/gd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field f:Lcom/google/common/collect/gg;

.field g:Lcom/google/common/collect/gz;

.field h:Lcom/google/common/collect/gz;

.field final synthetic i:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 3
    .parameter

    .prologue
    .line 3656
    iput-object p1, p0, Lcom/google/common/collect/gd;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/gd;->b:I

    .line 3658
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/gd;->c:I

    .line 3659
    invoke-direct {p0}, Lcom/google/common/collect/gd;->b()V

    .line 3660
    return-void
.end method

.method private a(Lcom/google/common/collect/gg;)Z
    .registers 6
    .parameter

    .prologue
    .line 3719
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3720
    iget-object v1, p0, Lcom/google/common/collect/gd;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getLiveValue(Lcom/google/common/collect/gg;)Ljava/lang/Object;

    move-result-object v1

    .line 3721
    if-eqz v1, :cond_1c

    .line 3722
    new-instance v2, Lcom/google/common/collect/gz;

    iget-object v3, p0, Lcom/google/common/collect/gd;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/gz;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/gd;->g:Lcom/google/common/collect/gz;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_23

    .line 3723
    iget-object v0, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    .line 3726
    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x0

    goto :goto_1b

    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/gd;->g:Lcom/google/common/collect/gz;

    .line 3665
    invoke-direct {p0}, Lcom/google/common/collect/gd;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3683
    :cond_9
    :goto_9
    return-void

    .line 3669
    :cond_a
    invoke-direct {p0}, Lcom/google/common/collect/gd;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3673
    :cond_10
    iget v0, p0, Lcom/google/common/collect/gd;->b:I

    if-ltz v0, :cond_9

    .line 3674
    iget-object v0, p0, Lcom/google/common/collect/gd;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/gd;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/gd;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3675
    iget-object v0, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_10

    .line 3676
    iget-object v0, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/gd;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3677
    iget-object v0, p0, Lcom/google/common/collect/gd;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/gd;->c:I

    .line 3678
    invoke-direct {p0}, Lcom/google/common/collect/gd;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method private c()Z
    .registers 2

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    if-eqz v0, :cond_23

    .line 3690
    iget-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    :goto_c
    iget-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    if-eqz v0, :cond_23

    .line 3691
    iget-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    invoke-direct {p0, v0}, Lcom/google/common/collect/gd;->a(Lcom/google/common/collect/gg;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3692
    const/4 v0, 0x1

    .line 3696
    :goto_19
    return v0

    .line 3690
    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    goto :goto_c

    .line 3696
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d()Z
    .registers 4

    .prologue
    .line 3703
    :cond_0
    iget v0, p0, Lcom/google/common/collect/gd;->c:I

    if-ltz v0, :cond_26

    .line 3704
    iget-object v0, p0, Lcom/google/common/collect/gd;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/gd;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/gd;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    iput-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    if-eqz v0, :cond_0

    .line 3705
    iget-object v0, p0, Lcom/google/common/collect/gd;->f:Lcom/google/common/collect/gg;

    invoke-direct {p0, v0}, Lcom/google/common/collect/gd;->a(Lcom/google/common/collect/gg;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/google/common/collect/gd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    :cond_24
    const/4 v0, 0x1

    .line 3710
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method final a()Lcom/google/common/collect/gz;
    .registers 2

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/google/common/collect/gd;->g:Lcom/google/common/collect/gz;

    if-nez v0, :cond_a

    .line 3739
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3741
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/gd;->g:Lcom/google/common/collect/gz;

    iput-object v0, p0, Lcom/google/common/collect/gd;->h:Lcom/google/common/collect/gz;

    .line 3742
    invoke-direct {p0}, Lcom/google/common/collect/gd;->b()V

    .line 3743
    iget-object v0, p0, Lcom/google/common/collect/gd;->h:Lcom/google/common/collect/gz;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/google/common/collect/gd;->g:Lcom/google/common/collect/gz;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/google/common/collect/gd;->h:Lcom/google/common/collect/gz;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 3748
    iget-object v0, p0, Lcom/google/common/collect/gd;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/gd;->h:Lcom/google/common/collect/gz;

    invoke-virtual {v1}, Lcom/google/common/collect/gz;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/gd;->h:Lcom/google/common/collect/gz;

    .line 3750
    return-void

    .line 3747
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
