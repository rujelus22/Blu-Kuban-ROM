.class public Lz/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/x;


# instance fields
.field final synthetic a:Lz/j;

.field private b:Ljava/util/Map;


# virtual methods
.method public a(Ljava/lang/Class;)Lz/y;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v0, p0, Lz/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 670
    if-eqz v0, :cond_2a

    .line 671
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/y;

    .line 673
    :goto_11
    if-nez v0, :cond_23

    .line 675
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/y;

    .line 676
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_1e} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1e} :catch_27

    .line 686
    iget-object v1, p0, Lz/l;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_23
    :goto_23
    return-object v0

    .line 677
    :catch_24
    move-exception v0

    move-object v0, v1

    .line 680
    goto :goto_23

    .line 681
    :catch_27
    move-exception v0

    move-object v0, v1

    .line 684
    goto :goto_23

    :cond_2a
    move-object v0, v1

    goto :goto_11
.end method

.method a()V
    .registers 5

    .prologue
    .line 700
    iget-object v0, p0, Lz/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 701
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/y;

    .line 702
    if-eqz v0, :cond_a

    .line 703
    iget-object v2, p0, Lz/l;->a:Lz/j;

    sget-object v3, Lz/i;->b:Lz/i;

    invoke-virtual {v0, v2, v3}, Lz/y;->a(Lz/j;Lz/i;)Z

    goto :goto_a

    .line 706
    :cond_26
    return-void
.end method
