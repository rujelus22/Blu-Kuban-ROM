.class public Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
.super Lcom/google/android/apps/unveil/protocol/QueryBuilder;
.source "ContinuousQueryBuilder.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private audioData:[B

.field private audioSamplingRate:I

.field private encryptedLocation:Lcom/google/protobuf/ByteString;

.field private flowData:Lcom/google/goggles/FlowProtos$FlowData;

.field private pushSequenceNumber:Ljava/lang/Integer;

.field private requestIdBase:Ljava/lang/Long;

.field private session:Lcom/google/android/apps/unveil/protocol/Session;

.field private final trackedResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
            ">;"
        }
    .end annotation
.end field

.field private wantResults:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->trackedResults:Ljava/util/ArrayList;

    return-void
.end method

.method private populateAudioData(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;[BJ)V
    .registers 7
    .parameter "request"
    .parameter "audioData"
    .parameter "audioSamplingRate"

    .prologue
    .line 193
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    .line 194
    .local v0, audioDataBuilder:Lcom/google/goggles/GogglesProtos$Audio$Builder;
    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    .line 195
    long-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->setSampleRateHz(F)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    .line 196
    invoke-virtual {p1, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setAudio(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 197
    return-void
.end method


# virtual methods
.method public addAudioData([BI)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    .registers 3
    .parameter "audioData"
    .parameter "audioSamplingRate"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->audioData:[B

    .line 187
    iput p2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->audioSamplingRate:I

    .line 188
    return-object p0
.end method

.method public addEncryptedLocation(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;Lcom/google/goggles/LocationProtos$Location;)V
    .registers 7
    .parameter "context"
    .parameter "extendedGogglesRequestBuilder"
    .parameter "userLocation"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->encryptedLocation:Lcom/google/protobuf/ByteString;

    if-nez v0, :cond_16

    .line 156
    sget-object v0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Encrypting location in a continuous request, this is inefficient."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getLatLngEncrypter()Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addEncryptedLocation(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;Lcom/google/goggles/LocationProtos$Location;Lcom/google/android/apps/unveil/network/LatLngEncrypter;)V

    .line 162
    :goto_15
    return-void

    .line 160
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->encryptedLocation:Lcom/google/protobuf/ByteString;

    invoke-virtual {p2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setEncryptedLatLng(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto :goto_15
.end method

.method public addFlowData(Lcom/google/goggles/FlowProtos$FlowData;)V
    .registers 2
    .parameter "flowData"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->flowData:Lcom/google/goggles/FlowProtos$FlowData;

    .line 50
    return-void
.end method

.method public addLocation(Lcom/google/goggles/LocationProtos$Location;Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    .registers 3
    .parameter "locationProto"
    .parameter "encryptedLocation"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 181
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->encryptedLocation:Lcom/google/protobuf/ByteString;

    .line 182
    return-object p0
.end method

.method public addLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 3
    .parameter "location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addPushSequenceNumber(Ljava/lang/Integer;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    .registers 2
    .parameter "pushSequenceNumber"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->pushSequenceNumber:Ljava/lang/Integer;

    .line 83
    return-object p0
.end method

.method public addRequestIdBase(Ljava/lang/Long;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    .registers 2
    .parameter "requestIdBase"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->requestIdBase:Ljava/lang/Long;

    .line 74
    return-object p0
.end method

.method public addTrackedResult(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)V
    .registers 3
    .parameter "annotation"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->trackedResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    .line 88
    sget-object v7, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Making request"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->resetTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v3

    .line 91
    .local v3, gogglesRequest:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    sget-object v7, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v3, v7}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    invoke-static {v7}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v2

    .line 96
    .local v2, extendedGogglesRequestBuilder:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->trackedResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    .line 97
    .local v6, result:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-virtual {v2, v6}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->addTrackedResults(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto :goto_21

    .line 100
    .end local v6           #result:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    :cond_31
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->session:Lcom/google/android/apps/unveil/protocol/Session;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/protocol/Session;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 102
    sget-object v7, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 105
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->flowData:Lcom/google/goggles/FlowProtos$FlowData;

    if-eqz v7, :cond_4c

    .line 106
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->flowData:Lcom/google/goggles/FlowProtos$FlowData;

    invoke-virtual {v3, v7}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setFlow(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 109
    :cond_4c
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->wantResults:Z

    invoke-virtual {v7, v8}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantAnnotationResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v1

    .line 114
    .local v1, extendedGogglesConfigBuilder:Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    new-instance v5, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    move-object v7, p1

    check-cast v7, Lcom/google/android/apps/unveil/BaseApplication;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/BaseApplication;->getConfigurationProvider()Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;-><init>(Lcom/google/android/apps/unveil/env/Provider;)V

    .line 116
    .local v5, params:Lcom/google/android/apps/unveil/protocol/QueryManagerParams;
    iput-boolean v10, v5, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->disableSimilarImages:Z

    .line 117
    iget-boolean v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->wantResults:Z

    iput-boolean v7, v5, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->wantAnnotationResults:Z

    .line 118
    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->isSearchHistoryEnabled()Z

    move-result v7

    iput-boolean v7, v5, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->canStoreToSearchHistory:Z

    .line 119
    const/16 v7, 0xa

    iput v7, v5, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->maxResults:I

    .line 120
    invoke-virtual {v5}, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->toGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 123
    sget-object v7, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v3, v7}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    .line 126
    .local v0, extReq:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    iget-boolean v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->wantResults:Z

    if-eqz v7, :cond_88

    .line 127
    invoke-virtual {v2, v10}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setReturnResults(Z)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 131
    :cond_88
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->requestIdBase:Ljava/lang/Long;

    if-eqz v7, :cond_9f

    .line 135
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->requestIdBase:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->imageData:[B

    if-nez v7, :cond_c2

    sget-object v7, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->CLIENT_ANNOTATION:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    :goto_98
    invoke-static {v8, v9, v7}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds;->encodeFullRequestId(JLcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 140
    :cond_9f
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->pushSequenceNumber:Ljava/lang/Integer;

    if-eqz v7, :cond_ac

    .line 141
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->pushSequenceNumber:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setSequenceNumber(I)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 144
    :cond_ac
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->audioData:[B

    if-eqz v7, :cond_b8

    .line 145
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->audioData:[B

    iget v8, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->audioSamplingRate:I

    int-to-long v8, v8

    invoke-direct {p0, v3, v7, v8, v9}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->populateAudioData(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;[BJ)V

    .line 148
    :cond_b8
    sget-object v7, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 150
    return-object v3

    .line 135
    :cond_c2
    sget-object v7, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->IMAGE:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    goto :goto_98
.end method

.method public setSession(Lcom/google/android/apps/unveil/protocol/Session;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    .registers 2
    .parameter "session"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->session:Lcom/google/android/apps/unveil/protocol/Session;

    .line 58
    return-object p0
.end method

.method public setWantResults(Z)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    .registers 2
    .parameter "wantResults"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->wantResults:Z

    .line 63
    return-object p0
.end method
