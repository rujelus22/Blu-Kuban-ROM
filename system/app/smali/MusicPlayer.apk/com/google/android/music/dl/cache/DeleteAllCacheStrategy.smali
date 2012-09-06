.class public Lcom/google/android/music/dl/cache/DeleteAllCacheStrategy;
.super Lcom/google/android/music/dl/cache/CacheStrategy;
.source "DeleteAllCacheStrategy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;)J
    .registers 5
    .parameter "order"
    .parameter "location"

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v0

    return-wide v0
.end method
