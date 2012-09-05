.class public Lcom/google/googlenav/u;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/u;->a:Z

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-static {}, Lcom/google/googlenav/u;->a()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .registers 6

    invoke-static {}, Lcom/google/googlenav/z;->values()[Lcom/google/googlenav/z;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_17

    aget-object v3, v1, v0

    sget-object v4, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method public static a(Lcom/google/googlenav/z;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static a(Lcom/google/googlenav/z;Landroid/os/Handler;JJLap/c;J)V
    .registers 15

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_d

    monitor-exit p0

    :goto_c
    return-void

    :cond_d
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/googlenav/u;->d(Lcom/google/googlenav/z;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, p2

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/x;

    invoke-static {v0}, Lcom/google/googlenav/x;->a(Lcom/google/googlenav/x;)Z

    move-result v5

    if-eqz v5, :cond_5b

    if-eqz p1, :cond_38

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-long v0, v1, p4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :goto_36
    move-wide v1, v0

    goto :goto_1a

    :cond_38
    invoke-static {p0, v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    invoke-virtual {v0}, Lcom/google/googlenav/x;->run()V

    move-wide v0, v1

    goto :goto_33

    :cond_40
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    new-instance v0, Lcom/google/googlenav/w;

    invoke-direct {v0, v3}, Lcom/google/googlenav/w;-><init>(Ljava/util/List;)V

    new-instance v1, Lap/d;

    invoke-direct {v1, p6, v0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p7, p8}, Lap/d;->a(J)V

    invoke-virtual {v1}, Lap/d;->g()V

    :cond_56
    monitor-exit p0

    goto :goto_c

    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_58

    throw v0

    :cond_5b
    move-wide v0, v1

    goto :goto_36
.end method

.method public static a(Lcom/google/googlenav/z;Lap/c;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_d

    monitor-exit p0

    :goto_c
    return-void

    :cond_d
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/googlenav/u;->d(Lcom/google/googlenav/z;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Lap/b;

    new-instance v2, Lcom/google/googlenav/v;

    invoke-direct {v2, v1, p0}, Lcom/google/googlenav/v;-><init>(Ljava/util/List;Lcom/google/googlenav/z;)V

    invoke-direct {v0, p1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lap/b;->g()V

    :cond_28
    monitor-exit p0

    goto :goto_c

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public static a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_13

    invoke-static {p0, p1}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    invoke-virtual {p1}, Lcom/google/googlenav/x;->run()V

    monitor-exit p0

    :goto_12
    return-void

    :cond_13
    if-nez p2, :cond_1e

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_19
    monitor-exit p0

    goto :goto_12

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    goto :goto_19
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/u;->a:Z

    return-void
.end method

.method public static b(Lcom/google/googlenav/z;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_d

    monitor-exit p0

    :goto_c
    return-void

    :cond_d
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/googlenav/u;->d(Lcom/google/googlenav/z;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/x;

    invoke-static {p0, v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    invoke-virtual {v0}, Lcom/google/googlenav/x;->run()V

    goto :goto_19

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    goto :goto_c
.end method

.method static synthetic b(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    return-void
.end method

.method public static c()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/u;->a:Z

    return-void
.end method

.method private static c(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V
    .registers 5

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_c
    invoke-static {p1}, Lcom/google/googlenav/x;->a(Lcom/google/googlenav/x;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->z()Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to run a DeferredTask of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on a non-UI thread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    return-void
.end method

.method public static c(Lcom/google/googlenav/z;)Z
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private static d(Lcom/google/googlenav/z;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/google/googlenav/z;->a(Lcom/google/googlenav/z;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    sget-object v0, Lcom/google/googlenav/u;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_c

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method static synthetic d()Z
    .registers 1

    sget-boolean v0, Lcom/google/googlenav/u;->a:Z

    return v0
.end method
