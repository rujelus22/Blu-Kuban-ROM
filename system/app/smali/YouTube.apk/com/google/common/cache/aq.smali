.class final Lcom/google/common/cache/aq;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/cache/x;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3622
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3623
    new-instance v0, Lcom/google/common/cache/ar;

    invoke-direct {v0, p0}, Lcom/google/common/cache/ar;-><init>(Lcom/google/common/cache/aq;)V

    iput-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    return-void
.end method

.method private a()Lcom/google/common/cache/x;
    .registers 3

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    .line 3675
    iget-object v1, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .prologue
    .line 3725
    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    .line 3726
    :goto_6
    iget-object v1, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    if-eq v0, v1, :cond_13

    .line 3727
    invoke-interface {v0}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v1

    .line 3728
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->c(Lcom/google/common/cache/x;)V

    move-object v0, v1

    .line 3730
    goto :goto_6

    .line 3732
    :cond_13
    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    iget-object v1, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0, v1}, Lcom/google/common/cache/x;->setNextInWriteQueue(Lcom/google/common/cache/x;)V

    .line 3733
    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    iget-object v1, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0, v1}, Lcom/google/common/cache/x;->setPreviousInWriteQueue(Lcom/google/common/cache/x;)V

    .line 3734
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3704
    check-cast p1, Lcom/google/common/cache/x;

    .line 3705
    invoke-interface {p1}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 3710
    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 3738
    new-instance v0, Lcom/google/common/cache/as;

    invoke-direct {p0}, Lcom/google/common/cache/aq;->a()Lcom/google/common/cache/x;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/as;-><init>(Lcom/google/common/cache/aq;Lcom/google/common/cache/x;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3622
    check-cast p1, Lcom/google/common/cache/x;

    invoke-interface {p1}, Lcom/google/common/cache/x;->getPreviousInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)V

    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getPreviousInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)V

    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-static {p1, v0}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3622
    invoke-direct {p0}, Lcom/google/common/cache/aq;->a()Lcom/google/common/cache/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/common/cache/aq;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3692
    check-cast p1, Lcom/google/common/cache/x;

    .line 3693
    invoke-interface {p1}, Lcom/google/common/cache/x;->getPreviousInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    .line 3694
    invoke-interface {p1}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v1

    .line 3695
    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)V

    .line 3696
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->c(Lcom/google/common/cache/x;)V

    .line 3698
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final size()I
    .registers 4

    .prologue
    .line 3715
    const/4 v1, 0x0

    .line 3716
    iget-object v0, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    if-eq v0, v2, :cond_12

    .line 3718
    add-int/lit8 v1, v1, 0x1

    .line 3717
    invoke-interface {v0}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    goto :goto_7

    .line 3720
    :cond_12
    return v1
.end method
