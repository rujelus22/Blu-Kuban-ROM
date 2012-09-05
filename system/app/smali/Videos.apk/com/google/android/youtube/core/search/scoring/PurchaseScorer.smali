.class public Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;
.super Ljava/lang/Object;
.source "PurchaseScorer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2
    .parameter "prefs"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;->prefs:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method


# virtual methods
.method public score(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/search/scoring/ScoredResult;)Z
    .registers 11
    .parameter "purchase"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/search/scoring/ScoredResult",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, scoredResult:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<*>;"
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v4, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    if-nez v4, :cond_14

    .line 33
    :cond_12
    const/4 v4, 0x0

    .line 42
    :goto_13
    return v4

    .line 37
    :cond_14
    iget-object v4, p0, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last_watched_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 38
    .local v0, lastWatched:J
    iget-object v4, p1, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 40
    .local v2, timestamp:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->addScore(Ljava/lang/Comparable;)V

    .line 41
    invoke-virtual {p2, v2, v3}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->setTimestamp(J)V

    .line 42
    const/4 v4, 0x1

    goto :goto_13
.end method
