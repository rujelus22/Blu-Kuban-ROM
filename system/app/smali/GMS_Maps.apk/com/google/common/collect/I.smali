.class Lcom/google/common/collect/I;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field final d:Lcom/google/common/collect/I;

.field final e:Ljava/util/Collection;

.field final synthetic f:Lcom/google/common/collect/z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/I;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/google/common/collect/I;->b:Ljava/lang/Object;

    .line 407
    iput-object p3, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    .line 408
    iput-object p4, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    .line 409
    if-nez p4, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/google/common/collect/I;->e:Ljava/util/Collection;

    .line 411
    return-void

    .line 409
    :cond_11
    invoke-virtual {p4}, Lcom/google/common/collect/I;->e()Ljava/util/Collection;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    if-eqz v0, :cond_19

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    invoke-virtual {v0}, Lcom/google/common/collect/I;->a()V

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    invoke-virtual {v0}, Lcom/google/common/collect/I;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/I;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_33

    .line 424
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 426
    :cond_19
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 427
    iget-object v0, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/I;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 428
    if-eqz v0, :cond_33

    .line 429
    iput-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    .line 432
    :cond_33
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 550
    if-eqz v1, :cond_1b

    .line 551
    iget-object v2, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-static {v2}, Lcom/google/common/collect/z;->c(Lcom/google/common/collect/z;)I

    .line 552
    if-eqz v0, :cond_1b

    .line 553
    invoke-virtual {p0}, Lcom/google/common/collect/I;->d()V

    .line 556
    :cond_1b
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 566
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 567
    const/4 v0, 0x0

    .line 578
    :cond_7
    :goto_7
    return v0

    .line 569
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/I;->size()I

    move-result v1

    .line 570
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 571
    if-eqz v0, :cond_7

    .line 572
    iget-object v2, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 573
    iget-object v3, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;I)I

    .line 574
    if-nez v1, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/google/common/collect/I;->d()V

    goto :goto_7
.end method

.method b()V
    .registers 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    if-eqz v0, :cond_a

    .line 440
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    invoke-virtual {v0}, Lcom/google/common/collect/I;->b()V

    .line 444
    :cond_9
    :goto_9
    return-void

    .line 441
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    iget-object v0, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/I;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/common/collect/I;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/google/common/collect/I;->size()I

    move-result v0

    .line 593
    if-nez v0, :cond_7

    .line 599
    :goto_6
    return-void

    .line 596
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 597
    iget-object v1, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-static {v1, v0}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;I)I

    .line 598
    invoke-virtual {p0}, Lcom/google/common/collect/I;->b()V

    goto :goto_6
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 588
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method d()V
    .registers 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    if-eqz v0, :cond_a

    .line 459
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    invoke-virtual {v0}, Lcom/google/common/collect/I;->d()V

    .line 463
    :goto_9
    return-void

    .line 461
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/I;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method e()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 471
    if-ne p1, p0, :cond_4

    .line 472
    const/4 v0, 0x1

    .line 475
    :goto_3
    return v0

    .line 474
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 475
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method f()Lcom/google/common/collect/I;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/collect/I;->d:Lcom/google/common/collect/I;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 480
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 494
    new-instance v0, Lcom/google/common/collect/J;

    invoke-direct {v0, p0}, Lcom/google/common/collect/J;-><init>(Lcom/google/common/collect/I;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 603
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 604
    if-eqz v0, :cond_13

    .line 605
    iget-object v1, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-static {v1}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;)I

    .line 606
    invoke-virtual {p0}, Lcom/google/common/collect/I;->b()V

    .line 608
    :cond_13
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 612
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 613
    const/4 v0, 0x0

    .line 622
    :cond_7
    :goto_7
    return v0

    .line 615
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/I;->size()I

    move-result v1

    .line 616
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 617
    if-eqz v0, :cond_7

    .line 618
    iget-object v2, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 619
    iget-object v3, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;I)I

    .line 620
    invoke-virtual {p0}, Lcom/google/common/collect/I;->b()V

    goto :goto_7
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 626
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-virtual {p0}, Lcom/google/common/collect/I;->size()I

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 629
    if-eqz v1, :cond_1f

    .line 630
    iget-object v2, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 631
    iget-object v3, p0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;I)I

    .line 632
    invoke-virtual {p0}, Lcom/google/common/collect/I;->b()V

    .line 634
    :cond_1f
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 467
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/common/collect/I;->a()V

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
