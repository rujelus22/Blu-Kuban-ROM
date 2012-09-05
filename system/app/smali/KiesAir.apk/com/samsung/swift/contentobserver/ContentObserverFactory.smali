.class public Lcom/samsung/swift/contentobserver/ContentObserverFactory;
.super Ljava/lang/Object;
.source "ContentObserverFactory.java"


# static fields
.field private static instance:Lcom/samsung/swift/contentobserver/ContentObserverFactory;


# instance fields
.field private observers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/swift/contentobserver/SwiftContentObserver;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/swift/contentobserver/SwiftContentObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->observers:Ljava/util/Map;

    .line 109
    return-void
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;
    .registers 2

    .prologue
    .line 116
    const-class v1, Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance:Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    if-nez v0, :cond_e

    .line 118
    new-instance v0, Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    invoke-direct {v0}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;-><init>()V

    sput-object v0, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance:Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    .line 120
    :cond_e
    sget-object v0, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance:Lcom/samsung/swift/contentobserver/ContentObserverFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/swift/contentobserver/SwiftContentObserver;",
            ">;)",
            "Lcom/samsung/swift/contentobserver/SwiftContentObserver;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/samsung/swift/contentobserver/SwiftContentObserver;>;"
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->observers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 134
    .local v2, weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/samsung/swift/contentobserver/SwiftContentObserver;>;"
    const/4 v1, 0x0

    .line 135
    .local v1, observer:Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    if-eqz v2, :cond_12

    .line 137
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #observer:Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    check-cast v1, Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_35

    .line 139
    .restart local v1       #observer:Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    :cond_12
    if-nez v1, :cond_1a

    .line 143
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #observer:Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    check-cast v1, Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_1a} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_14 .. :try_end_1a} :catch_38

    .line 154
    .restart local v1       #observer:Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    :cond_1a
    if-eqz v2, :cond_22

    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 156
    :cond_22
    new-instance v2, Ljava/lang/ref/WeakReference;

    .end local v2           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/samsung/swift/contentobserver/SwiftContentObserver;>;"
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 157
    .restart local v2       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/samsung/swift/contentobserver/SwiftContentObserver;>;"
    iget-object v3, p0, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->observers:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_35

    .line 159
    :cond_2c
    monitor-exit p0

    return-object v1

    .line 145
    .end local v1           #observer:Lcom/samsung/swift/contentobserver/SwiftContentObserver;
    :catch_2e
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_2f
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_35

    .line 133
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v2           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/samsung/swift/contentobserver/SwiftContentObserver;>;"
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3

    .line 149
    .restart local v2       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/samsung/swift/contentobserver/SwiftContentObserver;>;"
    :catch_38
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/InstantiationException;
    :try_start_39
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_35
.end method
