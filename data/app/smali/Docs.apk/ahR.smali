.class LahR;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:LahR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LahI",
            "<TK;TV;>.ahR;"
        }
    .end annotation
.end field

.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:LahI;

.field final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LahI;Ljava/lang/Object;Ljava/util/Collection;LahR;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;",
            "LahI",
            "<TK;TV;>.ahR;)V"
        }
    .end annotation

    .prologue
    .line 406
    iput-object p1, p0, LahR;->b:LahI;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 407
    iput-object p2, p0, LahR;->a:Ljava/lang/Object;

    .line 408
    iput-object p3, p0, LahR;->a:Ljava/util/Collection;

    .line 409
    iput-object p4, p0, LahR;->a:LahR;

    .line 410
    if-nez p4, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, LahR;->b:Ljava/util/Collection;

    .line 412
    return-void

    .line 410
    :cond_11
    invoke-virtual {p4}, LahR;->a()Ljava/util/Collection;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method a()LahR;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LahI",
            "<TK;TV;>.ahR;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, LahR;->a:LahR;

    return-object v0
.end method

.method a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, LahR;->a:Ljava/lang/Object;

    return-object v0
.end method

.method a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    return-object v0
.end method

.method a()V
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, LahR;->a:LahR;

    if-eqz v0, :cond_19

    .line 423
    iget-object v0, p0, LahR;->a:LahR;

    invoke-virtual {v0}, LahR;->a()V

    .line 424
    iget-object v0, p0, LahR;->a:LahR;

    invoke-virtual {v0}, LahR;->a()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, LahR;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_33

    .line 425
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 427
    :cond_19
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 428
    iget-object v0, p0, LahR;->b:LahI;

    invoke-static {v0}, LahI;->a(LahI;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LahR;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 429
    if-eqz v0, :cond_33

    .line 430
    iput-object v0, p0, LahR;->a:Ljava/util/Collection;

    .line 433
    :cond_33
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, LahR;->a()V

    .line 549
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 550
    iget-object v1, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 551
    if-eqz v1, :cond_1b

    .line 552
    iget-object v2, p0, LahR;->b:LahI;

    invoke-static {v2}, LahI;->b(LahI;)I

    .line 553
    if-eqz v0, :cond_1b

    .line 554
    invoke-virtual {p0}, LahR;->c()V

    .line 557
    :cond_1b
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 567
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 568
    const/4 v0, 0x0

    .line 579
    :cond_7
    :goto_7
    return v0

    .line 570
    :cond_8
    invoke-virtual {p0}, LahR;->size()I

    move-result v1

    .line 571
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 572
    if-eqz v0, :cond_7

    .line 573
    iget-object v2, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 574
    iget-object v3, p0, LahR;->b:LahI;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, LahI;->a(LahI;I)I

    .line 575
    if-nez v1, :cond_7

    .line 576
    invoke-virtual {p0}, LahR;->c()V

    goto :goto_7
.end method

.method b()V
    .registers 3

    .prologue
    .line 440
    iget-object v0, p0, LahR;->a:LahR;

    if-eqz v0, :cond_a

    .line 441
    iget-object v0, p0, LahR;->a:LahR;

    invoke-virtual {v0}, LahR;->b()V

    .line 445
    :cond_9
    :goto_9
    return-void

    .line 442
    :cond_a
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    iget-object v0, p0, LahR;->b:LahI;

    invoke-static {v0}, LahI;->a(LahI;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LahR;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method c()V
    .registers 4

    .prologue
    .line 459
    iget-object v0, p0, LahR;->a:LahR;

    if-eqz v0, :cond_a

    .line 460
    iget-object v0, p0, LahR;->a:LahR;

    invoke-virtual {v0}, LahR;->c()V

    .line 464
    :goto_9
    return-void

    .line 462
    :cond_a
    iget-object v0, p0, LahR;->b:LahI;

    invoke-static {v0}, LahI;->a(LahI;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LahR;->a:Ljava/lang/Object;

    iget-object v2, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 593
    invoke-virtual {p0}, LahR;->size()I

    move-result v0

    .line 594
    if-nez v0, :cond_7

    .line 600
    :goto_6
    return-void

    .line 597
    :cond_7
    iget-object v1, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 598
    iget-object v1, p0, LahR;->b:LahI;

    invoke-static {v1, v0}, LahI;->b(LahI;I)I

    .line 599
    invoke-virtual {p0}, LahR;->b()V

    goto :goto_6
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 583
    invoke-virtual {p0}, LahR;->a()V

    .line 584
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, LahR;->a()V

    .line 589
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 472
    if-ne p1, p0, :cond_4

    .line 473
    const/4 v0, 0x1

    .line 476
    :goto_3
    return v0

    .line 475
    :cond_4
    invoke-virtual {p0}, LahR;->a()V

    .line 476
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 480
    invoke-virtual {p0}, LahR;->a()V

    .line 481
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, LahR;->a()V

    .line 495
    new-instance v0, LahS;

    invoke-direct {v0, p0}, LahS;-><init>(LahR;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 603
    invoke-virtual {p0}, LahR;->a()V

    .line 604
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 605
    if-eqz v0, :cond_13

    .line 606
    iget-object v1, p0, LahR;->b:LahI;

    invoke-static {v1}, LahI;->a(LahI;)I

    .line 607
    invoke-virtual {p0}, LahR;->b()V

    .line 609
    :cond_13
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 613
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 614
    const/4 v0, 0x0

    .line 623
    :cond_7
    :goto_7
    return v0

    .line 616
    :cond_8
    invoke-virtual {p0}, LahR;->size()I

    move-result v1

    .line 617
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 618
    if-eqz v0, :cond_7

    .line 619
    iget-object v2, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 620
    iget-object v3, p0, LahR;->b:LahI;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, LahI;->a(LahI;I)I

    .line 621
    invoke-virtual {p0}, LahR;->b()V

    goto :goto_7
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 627
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, LahR;->size()I

    move-result v0

    .line 629
    iget-object v1, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 630
    if-eqz v1, :cond_1f

    .line 631
    iget-object v2, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 632
    iget-object v3, p0, LahR;->b:LahI;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, LahI;->a(LahI;I)I

    .line 633
    invoke-virtual {p0}, LahR;->b()V

    .line 635
    :cond_1f
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, LahR;->a()V

    .line 468
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, LahR;->a()V

    .line 486
    iget-object v0, p0, LahR;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
