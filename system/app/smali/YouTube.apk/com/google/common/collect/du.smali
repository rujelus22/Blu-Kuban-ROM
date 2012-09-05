.class final Lcom/google/common/collect/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/ds;

.field d:Lcom/google/common/collect/ds;

.field e:Lcom/google/common/collect/ds;

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/common/collect/du;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/google/common/collect/du;->a:Ljava/lang/Object;

    .line 329
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/common/collect/du;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/common/collect/fj;->count(Ljava/lang/Object;)I

    move-result v1

    .line 343
    invoke-static {p3, v1}, Lcom/google/common/base/t;->b(II)I

    .line 344
    div-int/lit8 v0, v1, 0x2

    if-lt p3, v0, :cond_2b

    .line 345
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    .line 346
    iput v1, p0, Lcom/google/common/collect/du;->b:I

    .line 347
    :goto_22
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_40

    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/du;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_22

    .line 351
    :cond_2b
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    .line 352
    :goto_37
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_40

    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/du;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_37

    .line 356
    :cond_40
    iput-object p2, p0, Lcom/google/common/collect/du;->a:Ljava/lang/Object;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    .line 358
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/common/collect/du;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/du;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ds;)Lcom/google/common/collect/ds;
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ds;)Lcom/google/common/collect/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    .line 412
    iget v0, p0, Lcom/google/common/collect/du;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/du;->b:I

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    .line 414
    return-void
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    .line 368
    iget v0, p0, Lcom/google/common/collect/du;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/du;->b:I

    .line 369
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/google/common/collect/du;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    .line 379
    iget-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    .line 380
    iget v0, p0, Lcom/google/common/collect/du;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/du;->b:I

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/google/common/collect/du;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->b(Z)V

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iget-object v1, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    if-eq v0, v1, :cond_27

    .line 395
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->e:Lcom/google/common/collect/ds;

    .line 396
    iget v0, p0, Lcom/google/common/collect/du;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/du;->b:I

    .line 400
    :goto_1a
    iget-object v0, p0, Lcom/google/common/collect/du;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/ds;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/ds;)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    .line 402
    return-void

    .line 393
    :cond_25
    const/4 v0, 0x0

    goto :goto_5

    .line 398
    :cond_27
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/du;->c:Lcom/google/common/collect/ds;

    goto :goto_1a
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->b(Z)V

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/du;->d:Lcom/google/common/collect/ds;

    iput-object p1, v0, Lcom/google/common/collect/ds;->b:Ljava/lang/Object;

    .line 407
    return-void

    .line 405
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method
