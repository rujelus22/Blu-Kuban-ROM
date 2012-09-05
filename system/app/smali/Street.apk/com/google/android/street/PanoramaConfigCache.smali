.class Lcom/google/android/street/PanoramaConfigCache;
.super Ljava/lang/Object;
.source "PanoramaConfigCache.java"


# instance fields
.field private final mIndex:Lcom/google/android/street/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/street/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/street/PanoramaConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "maxEntries"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/google/android/street/LRUCache;

    invoke-direct {v0, p1}, Lcom/google/android/street/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/street/PanoramaConfigCache;->mIndex:Lcom/google/android/street/LRUCache;

    .line 14
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/android/street/PanoramaConfig;
    .registers 5
    .parameter "panoId"

    .prologue
    const/4 v2, 0x0

    .line 27
    if-nez p1, :cond_5

    move-object v1, v2

    .line 35
    :goto_4
    return-object v1

    .line 30
    :cond_5
    iget-object v1, p0, Lcom/google/android/street/PanoramaConfigCache;->mIndex:Lcom/google/android/street/LRUCache;

    invoke-virtual {v1, p1}, Lcom/google/android/street/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/PanoramaConfig;

    .line 31
    .local v0, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 32
    iget-object v1, p0, Lcom/google/android/street/PanoramaConfigCache;->mIndex:Lcom/google/android/street/LRUCache;

    invoke-virtual {v1, p1}, Lcom/google/android/street/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 33
    goto :goto_4

    :cond_1c
    move-object v1, v0

    .line 35
    goto :goto_4
.end method

.method public insert(Lcom/google/android/street/PanoramaConfig;)V
    .registers 4
    .parameter "panoramaConfig"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfigCache;->mIndex:Lcom/google/android/street/LRUCache;

    iget-object v1, p1, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/street/LRUCache;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    return-void
.end method
