.class abstract Lcom/google/common/collect/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field e:Lcom/google/common/collect/au;

.field f:Lcom/google/common/collect/aZ;

.field g:Lcom/google/common/collect/aZ;

.field final synthetic h:Lcom/google/common/collect/X;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;)V
    .registers 3
    .parameter

    .prologue
    .line 3435
    iput-object p1, p0, Lcom/google/common/collect/ap;->h:Lcom/google/common/collect/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3436
    iget-object v0, p1, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ap;->b:I

    .line 3437
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ap;->c:I

    .line 3438
    invoke-virtual {p0}, Lcom/google/common/collect/ap;->b()V

    .line 3439
    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/au;)Z
    .registers 6
    .parameter

    .prologue
    .line 3500
    invoke-interface {p1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v0

    .line 3502
    invoke-interface {p1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3503
    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/google/common/collect/ap;->h:Lcom/google/common/collect/X;

    invoke-virtual {v2}, Lcom/google/common/collect/X;->b()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/common/collect/ap;->h:Lcom/google/common/collect/X;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 3505
    :cond_20
    new-instance v2, Lcom/google/common/collect/aZ;

    iget-object v3, p0, Lcom/google/common/collect/ap;->h:Lcom/google/common/collect/X;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/aZ;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/ap;->f:Lcom/google/common/collect/aZ;

    .line 3506
    const/4 v0, 0x1

    .line 3509
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method final b()V
    .registers 4

    .prologue
    .line 3442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ap;->f:Lcom/google/common/collect/aZ;

    .line 3444
    invoke-virtual {p0}, Lcom/google/common/collect/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3462
    :cond_9
    :goto_9
    return-void

    .line 3448
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/collect/ap;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3452
    :cond_10
    iget v0, p0, Lcom/google/common/collect/ap;->b:I

    if-ltz v0, :cond_9

    .line 3453
    iget-object v0, p0, Lcom/google/common/collect/ap;->h:Lcom/google/common/collect/X;

    iget-object v0, v0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    iget v1, p0, Lcom/google/common/collect/ap;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/ap;->b:I

    aget-object v0, v0, v1

    .line 3454
    iget v1, v0, Lcom/google/common/collect/av;->a:I

    if-eqz v1, :cond_10

    .line 3455
    iget-object v0, v0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/ap;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3456
    iget-object v0, p0, Lcom/google/common/collect/ap;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ap;->c:I

    .line 3457
    invoke-virtual {p0}, Lcom/google/common/collect/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method c()Z
    .registers 2

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    if-eqz v0, :cond_23

    .line 3470
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    :goto_c
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    if-eqz v0, :cond_23

    .line 3472
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ap;->a(Lcom/google/common/collect/au;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3473
    const/4 v0, 0x1

    .line 3477
    :goto_19
    return v0

    .line 3471
    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    goto :goto_c

    .line 3477
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method d()Z
    .registers 4

    .prologue
    .line 3485
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    if-ltz v0, :cond_26

    .line 3486
    iget-object v0, p0, Lcom/google/common/collect/ap;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/ap;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/ap;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    iput-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    if-eqz v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:Lcom/google/common/collect/au;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ap;->a(Lcom/google/common/collect/au;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/google/common/collect/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3488
    :cond_24
    const/4 v0, 0x1

    .line 3492
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method e()Lcom/google/common/collect/aZ;
    .registers 2

    .prologue
    .line 3518
    iget-object v0, p0, Lcom/google/common/collect/ap;->f:Lcom/google/common/collect/aZ;

    if-nez v0, :cond_a

    .line 3519
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3521
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/ap;->f:Lcom/google/common/collect/aZ;

    iput-object v0, p0, Lcom/google/common/collect/ap;->g:Lcom/google/common/collect/aZ;

    .line 3522
    invoke-virtual {p0}, Lcom/google/common/collect/ap;->b()V

    .line 3523
    iget-object v0, p0, Lcom/google/common/collect/ap;->g:Lcom/google/common/collect/aZ;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 3514
    iget-object v0, p0, Lcom/google/common/collect/ap;->f:Lcom/google/common/collect/aZ;

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
    .line 3527
    iget-object v0, p0, Lcom/google/common/collect/ap;->g:Lcom/google/common/collect/aZ;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 3528
    iget-object v0, p0, Lcom/google/common/collect/ap;->h:Lcom/google/common/collect/X;

    iget-object v1, p0, Lcom/google/common/collect/ap;->g:Lcom/google/common/collect/aZ;

    invoke-virtual {v1}, Lcom/google/common/collect/aZ;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/X;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ap;->g:Lcom/google/common/collect/aZ;

    .line 3530
    return-void

    .line 3527
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
