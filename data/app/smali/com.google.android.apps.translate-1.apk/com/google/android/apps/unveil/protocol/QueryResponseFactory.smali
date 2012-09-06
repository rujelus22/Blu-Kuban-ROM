.class public final Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;
.super Ljava/lang/Object;
.source "QueryResponseFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$1;,
        Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter "queryType"
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;",
            "Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/goggles/ResultProtos$Result;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v2, resultItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 142
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/goggles/ResultProtos$Result;

    .line 143
    .local v1, r:Lcom/google/goggles/ResultProtos$Result;
    sget-object v3, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-ne p2, v3, :cond_25

    .line 144
    new-instance v3, Lcom/google/android/apps/unveil/results/PuggleResultItem;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/apps/unveil/results/PuggleResultItem;-><init>(Lcom/google/goggles/ResultProtos$Result;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 146
    :cond_25
    new-instance v3, Lcom/google/android/apps/unveil/results/ResultItem;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/apps/unveil/results/ResultItem;-><init>(Lcom/google/goggles/ResultProtos$Result;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 149
    .end local v1           #r:Lcom/google/goggles/ResultProtos$Result;
    :cond_2e
    return-object v2
.end method

.method static extractImageRotation(Lcom/google/goggles/GogglesProtos$Image;)I
    .registers 6
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    .line 154
    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageRotation:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$Image;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 155
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Cannot find ImageRotation extension in Image, assuming 0 degree rotation."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 170
    :goto_13
    return v1

    .line 159
    :cond_14
    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageRotation:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$Image;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/goggles/GogglesProtos$ImageRotation;

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    move-result-object v0

    .line 161
    .local v0, rotation:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$1;->$SwitchMap$com$google$goggles$GogglesProtos$ImageRotation$CWOffsetFromRightSideUp:[I

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_36

    move v1, v2

    .line 170
    goto :goto_13

    .line 163
    :pswitch_2d
    const/16 v1, 0x5a

    goto :goto_13

    .line 165
    :pswitch_30
    const/16 v1, 0xb4

    goto :goto_13

    .line 167
    :pswitch_33
    const/16 v1, 0x10e

    goto :goto_13

    .line 161
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method

.method private static getAllEyecandyResults(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;
    .registers 3
    .parameter "gogglesResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    .line 128
    .local v0, extendedGogglesResponse:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getEyeCandyResultsList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getAllPuggleResults(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;
    .registers 3
    .parameter "gogglesResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    sget-object v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    .line 134
    .local v0, extendedGogglesResponse:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getPuggleResultsList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static interpretPullResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;J)Lcom/google/android/apps/unveil/protocol/QueryResponse;
    .registers 15
    .parameter "gogglesResponse"
    .parameter "responseReceivedTimestamp"

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getResultsList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    sget-object v3, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->LIVE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    move-wide v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/unveil/protocol/QueryResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;ILjava/lang/String;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;J)V

    return-object v0
.end method

.method public static interpretReplayResponse(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;Ljava/lang/String;Lcom/google/android/apps/unveil/env/Viewport;J)Lcom/google/android/apps/unveil/protocol/QueryResponse;
    .registers 23
    .parameter "replayResponse"
    .parameter "queryType"
    .parameter "source"
    .parameter "momentId"
    .parameter "viewport"
    .parameter "responseReceivedTimestamp"

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getQueryImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v15

    .line 111
    .local v15, queryImage:Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v15}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->extractImageRotation(Lcom/google/goggles/GogglesProtos$Image;)I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/google/android/apps/unveil/env/Viewport;->deviceRotationToCameraRotation(I)I

    move-result v9

    .line 114
    .local v9, rotationDegree:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v14

    .line 116
    .local v14, gogglesResponse:Lcom/google/goggles/GogglesProtos$GogglesResponse;
    new-instance v2, Lcom/google/android/apps/unveil/protocol/QueryResponse;

    invoke-virtual {v14}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getResultsList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;

    move-result-object v3

    invoke-static {v14}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->getAllEyecandyResults(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;

    move-result-object v4

    invoke-static {v14}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->getAllPuggleResults(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v14}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/goggles/GogglesProtos$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v11

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v2 .. v13}, Lcom/google/android/apps/unveil/protocol/QueryResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;ILjava/lang/String;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;J)V

    return-object v2
.end method

.method public static interpretResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;Ljava/lang/String;JLcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;
    .registers 24
    .parameter "gogglesResponse"
    .parameter "queryType"
    .parameter "source"
    .parameter "momentId"
    .parameter "responseReceivedTimestamp"
    .parameter "requestMetrics"
    .parameter "trackingId"

    .prologue
    .line 92
    new-instance v2, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;

    invoke-virtual/range {p0 .. p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getResultsList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->getAllEyecandyResults(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->getAllPuggleResults(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->adaptToResultItems(Ljava/util/List;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v6

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move-wide/from16 v12, p4

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-direct/range {v2 .. v15}, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Ljava/lang/String;ILjava/lang/String;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;JLcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;Ljava/lang/String;)V

    return-object v2
.end method
