.class public Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;
.super Lcom/google/android/apps/unveil/protocol/QueryResponse;
.source "SingleShotQueryResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;
    }
.end annotation


# instance fields
.field private final requestMetrics:Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;

.field private final trackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;ILjava/lang/String;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;JLcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter "suggestedRestricts"
    .parameter "queryType"
    .parameter "queryImageUrl"
    .parameter "rotation"
    .parameter "momentId"
    .parameter "userContribution"
    .parameter "responseReceivedTimestamp"
    .parameter "requestMetrics"
    .parameter "trackingId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;",
            "Lcom/google/goggles/RestrictsProtos$Restricts;",
            "Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;",
            "J",
            "Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    .local p2, eyeCandyResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    .local p3, puggleCategories:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    invoke-direct/range {p0 .. p11}, Lcom/google/android/apps/unveil/protocol/QueryResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;ILjava/lang/String;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;J)V

    .line 44
    iput-object p12, p0, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;->requestMetrics:Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;

    .line 45
    iput-object p13, p0, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;->trackingId:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getRequestMetrics()Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;->requestMetrics:Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;->trackingId:Ljava/lang/String;

    return-object v0
.end method
