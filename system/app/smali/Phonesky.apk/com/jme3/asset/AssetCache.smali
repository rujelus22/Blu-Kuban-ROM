.class public Lcom/jme3/asset/AssetCache;
.super Ljava/lang/Object;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/asset/AssetCache$SmartAssetInfo;
    }
.end annotation


# instance fields
.field private final regularCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/jme3/asset/AssetKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final smartCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/jme3/asset/AssetKey;",
            "Lcom/jme3/asset/AssetCache$SmartAssetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/AssetCache;->smartCache:Ljava/util/WeakHashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/AssetCache;->regularCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .registers 8
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 64
    iget-object v4, p0, Lcom/jme3/asset/AssetCache;->regularCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 65
    :try_start_3
    instance-of v3, p2, Lcom/jme3/asset/Asset;

    if-eqz v3, :cond_2a

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->useSmartCache()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 67
    move-object v0, p2

    check-cast v0, Lcom/jme3/asset/Asset;

    move-object v1, v0

    .line 68
    .local v1, asset:Lcom/jme3/asset/Asset;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/jme3/asset/Asset;->setKey(Lcom/jme3/asset/AssetKey;)V

    .line 69
    new-instance v2, Lcom/jme3/asset/AssetCache$SmartAssetInfo;

    invoke-direct {v2}, Lcom/jme3/asset/AssetCache$SmartAssetInfo;-><init>()V

    .line 70
    .local v2, smartInfo:Lcom/jme3/asset/AssetCache$SmartAssetInfo;
    iput-object v1, v2, Lcom/jme3/asset/AssetCache$SmartAssetInfo;->asset:Lcom/jme3/asset/Asset;

    .line 72
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/jme3/asset/AssetCache$SmartAssetInfo;->smartKey:Ljava/lang/ref/WeakReference;

    .line 73
    iget-object v3, p0, Lcom/jme3/asset/AssetCache;->smartCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v1           #asset:Lcom/jme3/asset/Asset;
    .end local v2           #smartInfo:Lcom/jme3/asset/AssetCache$SmartAssetInfo;
    :goto_28
    monitor-exit v4

    .line 79
    return-void

    .line 76
    :cond_2a
    iget-object v3, p0, Lcom/jme3/asset/AssetCache;->regularCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 78
    :catchall_30
    move-exception v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v3
.end method

.method public getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .registers 4
    .parameter "key"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/jme3/asset/AssetCache;->regularCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 105
    :try_start_3
    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->useSmartCache()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 106
    iget-object v0, p0, Lcom/jme3/asset/AssetCache;->smartCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/AssetCache$SmartAssetInfo;

    iget-object v0, v0, Lcom/jme3/asset/AssetCache$SmartAssetInfo;->asset:Lcom/jme3/asset/Asset;

    monitor-exit v1

    .line 108
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/jme3/asset/AssetCache;->regularCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_14

    .line 110
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getFromSmartCache(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetCache$SmartAssetInfo;
    .registers 3
    .parameter "key"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jme3/asset/AssetCache;->smartCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/AssetCache$SmartAssetInfo;

    return-object v0
.end method
