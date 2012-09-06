.class abstract LagM;
.super Ljava/lang/Object;
.source "LocalCache.java"


# instance fields
.field a:I

.field a:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field a:LagV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagV",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field a:Lahv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<TK;TV;>.ahv;"
        }
    .end annotation
.end field

.field a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "LagU",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic b:Lagu;

.field b:Lahv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<TK;TV;>.ahv;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lagu;)V
    .registers 3
    .parameter

    .prologue
    .line 4290
    iput-object p1, p0, LagM;->b:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4291
    iget-object v0, p1, Lagu;->a:[LagV;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LagM;->a:I

    .line 4292
    const/4 v0, -0x1

    iput v0, p0, LagM;->b:I

    .line 4293
    invoke-virtual {p0}, LagM;->a()V

    .line 4294
    return-void
.end method


# virtual methods
.method a()Lahv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lagu",
            "<TK;TV;>.ahv;"
        }
    .end annotation

    .prologue
    .line 4373
    iget-object v0, p0, LagM;->a:Lahv;

    if-nez v0, :cond_a

    .line 4374
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4376
    :cond_a
    iget-object v0, p0, LagM;->a:Lahv;

    iput-object v0, p0, LagM;->b:Lahv;

    .line 4377
    invoke-virtual {p0}, LagM;->a()V

    .line 4378
    iget-object v0, p0, LagM;->b:Lahv;

    return-object v0
.end method

.method final a()V
    .registers 4

    .prologue
    .line 4297
    const/4 v0, 0x0

    iput-object v0, p0, LagM;->a:Lahv;

    .line 4299
    invoke-virtual {p0}, LagM;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4317
    :cond_9
    :goto_9
    return-void

    .line 4303
    :cond_a
    invoke-virtual {p0}, LagM;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4307
    :cond_10
    iget v0, p0, LagM;->a:I

    if-ltz v0, :cond_9

    .line 4308
    iget-object v0, p0, LagM;->b:Lagu;

    iget-object v0, v0, Lagu;->a:[LagV;

    iget v1, p0, LagM;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LagM;->a:I

    aget-object v0, v0, v1

    iput-object v0, p0, LagM;->a:LagV;

    .line 4309
    iget-object v0, p0, LagM;->a:LagV;

    iget v0, v0, LagV;->a:I

    if-eqz v0, :cond_10

    .line 4310
    iget-object v0, p0, LagM;->a:LagV;

    iget-object v0, v0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, LagM;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4311
    iget-object v0, p0, LagM;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LagM;->b:I

    .line 4312
    invoke-virtual {p0}, LagM;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method a()Z
    .registers 2

    .prologue
    .line 4323
    iget-object v0, p0, LagM;->a:LagU;

    if-eqz v0, :cond_23

    .line 4324
    iget-object v0, p0, LagM;->a:LagU;

    invoke-interface {v0}, LagU;->a()LagU;

    move-result-object v0

    iput-object v0, p0, LagM;->a:LagU;

    :goto_c
    iget-object v0, p0, LagM;->a:LagU;

    if-eqz v0, :cond_23

    .line 4325
    iget-object v0, p0, LagM;->a:LagU;

    invoke-virtual {p0, v0}, LagM;->a(LagU;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4326
    const/4 v0, 0x1

    .line 4330
    :goto_19
    return v0

    .line 4324
    :cond_1a
    iget-object v0, p0, LagM;->a:LagU;

    invoke-interface {v0}, LagU;->a()LagU;

    move-result-object v0

    iput-object v0, p0, LagM;->a:LagU;

    goto :goto_c

    .line 4330
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method a(LagU;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 4353
    :try_start_0
    iget-object v0, p0, LagM;->b:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    .line 4354
    invoke-interface {p1}, LagU;->a()Ljava/lang/Object;

    move-result-object v2

    .line 4355
    iget-object v3, p0, LagM;->b:Lagu;

    invoke-virtual {v3, p1, v0, v1}, Lagu;->a(LagU;J)Ljava/lang/Object;

    move-result-object v0

    .line 4356
    if-eqz v0, :cond_24

    .line 4357
    new-instance v1, Lahv;

    iget-object v3, p0, LagM;->b:Lagu;

    invoke-direct {v1, v3, v2, v0}, Lahv;-><init>(Lagu;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, LagM;->a:Lahv;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2b

    .line 4358
    const/4 v0, 0x1

    .line 4364
    iget-object v1, p0, LagM;->a:LagV;

    invoke-virtual {v1}, LagV;->l()V

    :goto_23
    return v0

    .line 4361
    :cond_24
    const/4 v0, 0x0

    .line 4364
    iget-object v1, p0, LagM;->a:LagV;

    invoke-virtual {v1}, LagV;->l()V

    goto :goto_23

    :catchall_2b
    move-exception v0

    iget-object v1, p0, LagM;->a:LagV;

    invoke-virtual {v1}, LagV;->l()V

    throw v0
.end method

.method b()Z
    .registers 4

    .prologue
    .line 4337
    :cond_0
    iget v0, p0, LagM;->b:I

    if-ltz v0, :cond_26

    .line 4338
    iget-object v0, p0, LagM;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, LagM;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LagM;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    iput-object v0, p0, LagM;->a:LagU;

    if-eqz v0, :cond_0

    .line 4339
    iget-object v0, p0, LagM;->a:LagU;

    invoke-virtual {p0, v0}, LagM;->a(LagU;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, LagM;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4340
    :cond_24
    const/4 v0, 0x1

    .line 4344
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 4369
    iget-object v0, p0, LagM;->a:Lahv;

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
    .line 4382
    iget-object v0, p0, LagM;->b:Lahv;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 4383
    iget-object v0, p0, LagM;->b:Lagu;

    iget-object v1, p0, LagM;->b:Lahv;

    invoke-virtual {v1}, Lahv;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lagu;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    const/4 v0, 0x0

    iput-object v0, p0, LagM;->b:Lahv;

    .line 4385
    return-void

    .line 4382
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
