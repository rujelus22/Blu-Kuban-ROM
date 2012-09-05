.class public Lorg/dom4j/tree/NamespaceCache;
.super Ljava/lang/Object;
.source "NamespaceCache.java"


# static fields
.field private static final CONCURRENTREADERHASHMAP_CLASS:Ljava/lang/String; = "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap"

.field protected static cache:Ljava/util/Map;

.field protected static noPrefixCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 48
    :try_start_0
    const-string v4, "java.util.concurrent.ConcurrentHashMap"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, clazz:Ljava/lang/Class;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 50
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 51
    .local v1, construct:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 52
    new-instance v6, Ljava/lang/Float;

    const/high16 v7, 0x3f40

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    sput-object v4, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    .line 53
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 54
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Float;

    const/high16 v7, 0x3f40

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    sput-object v4, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6d

    .line 28
    .end local v1           #construct:Ljava/lang/reflect/Constructor;
    :goto_6c
    return-void

    .line 55
    :catch_6d
    move-exception v2

    .line 58
    .local v2, t1:Ljava/lang/Throwable;
    :try_start_6e
    const-string v4, "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    sput-object v4, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    sput-object v4, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_84} :catch_85

    goto :goto_6c

    .line 61
    :catch_85
    move-exception v3

    .line 63
    .local v3, t2:Ljava/lang/Throwable;
    new-instance v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    sput-object v4, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    .line 64
    new-instance v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    sput-object v4, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    goto :goto_6c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 4
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 177
    new-instance v0, Lorg/dom4j/Namespace;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 8
    .parameter "uri"

    .prologue
    .line 115
    sget-object v3, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 116
    .local v2, ref:Ljava/lang/ref/WeakReference;
    const/4 v1, 0x0

    .line 118
    .local v1, answer:Lorg/dom4j/Namespace;
    if-eqz v2, :cond_11

    .line 119
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #answer:Lorg/dom4j/Namespace;
    check-cast v1, Lorg/dom4j/Namespace;

    .line 122
    .restart local v1       #answer:Lorg/dom4j/Namespace;
    :cond_11
    if-nez v1, :cond_3d

    .line 123
    sget-object v4, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    monitor-enter v4

    .line 124
    :try_start_16
    sget-object v3, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    .line 126
    if-eqz v2, :cond_2a

    .line 127
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    .line 130
    :cond_2a
    if-nez v1, :cond_3c

    .line 131
    const-string v3, ""

    invoke-virtual {p0, v3, p1}, Lorg/dom4j/tree/NamespaceCache;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 132
    sget-object v3, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3c
    monitor-exit v4

    .line 137
    :cond_3d
    return-object v1

    .line 123
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 8
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 80
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/NamespaceCache;->getURICache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 81
    .local v3, uriCache:Ljava/util/Map;
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 82
    .local v2, ref:Ljava/lang/ref/WeakReference;
    const/4 v1, 0x0

    .line 84
    .local v1, answer:Lorg/dom4j/Namespace;
    if-eqz v2, :cond_13

    .line 85
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #answer:Lorg/dom4j/Namespace;
    check-cast v1, Lorg/dom4j/Namespace;

    .line 88
    .restart local v1       #answer:Lorg/dom4j/Namespace;
    :cond_13
    if-nez v1, :cond_37

    .line 89
    monitor-enter v3

    .line 90
    :try_start_16
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    .line 92
    if-eqz v2, :cond_28

    .line 93
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    .line 96
    :cond_28
    if-nez v1, :cond_36

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceCache;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 98
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_36
    monitor-exit v3

    .line 103
    :cond_37
    return-object v1

    .line 89
    :catchall_38
    move-exception v4

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_38

    throw v4
.end method

.method protected getURICache(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .parameter "uri"

    .prologue
    .line 150
    sget-object v3, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 152
    .local v1, answer:Ljava/util/Map;
    if-nez v1, :cond_25

    .line 153
    sget-object v4, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    monitor-enter v4

    .line 154
    :try_start_d
    sget-object v3, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 156
    if-nez v1, :cond_24

    .line 157
    new-instance v2, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_26

    .line 158
    .end local v1           #answer:Ljava/util/Map;
    .local v2, answer:Ljava/util/Map;
    :try_start_1e
    sget-object v3, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_29

    move-object v1, v2

    .line 153
    .end local v2           #answer:Ljava/util/Map;
    .restart local v1       #answer:Ljava/util/Map;
    :cond_24
    :try_start_24
    monitor-exit v4

    .line 163
    :cond_25
    return-object v1

    .line 153
    :catchall_26
    move-exception v3

    :goto_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v3

    .end local v1           #answer:Ljava/util/Map;
    .restart local v2       #answer:Ljava/util/Map;
    :catchall_29
    move-exception v3

    move-object v1, v2

    .end local v2           #answer:Ljava/util/Map;
    .restart local v1       #answer:Ljava/util/Map;
    goto :goto_27
.end method
