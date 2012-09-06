.class public abstract Lcom/google/android/apps/unveil/results/ResultModel;
.super Ljava/lang/Object;
.source "ResultModel.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static excludeDirectUrlResults(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/apps/unveil/results/ResultModel;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/apps/unveil/results/ResultModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, results:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/apps/unveil/results/ResultModel;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v2, included:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/results/ResultModel;

    .line 49
    .local v0, candidate:Lcom/google/android/apps/unveil/results/ResultModel;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/results/ResultModel;->getDirectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 50
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 53
    .end local v0           #candidate:Lcom/google/android/apps/unveil/results/ResultModel;
    :cond_27
    return-object v2
.end method


# virtual methods
.method public abstract dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract getBoundingBox()Landroid/graphics/Rect;
.end method

.method public getDirectUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string v0, ""

    return-object v0
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string v0, ""

    return-object v0
.end method

.method public abstract getThumbnailUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getWebSearchUrl()Ljava/lang/String;
.end method

.method public abstract hasImageUrl()Z
.end method

.method public isAdvertisement()Z
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isUserGenerated()Z
.end method
