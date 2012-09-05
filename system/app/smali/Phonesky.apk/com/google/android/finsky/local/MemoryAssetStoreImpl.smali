.class Lcom/google/android/finsky/local/MemoryAssetStoreImpl;
.super Ljava/lang/Object;
.source "MemoryAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/MemoryAssetStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;,
        Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;
    }
.end annotation


# instance fields
.field private final mAssetLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/local/StoredLocalAsset;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;

.field private final mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

.field private final mWriter:Lcom/google/android/finsky/local/Writer;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/local/PersistentAssetStore;)V
    .registers 3
    .parameter "persistentStore"

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/finsky/local/AsyncWriter;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/local/AsyncWriter;-><init>(Lcom/google/android/finsky/local/PersistentAssetStore;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;-><init>(Lcom/google/android/finsky/local/PersistentAssetStore;Lcom/google/android/finsky/local/Writer;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/finsky/local/PersistentAssetStore;Lcom/google/android/finsky/local/Writer;)V
    .registers 4
    .parameter "persistentStore"
    .parameter "writer"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mInitialized:Z

    .line 30
    new-instance v0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-direct {v0}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mListeners:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mPersistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;

    .line 50
    iput-object p2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    .line 51
    return-void
.end method

.method private deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;Z)V
    .registers 7
    .parameter "version"
    .parameter "notify"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 155
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;

    move-result-object v0

    .line 156
    .local v0, asset:Lcom/google/android/finsky/local/StoredLocalAsset;
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    .line 158
    .local v1, previousState:Lcom/google/android/finsky/local/AssetState;
    iget-object v2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->remove(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 159
    iget-object v2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->toRecord()Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/finsky/local/Writer;->delete(Lcom/google/android/finsky/local/Writable;)V

    .line 160
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->markDeleted()V

    .line 162
    if-eqz p2, :cond_2b

    if-eqz v0, :cond_2b

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetChanged(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V

    .line 165
    :cond_2b
    return-void
.end method

.method private getAssetsByFilter(Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;)Ljava/util/Collection;
    .registers 15
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 270
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 272
    if-nez p1, :cond_f

    .line 273
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Can\'t get assets by filter when filter is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 277
    :cond_f
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 279
    .local v5, matchedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAsset;>;"
    iget-object v10, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 280
    .local v1, allAssets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAsset;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/StoredLocalAsset;

    .line 281
    .local v0, a:Lcom/google/android/finsky/local/StoredLocalAsset;
    if-nez v0, :cond_85

    .line 282
    const-string v10, "A null StoredLocalAsset somehow got into the AssetStore. Removing."

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 284
    .local v7, toRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 285
    .local v6, packageName:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6d

    move v4, v8

    .line 286
    .local v4, isNull:Z
    :goto_57
    const-string v10, "Checking stored asset : %s Is null : %b"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    if-eqz v4, :cond_42

    .line 289
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .end local v4           #isNull:Z
    :cond_6d
    move v4, v9

    .line 285
    goto :goto_57

    .line 292
    .end local v6           #packageName:Ljava/lang/String;
    :cond_6f
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 293
    .restart local v6       #packageName:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 295
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #toRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_85
    invoke-interface {p1, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;->matches(Lcom/google/android/finsky/local/LocalAsset;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 296
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 300
    .end local v0           #a:Lcom/google/android/finsky/local/StoredLocalAsset;
    :cond_8f
    return-object v5
.end method

.method private notifyAssetListener(Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;)V
    .registers 5
    .parameter "action"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 355
    iget-object v2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 356
    iget-object v2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_13
    if-ltz v0, :cond_23

    .line 357
    iget-object v2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    .line 358
    .local v1, listener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;
    invoke-interface {p1, v1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;->run(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 356
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 361
    .end local v0           #i:I
    .end local v1           #listener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;
    :cond_23
    return-void
.end method

.method private safetyCheck()V
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 58
    iget-boolean v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mInitialized:Z

    if-nez v0, :cond_f

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MemoryAssetStore must be initialized beforethis method can be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_f
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 311
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public deleteAsset(Ljava/lang/String;)Z
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 181
    iget-object v5, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/StoredLocalAsset;

    .line 182
    .local v0, asset:Lcom/google/android/finsky/local/StoredLocalAsset;
    if-nez v0, :cond_f

    .line 201
    :goto_e
    return v4

    .line 186
    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v5, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAsset;->toRecord()Lcom/google/android/finsky/local/LocalAssetRecord;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/finsky/local/Writer;->delete(Lcom/google/android/finsky/local/Writable;)V

    .line 188
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAsset;->markDeleted()V

    .line 192
    new-instance v3, Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->getByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v3, versions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 196
    .local v2, v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;Z)V

    goto :goto_2f

    .line 199
    .end local v2           #v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetDeleted(Ljava/lang/String;)V

    .line 201
    const/4 v4, 0x1

    goto :goto_e
.end method

.method public deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V
    .registers 3
    .parameter "version"

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;Z)V

    .line 150
    return-void
.end method

.method public deleteAssetVersion(Ljava/lang/String;)Z
    .registers 4
    .parameter "serverId"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 138
    iget-object v1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->getByServerId(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 139
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_d

    .line 140
    const/4 v1, 0x0

    .line 144
    :goto_c
    return v1

    .line 143
    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V

    .line 144
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public getAsset(Landroid/net/Uri;)Lcom/google/android/finsky/local/LocalAsset;
    .registers 6
    .parameter "uri"

    .prologue
    .line 254
    iget-object v3, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {v3}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->getAll()Ljava/util/Collection;

    move-result-object v0

    .line 255
    .local v0, all:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 256
    .local v2, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-virtual {v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 257
    invoke-virtual {v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;

    move-result-object v3

    .line 261
    .end local v2           #version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :goto_28
    return-object v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public bridge synthetic getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/StoredLocalAsset;

    return-object v0
.end method

.method public bridge synthetic getAssetById(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAssetById(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public getAssetById(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;
    .registers 5
    .parameter "id"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 214
    iget-object v1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->getByServerId(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 215
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_d

    .line 216
    const/4 v1, 0x0

    .line 219
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/local/StoredLocalAsset;

    goto :goto_c
.end method

.method public getAssetVersions(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->getByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$2;-><init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAssetsByFilter(Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAssetsByState(Lcom/google/android/finsky/local/AssetState;)Ljava/util/Collection;
    .registers 3
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/local/AssetState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$3;-><init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Lcom/google/android/finsky/local/AssetState;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAssetsByFilter(Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVersionHistory(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/local/LocalAssetVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/local/LocalAssetVersion;>;"
    iget-object v5, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {v5}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->getAll()Ljava/util/Collection;

    move-result-object v0

    .line 326
    .local v0, all:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 327
    .local v4, v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-virtual {v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;

    move-result-object v1

    .line 328
    .local v1, asset:Lcom/google/android/finsky/local/StoredLocalAsset;
    invoke-virtual {v1}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 329
    invoke-virtual {v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->toRecord()Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 333
    .end local v1           #asset:Lcom/google/android/finsky/local/StoredLocalAsset;
    .end local v4           #v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_38
    new-instance v5, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$4;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$4;-><init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    return-object v3
.end method

.method public initialize()Lcom/google/android/finsky/local/MemoryAssetStoreImpl;
    .registers 9

    .prologue
    .line 65
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 67
    iget-boolean v4, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mInitialized:Z

    if-eqz v4, :cond_f

    .line 68
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Store has already been initialized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_f
    iget-object v4, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mPersistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;

    invoke-interface {v4}, Lcom/google/android/finsky/local/PersistentAssetStore;->getAllVersions()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, allVersions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetVersionRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    .line 73
    .local v3, record:Lcom/google/android/finsky/local/LocalAssetVersionRecord;
    iget-object v4, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    new-instance v5, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    iget-object v6, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-direct {v5, v3, v6, p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;-><init>(Lcom/google/android/finsky/local/LocalAssetVersionRecord;Lcom/google/android/finsky/local/Writer;Lcom/google/android/finsky/local/MemoryAssetStore;)V

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->put(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V

    goto :goto_19

    .line 76
    .end local v3           #record:Lcom/google/android/finsky/local/LocalAssetVersionRecord;
    :cond_32
    iget-object v4, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mPersistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;

    invoke-interface {v4}, Lcom/google/android/finsky/local/PersistentAssetStore;->getAllAssets()Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, allAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/local/LocalAssetRecord;

    .line 78
    .local v3, record:Lcom/google/android/finsky/local/LocalAssetRecord;
    iget-object v4, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/android/finsky/local/LocalAssetRecord;->getPackage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/local/StoredLocalAsset;

    iget-object v7, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-direct {v6, v3, v7, p0}, Lcom/google/android/finsky/local/StoredLocalAsset;-><init>(Lcom/google/android/finsky/local/LocalAssetRecord;Lcom/google/android/finsky/local/Writer;Lcom/google/android/finsky/local/MemoryAssetStore;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 82
    .end local v3           #record:Lcom/google/android/finsky/local/LocalAssetRecord;
    :cond_59
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mInitialized:Z

    .line 84
    return-object p0
.end method

.method public insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/LocalAsset;
    .registers 54
    .parameter "packageName"
    .parameter "autoUpdateState"
    .parameter "account"
    .parameter "versionCode"
    .parameter "assetId"
    .parameter "state"
    .parameter "size"
    .parameter "downloadPendingTime"
    .parameter "downloadTime"
    .parameter "installTime"
    .parameter "uninstallTime"
    .parameter "signatureAndSize"
    .parameter "contentUri"
    .parameter "forwardLocked"
    .parameter "refundPeriodEndTime"
    .parameter "referrer"
    .parameter "source"
    .parameter "mainObb"
    .parameter "patchObb"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 118
    new-instance v28, Lcom/google/android/finsky/local/LocalAssetRecord;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/LocalAssetRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;)V

    .line 121
    .local v28, record:Lcom/google/android/finsky/local/LocalAssetRecord;
    new-instance v27, Lcom/google/android/finsky/local/StoredLocalAsset;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/finsky/local/StoredLocalAsset;-><init>(Lcom/google/android/finsky/local/LocalAssetRecord;Lcom/google/android/finsky/local/Writer;Lcom/google/android/finsky/local/MemoryAssetStore;)V

    .line 122
    .local v27, asset:Lcom/google/android/finsky/local/StoredLocalAsset;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Lcom/google/android/finsky/local/Writer;->insert(Lcom/google/android/finsky/local/Writable;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    .line 125
    invoke-virtual/range {v4 .. v26}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->insertAssetVersion(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetAdded(Lcom/google/android/finsky/local/StoredLocalAsset;)V

    .line 131
    return-object v27
.end method

.method public insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/finsky/local/LocalAsset;
    .registers 36
    .parameter "packageName"
    .parameter "autoUpdateState"
    .parameter "account"
    .parameter "versionCode"
    .parameter "assetId"
    .parameter "referrer"
    .parameter "source"
    .parameter "downloadPendingTime"

    .prologue
    .line 171
    sget-object v7, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v24

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v10, p8

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    invoke-virtual/range {v1 .. v25}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    return-object v1
.end method

.method public insertAssetVersion(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    .registers 49
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "assetId"
    .parameter "state"
    .parameter "size"
    .parameter "downloadPendingTime"
    .parameter "downloadTime"
    .parameter "installTime"
    .parameter "uninstallTime"
    .parameter "signature"
    .parameter "contentUri"
    .parameter "forwardLocked"
    .parameter "refundPeriodEndTime"
    .parameter "referrer"
    .parameter "source"
    .parameter "main"
    .parameter "patch"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 96
    new-instance v2, Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    invoke-direct/range {v2 .. v24}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    .line 101
    .local v2, record:Lcom/google/android/finsky/local/LocalAssetVersionRecord;
    new-instance v25, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;-><init>(Lcom/google/android/finsky/local/LocalAssetVersionRecord;Lcom/google/android/finsky/local/Writer;Lcom/google/android/finsky/local/MemoryAssetStore;)V

    .line 103
    .local v25, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->put(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-interface {v3, v2}, Lcom/google/android/finsky/local/Writer;->insert(Lcom/google/android/finsky/local/Writable;)V

    .line 106
    return-object v25
.end method

.method public notifyAssetAdded(Lcom/google/android/finsky/local/StoredLocalAsset;)V
    .registers 3
    .parameter "asset"

    .prologue
    .line 378
    new-instance v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$6;-><init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Lcom/google/android/finsky/local/StoredLocalAsset;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetListener(Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;)V

    .line 384
    return-void
.end method

.method public notifyAssetChanged(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V
    .registers 4
    .parameter "asset"
    .parameter "previousState"

    .prologue
    .line 368
    new-instance v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;-><init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetListener(Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;)V

    .line 374
    return-void
.end method

.method public notifyAssetDeleted(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 388
    new-instance v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$7;-><init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetListener(Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;)V

    .line 394
    return-void
.end method

.method public notifyAssetVersionChanged(Lcom/google/android/finsky/local/StoredLocalAssetVersion;Lcom/google/android/finsky/local/AssetState;)V
    .registers 5
    .parameter "version"
    .parameter "previousState"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 404
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAsset;

    move-result-object v0

    .line 405
    .local v0, asset:Lcom/google/android/finsky/local/StoredLocalAsset;
    if-eqz v0, :cond_10

    .line 406
    invoke-virtual {p0, v0, p2}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetChanged(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V

    .line 408
    :cond_10
    return-void
.end method

.method public removeListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->safetyCheck()V

    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public repairMappings()I
    .registers 6

    .prologue
    .line 420
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 421
    .local v1, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    iget-object v3, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mVersionLookup:Lcom/google/android/finsky/local/LocalAssetVersionLookup;

    invoke-virtual {v3}, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->getAll()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 422
    .local v2, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    iget-object v3, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->mAssetLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 423
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 426
    .end local v2           #version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 427
    .restart local v2       #version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V

    goto :goto_2e

    .line 429
    .end local v2           #version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_3e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    return v3
.end method
