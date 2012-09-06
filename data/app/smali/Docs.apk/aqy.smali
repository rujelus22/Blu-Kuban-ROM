.class Laqy;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# instance fields
.field a:LaqA;

.field final a:Laqw;

.field a:Laqz;

.field a:Ljava/lang/reflect/Method;

.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "LaqA;",
            "Ljava/util/List",
            "<",
            "Laqx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Laqw;)V
    .registers 3
    .parameter

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    sget-object v0, Laqz;->a:Laqz;

    iput-object v0, p0, Laqy;->a:Laqz;

    .line 536
    iput-object p1, p0, Laqy;->a:Laqw;

    .line 537
    return-void
.end method


# virtual methods
.method a(Laqx;)V
    .registers 5
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Laqy;->a:Laqw;

    invoke-virtual {v0, p1}, Laqw;->a(Laqv;)V

    .line 615
    iget-object v0, p0, Laqy;->a:Laqz;

    sget-object v1, Laqz;->c:Laqz;

    if-eq v0, v1, :cond_11

    invoke-virtual {p1}, Laqx;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 631
    :cond_11
    :goto_11
    return-void

    .line 620
    :cond_12
    iget-object v0, p0, Laqy;->a:Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 622
    iget-object v0, p1, Laqx;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Laqy;->a:Ljava/lang/reflect/Method;

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Laqy;->a:LaqA;

    move-object v1, v0

    .line 624
    :goto_1f
    iget-object v0, p0, Laqy;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 625
    if-nez v0, :cond_33

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 627
    iget-object v2, p0, Laqy;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_33
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 622
    :cond_37
    new-instance v0, LaqA;

    iget-object v1, p1, Laqx;->a:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, LaqA;-><init>(Ljava/lang/reflect/Method;)V

    move-object v1, v0

    goto :goto_1f
.end method

.method a(Ljava/lang/reflect/Method;ZLaqx;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Laqy;->a:Laqz;

    sget-object v1, Laqz;->a:Laqz;

    if-ne v0, v1, :cond_9

    .line 606
    :goto_8
    return v2

    .line 566
    :cond_9
    iget-object v0, p0, Laqy;->a:Ljava/util/Map;

    if-nez v0, :cond_3f

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laqy;->a:Ljava/util/Map;

    .line 570
    iget-object v0, p0, Laqy;->a:Laqw;

    iget-object v1, v0, Laqw;->a:Laqv;

    :goto_18
    if-eqz v1, :cond_3f

    .line 572
    instance-of v0, v1, Laqx;

    if-nez v0, :cond_21

    .line 571
    :cond_1e
    :goto_1e
    iget-object v1, v1, Laqv;->b:Laqv;

    goto :goto_18

    :cond_21
    move-object v0, v1

    .line 573
    check-cast v0, Laqx;

    .line 574
    invoke-virtual {v0}, Laqx;->a()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 575
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 576
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v5, p0, Laqy;->a:Ljava/util/Map;

    new-instance v6, LaqA;

    iget-object v0, v0, Laqx;->a:Ljava/lang/reflect/Method;

    invoke-direct {v6, v0}, LaqA;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 581
    :cond_3f
    iput-object p1, p0, Laqy;->a:Ljava/lang/reflect/Method;

    .line 582
    new-instance v0, LaqA;

    invoke-direct {v0, p1}, LaqA;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Laqy;->a:LaqA;

    .line 583
    iget-object v1, p0, Laqy;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 585
    if-eqz v0, :cond_89

    .line 586
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    .line 587
    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 588
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqx;

    .line 589
    iget-object v4, v0, Laqx;->a:Ljava/lang/reflect/Method;

    invoke-static {p1, v4}, Laqt;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 590
    iget-boolean v4, v0, Laqx;->b:Z

    if-eqz v4, :cond_73

    iget-boolean v4, v0, Laqx;->c:Z

    if-eqz v4, :cond_87

    :cond_73
    move v4, v3

    .line 592
    :goto_74
    if-eqz p3, :cond_78

    .line 593
    iput-boolean v4, p3, Laqx;->c:Z

    .line 598
    :cond_78
    if-nez p2, :cond_7c

    if-nez v4, :cond_8d

    .line 600
    :cond_7c
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 601
    iget-object v1, p0, Laqy;->a:Laqw;

    invoke-virtual {v1, v0}, Laqw;->b(Laqv;)V

    move v0, v3

    :goto_85
    move v1, v0

    .line 604
    goto :goto_57

    :cond_87
    move v4, v2

    .line 590
    goto :goto_74

    :cond_89
    move v1, v2

    :cond_8a
    move v2, v1

    .line 606
    goto/16 :goto_8

    :cond_8d
    move v0, v1

    goto :goto_85
.end method
