.class public final Lcom/a/a/a/a/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_14
    iget-object v2, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_27

    :try_start_17
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_24

    :try_start_22
    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v1, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    :try_start_6
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_28

    :try_start_6
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_13
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_25

    :try_start_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    :try_start_6
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_21

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1e

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    :try_start_1c
    monitor-exit v1

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v2

    throw v0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_1e
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4b

    :try_start_6
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_2b

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_4e

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_4b

    :goto_2a
    return-void

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    :try_start_2d
    iget-object v3, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_43
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_4e

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4b

    goto :goto_2a

    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v2

    throw v0
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_4b
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/a/a/a/a/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
