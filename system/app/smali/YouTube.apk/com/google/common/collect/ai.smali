.class Lcom/google/common/collect/ai;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field final d:Lcom/google/common/collect/ai;

.field final e:Ljava/util/Collection;

.field final synthetic f:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/ai;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    .line 395
    iput-object p3, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    .line 396
    iput-object p4, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    .line 397
    if-nez p4, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/google/common/collect/ai;->e:Ljava/util/Collection;

    .line 399
    return-void

    .line 397
    :cond_11
    iget-object v0, p4, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    goto :goto_e
.end method


# virtual methods
.method final a()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    if-eqz v0, :cond_17

    .line 410
    iget-object v0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/google/common/collect/ai;->a()V

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    iget-object v0, v0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/ai;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_31

    .line 412
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 414
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 415
    iget-object v0, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 416
    if-eqz v0, :cond_31

    .line 417
    iput-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    .line 420
    :cond_31
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 533
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 534
    iget-object v1, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 535
    if-eqz v1, :cond_1b

    .line 536
    iget-object v2, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 537
    if-eqz v0, :cond_1b

    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->c()V

    .line 541
    :cond_1b
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 551
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 552
    const/4 v0, 0x0

    .line 563
    :cond_7
    :goto_7
    return v0

    .line 554
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->size()I

    move-result v1

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 556
    if-eqz v0, :cond_7

    .line 557
    iget-object v2, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 558
    iget-object v3, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 559
    if-nez v1, :cond_7

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->c()V

    goto :goto_7
.end method

.method final b()V
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    if-eqz v0, :cond_a

    .line 428
    iget-object v0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/google/common/collect/ai;->b()V

    .line 432
    :cond_9
    :goto_9
    return-void

    .line 429
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 430
    iget-object v0, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method final c()V
    .registers 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    if-eqz v0, :cond_a

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/google/common/collect/ai;->c()V

    .line 451
    :goto_9
    return-void

    .line 449
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->size()I

    move-result v0

    .line 578
    if-nez v0, :cond_7

    .line 584
    :goto_6
    return-void

    .line 581
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 582
    iget-object v1, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 583
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->b()V

    goto :goto_6
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 568
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 573
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 459
    if-ne p1, p0, :cond_4

    .line 460
    const/4 v0, 0x1

    .line 463
    :goto_3
    return v0

    .line 462
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 463
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 468
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 482
    new-instance v0, Lcom/google/common/collect/aj;

    invoke-direct {v0, p0}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/ai;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 588
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 589
    if-eqz v0, :cond_13

    .line 590
    iget-object v1, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 591
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->b()V

    .line 593
    :cond_13
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 597
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 598
    const/4 v0, 0x0

    .line 607
    :cond_7
    :goto_7
    return v0

    .line 600
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->size()I

    move-result v1

    .line 601
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 602
    if-eqz v0, :cond_7

    .line 603
    iget-object v2, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 604
    iget-object v3, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 605
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->b()V

    goto :goto_7
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 611
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->size()I

    move-result v0

    .line 613
    iget-object v1, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 614
    if-eqz v1, :cond_1f

    .line 615
    iget-object v2, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 616
    iget-object v3, p0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 617
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->b()V

    .line 619
    :cond_1f
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 455
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->a()V

    .line 473
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
