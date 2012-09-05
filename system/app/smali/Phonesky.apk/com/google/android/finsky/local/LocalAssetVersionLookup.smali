.class public Lcom/google/android/finsky/local/LocalAssetVersionLookup;
.super Ljava/lang/Object;
.source "LocalAssetVersionLookup.java"


# instance fields
.field private final mIdLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mIdLookup:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mPackageLookup:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getByPackageName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
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
    .line 40
    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 41
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    if-nez v0, :cond_10

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_f
    return-object v1

    :cond_10
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_f
.end method

.method public getByServerId(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    .registers 3
    .parameter "serverId"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    return-object v0
.end method

.method public put(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V
    .registers 6
    .parameter "version"

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, serverId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 28
    .local v0, containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    if-nez v0, :cond_1c

    .line 29
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .restart local v0       #containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    :cond_1c
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public remove(Ljava/lang/String;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    .registers 6
    .parameter "serverId"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mIdLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 51
    .local v0, asset:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-eqz v0, :cond_2a

    .line 52
    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 54
    .local v1, packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    if-eqz v1, :cond_1b

    .line 55
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1b
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 59
    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionLookup;->mPackageLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v1           #packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    :cond_2a
    return-object v0
.end method
