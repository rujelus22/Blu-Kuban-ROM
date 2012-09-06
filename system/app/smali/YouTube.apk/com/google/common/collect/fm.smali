.class final Lcom/google/common/collect/fm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/fk;

.field d:Lcom/google/common/collect/fk;

.field e:Lcom/google/common/collect/fk;

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/common/collect/fm;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    .line 402
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    .line 403
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .registers 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/common/collect/fm;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v1

    .line 416
    invoke-static {p3, v1}, Lcom/google/common/base/ag;->b(II)I

    .line 417
    div-int/lit8 v0, v1, 0x2

    if-lt p3, v0, :cond_2b

    .line 418
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$700(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    .line 419
    iput v1, p0, Lcom/google/common/collect/fm;->b:I

    .line 420
    :goto_22
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_40

    .line 421
    invoke-virtual {p0}, Lcom/google/common/collect/fm;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_22

    .line 424
    :cond_2b
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    .line 425
    :goto_37
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_40

    .line 426
    invoke-virtual {p0}, Lcom/google/common/collect/fm;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_37

    .line 429
    :cond_40
    iput-object p2, p0, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    .line 431
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/collect/fm;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fk;)Lcom/google/common/collect/fk;
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->access$800(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fk;)Lcom/google/common/collect/fk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    .line 494
    iget v0, p0, Lcom/google/common/collect/fm;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fm;->b:I

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    .line 496
    return-void
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

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
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

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
    .line 440
    iget-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    .line 442
    iget-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    .line 443
    iget v0, p0, Lcom/google/common/collect/fm;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fm;->b:I

    .line 444
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 463
    iget v0, p0, Lcom/google/common/collect/fm;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    .line 456
    iget-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    .line 457
    iget v0, p0, Lcom/google/common/collect/fm;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fm;->b:I

    .line 458
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 468
    iget v0, p0, Lcom/google/common/collect/fm;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 474
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iget-object v1, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    if-eq v0, v1, :cond_27

    .line 475
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fk;

    .line 476
    iget v0, p0, Lcom/google/common/collect/fm;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fm;->b:I

    .line 480
    :goto_1a
    iget-object v0, p0, Lcom/google/common/collect/fm;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/fk;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fk;)V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    .line 482
    return-void

    .line 473
    :cond_25
    const/4 v0, 0x0

    goto :goto_5

    .line 478
    :cond_27
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fk;

    goto :goto_1a
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 487
    iget-object v0, p0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fk;

    iput-object p1, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    .line 488
    return-void

    .line 486
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method
