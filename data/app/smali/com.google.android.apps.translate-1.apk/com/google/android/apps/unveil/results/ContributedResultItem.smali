.class public Lcom/google/android/apps/unveil/results/ContributedResultItem;
.super Lcom/google/android/apps/unveil/results/ResultModel;
.source "ContributedResultItem.java"


# instance fields
.field private final momentId:Ljava/lang/String;

.field private final queryImageUrl:Ljava/lang/String;

.field private final queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field private final userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;


# direct methods
.method public constructor <init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "userContribution"
    .parameter "queryType"
    .parameter "momentId"
    .parameter "queryImageUrl"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/unveil/results/ResultModel;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 27
    iput-object p2, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 28
    iput-object p3, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->momentId:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->queryImageUrl:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .registers 8

    .prologue
    .line 68
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    .line 69
    .local v0, box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->queryImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMomentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->momentId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->queryImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserContribution()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    return-object v0
.end method

.method public getWebSearchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ContributedResultItem;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getWebsearchUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasImageUrl()Z
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ContributedResultItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isUserGenerated()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
