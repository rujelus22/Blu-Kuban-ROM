.class abstract LajW;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"


# instance fields
.field a:I

.field a:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field a:Lakb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakb",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field a:Laky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajx",
            "<TK;TV;>.aky;"
        }
    .end annotation
.end field

.field a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Laka",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic b:Lajx;

.field b:Laky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajx",
            "<TK;TV;>.aky;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lajx;)V
    .registers 3
    .parameter

    .prologue
    .line 3656
    iput-object p1, p0, LajW;->b:Lajx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iget-object v0, p1, Lajx;->a:[Lakb;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LajW;->a:I

    .line 3658
    const/4 v0, -0x1

    iput v0, p0, LajW;->b:I

    .line 3659
    invoke-virtual {p0}, LajW;->a()V

    .line 3660
    return-void
.end method


# virtual methods
.method a()Laky;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lajx",
            "<TK;TV;>.aky;"
        }
    .end annotation

    .prologue
    .line 3738
    iget-object v0, p0, LajW;->a:Laky;

    if-nez v0, :cond_a

    .line 3739
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3741
    :cond_a
    iget-object v0, p0, LajW;->a:Laky;

    iput-object v0, p0, LajW;->b:Laky;

    .line 3742
    invoke-virtual {p0}, LajW;->a()V

    .line 3743
    iget-object v0, p0, LajW;->b:Laky;

    return-object v0
.end method

.method final a()V
    .registers 4

    .prologue
    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, LajW;->a:Laky;

    .line 3665
    invoke-virtual {p0}, LajW;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3683
    :cond_9
    :goto_9
    return-void

    .line 3669
    :cond_a
    invoke-virtual {p0}, LajW;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3673
    :cond_10
    iget v0, p0, LajW;->a:I

    if-ltz v0, :cond_9

    .line 3674
    iget-object v0, p0, LajW;->b:Lajx;

    iget-object v0, v0, Lajx;->a:[Lakb;

    iget v1, p0, LajW;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LajW;->a:I

    aget-object v0, v0, v1

    iput-object v0, p0, LajW;->a:Lakb;

    .line 3675
    iget-object v0, p0, LajW;->a:Lakb;

    iget v0, v0, Lakb;->a:I

    if-eqz v0, :cond_10

    .line 3676
    iget-object v0, p0, LajW;->a:Lakb;

    iget-object v0, v0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, LajW;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3677
    iget-object v0, p0, LajW;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LajW;->b:I

    .line 3678
    invoke-virtual {p0}, LajW;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method a()Z
    .registers 2

    .prologue
    .line 3689
    iget-object v0, p0, LajW;->a:Laka;

    if-eqz v0, :cond_23

    .line 3690
    iget-object v0, p0, LajW;->a:Laka;

    invoke-interface {v0}, Laka;->a()Laka;

    move-result-object v0

    iput-object v0, p0, LajW;->a:Laka;

    :goto_c
    iget-object v0, p0, LajW;->a:Laka;

    if-eqz v0, :cond_23

    .line 3691
    iget-object v0, p0, LajW;->a:Laka;

    invoke-virtual {p0, v0}, LajW;->a(Laka;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3692
    const/4 v0, 0x1

    .line 3696
    :goto_19
    return v0

    .line 3690
    :cond_1a
    iget-object v0, p0, LajW;->a:Laka;

    invoke-interface {v0}, Laka;->a()Laka;

    move-result-object v0

    iput-object v0, p0, LajW;->a:Laka;

    goto :goto_c

    .line 3696
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method a(Laka;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3719
    :try_start_0
    invoke-interface {p1}, Laka;->a()Ljava/lang/Object;

    move-result-object v0

    .line 3720
    iget-object v1, p0, LajW;->b:Lajx;

    invoke-virtual {v1, p1}, Lajx;->a(Laka;)Ljava/lang/Object;

    move-result-object v1

    .line 3721
    if-eqz v1, :cond_1c

    .line 3722
    new-instance v2, Laky;

    iget-object v3, p0, LajW;->b:Lajx;

    invoke-direct {v2, v3, v0, v1}, Laky;-><init>(Lajx;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, LajW;->a:Laky;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_23

    .line 3723
    const/4 v0, 0x1

    .line 3729
    iget-object v1, p0, LajW;->a:Lakb;

    invoke-virtual {v1}, Lakb;->m()V

    :goto_1b
    return v0

    .line 3726
    :cond_1c
    const/4 v0, 0x0

    .line 3729
    iget-object v1, p0, LajW;->a:Lakb;

    invoke-virtual {v1}, Lakb;->m()V

    goto :goto_1b

    :catchall_23
    move-exception v0

    iget-object v1, p0, LajW;->a:Lakb;

    invoke-virtual {v1}, Lakb;->m()V

    throw v0
.end method

.method b()Z
    .registers 4

    .prologue
    .line 3703
    :cond_0
    iget v0, p0, LajW;->b:I

    if-ltz v0, :cond_26

    .line 3704
    iget-object v0, p0, LajW;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, LajW;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LajW;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    iput-object v0, p0, LajW;->a:Laka;

    if-eqz v0, :cond_0

    .line 3705
    iget-object v0, p0, LajW;->a:Laka;

    invoke-virtual {p0, v0}, LajW;->a(Laka;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, LajW;->a()Z

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

.method public hasNext()Z
    .registers 2

    .prologue
    .line 3734
    iget-object v0, p0, LajW;->a:Laky;

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
    iget-object v0, p0, LajW;->b:Laky;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 3748
    iget-object v0, p0, LajW;->b:Lajx;

    iget-object v1, p0, LajW;->b:Laky;

    invoke-virtual {v1}, Laky;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    const/4 v0, 0x0

    iput-object v0, p0, LajW;->b:Laky;

    .line 3750
    return-void

    .line 3747
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
