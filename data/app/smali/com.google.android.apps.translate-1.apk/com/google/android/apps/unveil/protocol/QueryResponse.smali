.class public Lcom/google/android/apps/unveil/protocol/QueryResponse;
.super Ljava/lang/Object;
.source "QueryResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LOCALLY_GENERATED_RESPONSE_MOMENT_ID:Ljava/lang/String; = "locallyGeneratedMoment"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final allResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private final eyeCandyResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private final momentId:Ljava/lang/String;

.field private final puggleResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private final queryImageUrl:Ljava/lang/String;

.field private final queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field private final responseReceivedTimestamp:J

.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:I

.field private final suggestedRestricts:Lcom/google/goggles/RestrictsProtos$Restricts;

.field private final userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 14
    .parameter "other"

    .prologue
    .line 91
    iget-object v1, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    iget-object v4, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->suggestedRestricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    iget-object v5, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    iget-object v6, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    iget v7, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->rotation:I

    iget-object v8, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    iget-wide v10, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;->responseReceivedTimestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/unveil/protocol/QueryResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;ILjava/lang/String;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;J)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;ILjava/lang/String;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;J)V
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
            "J)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    .local p2, eyeCandyResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    .local p3, puggleResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p10, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->responseReceivedTimestamp:J

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->suggestedRestricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 72
    iput-object p5, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 73
    if-eqz p6, :cond_51

    .line 74
    iput-object p6, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    .line 78
    :goto_2e
    iput p7, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->rotation:I

    .line 79
    iput-object p8, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    .line 80
    iput-object p9, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getUserContribution()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    new-instance v1, Lcom/google/android/apps/unveil/results/ContributedResultItem;

    invoke-direct {v1, p9, p5, p8, p6}, Lcom/google/android/apps/unveil/results/ContributedResultItem;-><init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4b
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-void

    .line 76
    :cond_51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    goto :goto_2e
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    if-ne p0, p1, :cond_5

    .line 241
    :cond_4
    :goto_4
    return v1

    .line 176
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 177
    goto :goto_4

    .line 179
    :cond_9
    instance-of v3, p1, Lcom/google/android/apps/unveil/protocol/QueryResponse;

    if-nez v3, :cond_f

    move v1, v2

    .line 180
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 182
    check-cast v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;

    .line 183
    .local v0, other:Lcom/google/android/apps/unveil/protocol/QueryResponse;
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    if-nez v3, :cond_1c

    .line 184
    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    if-eqz v3, :cond_28

    move v1, v2

    .line 185
    goto :goto_4

    .line 187
    :cond_1c
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    move v1, v2

    .line 188
    goto :goto_4

    .line 190
    :cond_28
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    if-nez v3, :cond_32

    .line 191
    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    if-eqz v3, :cond_3e

    move v1, v2

    .line 192
    goto :goto_4

    .line 194
    :cond_32
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    move v1, v2

    .line 195
    goto :goto_4

    .line 197
    :cond_3e
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    if-nez v3, :cond_48

    .line 198
    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    if-eqz v3, :cond_54

    move v1, v2

    .line 199
    goto :goto_4

    .line 201
    :cond_48
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    move v1, v2

    .line 202
    goto :goto_4

    .line 204
    :cond_54
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    if-nez v3, :cond_5e

    .line 205
    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    if-eqz v3, :cond_6a

    move v1, v2

    .line 206
    goto :goto_4

    .line 208
    :cond_5e
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    move v1, v2

    .line 209
    goto :goto_4

    .line 211
    :cond_6a
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    if-nez v3, :cond_74

    .line 212
    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_80

    move v1, v2

    .line 213
    goto :goto_4

    .line 215
    :cond_74
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    move v1, v2

    .line 216
    goto :goto_4

    .line 218
    :cond_80
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    if-eq v3, v4, :cond_89

    move v1, v2

    .line 219
    goto/16 :goto_4

    .line 221
    :cond_89
    iget-wide v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->responseReceivedTimestamp:J

    iget-wide v5, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->responseReceivedTimestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_94

    move v1, v2

    .line 222
    goto/16 :goto_4

    .line 224
    :cond_94
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    if-nez v3, :cond_9f

    .line 225
    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    if-eqz v3, :cond_ac

    move v1, v2

    .line 226
    goto/16 :goto_4

    .line 228
    :cond_9f
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    move v1, v2

    .line 229
    goto/16 :goto_4

    .line 231
    :cond_ac
    iget v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->rotation:I

    iget v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->rotation:I

    if-eq v3, v4, :cond_b5

    move v1, v2

    .line 232
    goto/16 :goto_4

    .line 234
    :cond_b5
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    if-nez v3, :cond_c0

    .line 235
    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    if-eqz v3, :cond_4

    move v1, v2

    .line 236
    goto/16 :goto_4

    .line 238
    :cond_c0
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    iget-object v4, v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 239
    goto/16 :goto_4
.end method

.method public getAllResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    return-object v0
.end method

.method public getEyeCandyResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    return-object v0
.end method

.method public getMomentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPuggleResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    return-object v0
.end method

.method public getQueryImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    return-object v0
.end method

.method public getResponseReceivedTimestamp()J
    .registers 3

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->responseReceivedTimestamp:J

    return-wide v0
.end method

.method public getResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->rotation:I

    return v0
.end method

.method public getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->suggestedRestricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public getUserContribution()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 156
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hasEyeCandyResults()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPuggleResults()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasResults()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 246
    const/16 v0, 0x1f

    .line 247
    .local v0, prime:I
    const/4 v1, 0x1

    .line 248
    .local v1, result:I
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    if-nez v2, :cond_5d

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 249
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    if-nez v2, :cond_64

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 250
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    if-nez v2, :cond_6b

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    .line 251
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    if-nez v2, :cond_72

    move v2, v3

    :goto_24
    add-int v1, v4, v2

    .line 252
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    if-nez v2, :cond_79

    move v2, v3

    :goto_2d
    add-int v1, v4, v2

    .line 253
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    if-nez v2, :cond_80

    move v2, v3

    :goto_36
    add-int v1, v4, v2

    .line 254
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->responseReceivedTimestamp:J

    iget-wide v6, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->responseReceivedTimestamp:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 256
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    if-nez v2, :cond_87

    move v2, v3

    :goto_4c
    add-int v1, v4, v2

    .line 257
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->rotation:I

    add-int v1, v2, v4

    .line 258
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    if-nez v4, :cond_8e

    :goto_5a
    add-int v1, v2, v3

    .line 259
    return v1

    .line 248
    :cond_5d
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->allResults:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    .line 249
    :cond_64
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    .line 250
    :cond_6b
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 251
    :cond_72
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    .line 252
    :cond_79
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2d

    .line 253
    :cond_80
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->hashCode()I

    move-result v2

    goto :goto_36

    .line 256
    :cond_87
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4c

    .line 258
    :cond_8e
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->userContribution:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_5a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryResponse [results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->results:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eyeCandyResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->eyeCandyResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", puggleResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->puggleResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", momentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->momentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->queryImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/protocol/QueryResponse;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
