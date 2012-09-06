.class public final Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContainerProtos.java"

# interfaces
.implements Lcom/google/goggles/ContainerProtos$ContainerRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ContainerProtos$ContainerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ContainerProtos$ContainerRequest;",
        "Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;",
        ">;",
        "Lcom/google/goggles/ContainerProtos$ContainerRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

.field private bitField0_:I

.field private getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

.field private gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

.field private gogglesRequests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private nativeClientLogEventRequest_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field private searchWindowRetrieveRequests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private searchWindowUpdateRequests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

.field private setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

.field private traceRequests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1038
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 1081
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 1124
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 1167
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 1210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    .line 1299
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 1342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    .line 1431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    .line 1520
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 1563
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    .line 1652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    .line 704
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->maybeForceBuilderInitialization()V

    .line 705
    return-void
.end method

.method static synthetic access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 1

    .prologue
    .line 698
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->create()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 760
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 763
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 1

    .prologue
    .line 710
    new-instance v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGogglesRequestsIsMutable()V
    .registers 3

    .prologue
    .line 1213
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    .line 1215
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1217
    :cond_17
    return-void
.end method

.method private ensureNativeClientLogEventRequestIsMutable()V
    .registers 3

    .prologue
    .line 1434
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    .line 1436
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1438
    :cond_17
    return-void
.end method

.method private ensureSearchWindowRetrieveRequestsIsMutable()V
    .registers 3

    .prologue
    .line 1655
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_17

    .line 1656
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    .line 1657
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1659
    :cond_17
    return-void
.end method

.method private ensureSearchWindowUpdateRequestsIsMutable()V
    .registers 3

    .prologue
    .line 1566
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 1567
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    .line 1568
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1570
    :cond_17
    return-void
.end method

.method private ensureTraceRequestsIsMutable()V
    .registers 3

    .prologue
    .line 1345
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    .line 1347
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1349
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 708
    return-void
.end method


# virtual methods
.method public addAllGogglesRequests(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1281
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1283
    return-object p0
.end method

.method public addAllNativeClientLogEventRequest(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1502
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1504
    return-object p0
.end method

.method public addAllSearchWindowRetrieveRequests(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1722
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1723
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1725
    return-object p0
.end method

.method public addAllSearchWindowUpdateRequests(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1633
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1634
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1636
    return-object p0
.end method

.method public addAllTraceRequests(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/TracingProtos$TraceRequest;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1412
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1413
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1415
    return-object p0
.end method

.method public addGogglesRequests(ILcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1274
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1276
    return-object p0
.end method

.method public addGogglesRequests(ILcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1256
    if-nez p2, :cond_8

    .line 1257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1259
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1260
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1262
    return-object p0
.end method

.method public addGogglesRequests(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1267
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    return-object p0
.end method

.method public addGogglesRequests(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1246
    if-nez p1, :cond_8

    .line 1247
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1249
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1250
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    return-object p0
.end method

.method public addNativeClientLogEventRequest(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1495
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1497
    return-object p0
.end method

.method public addNativeClientLogEventRequest(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1477
    if-nez p2, :cond_8

    .line 1478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1480
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1481
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1483
    return-object p0
.end method

.method public addNativeClientLogEventRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1487
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1488
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    return-object p0
.end method

.method public addNativeClientLogEventRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1467
    if-nez p1, :cond_8

    .line 1468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1470
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1471
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    return-object p0
.end method

.method public addSearchWindowRetrieveRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1716
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1718
    return-object p0
.end method

.method public addSearchWindowRetrieveRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1698
    if-nez p2, :cond_8

    .line 1699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1701
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1702
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1704
    return-object p0
.end method

.method public addSearchWindowRetrieveRequests(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1708
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1709
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1711
    return-object p0
.end method

.method public addSearchWindowRetrieveRequests(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1688
    if-nez p1, :cond_8

    .line 1689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1691
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1692
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    return-object p0
.end method

.method public addSearchWindowUpdateRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1627
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1629
    return-object p0
.end method

.method public addSearchWindowUpdateRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1609
    if-nez p2, :cond_8

    .line 1610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1612
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1613
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1615
    return-object p0
.end method

.method public addSearchWindowUpdateRequests(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1620
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    return-object p0
.end method

.method public addSearchWindowUpdateRequests(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1599
    if-nez p1, :cond_8

    .line 1600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1602
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1603
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    return-object p0
.end method

.method public addTraceRequests(ILcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1406
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->build()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1408
    return-object p0
.end method

.method public addTraceRequests(ILcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1388
    if-nez p2, :cond_8

    .line 1389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1391
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1392
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1394
    return-object p0
.end method

.method public addTraceRequests(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1398
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1399
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->build()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    return-object p0
.end method

.method public addTraceRequests(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1378
    if-nez p1, :cond_8

    .line 1379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1381
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1382
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    return-object p0
.end method

.method public build()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 3

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 751
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 753
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->build()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 767
    new-instance v2, Lcom/google/goggles/ContainerProtos$ContainerRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;-><init>(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;Lcom/google/goggles/ContainerProtos$1;)V

    .line 768
    iget v3, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 769
    const/4 v1, 0x0

    .line 770
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_dd

    .line 773
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$602(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 774
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 775
    or-int/lit8 v0, v0, 0x2

    .line 777
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$702(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 778
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 779
    or-int/lit8 v0, v0, 0x4

    .line 781
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$802(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 782
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 783
    or-int/lit8 v0, v0, 0x8

    .line 785
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$902(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 786
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_4e

    .line 787
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    .line 788
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 790
    :cond_4e
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1002(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;

    .line 791
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5b

    .line 792
    or-int/lit8 v0, v0, 0x10

    .line 794
    :cond_5b
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1102(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 795
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_76

    .line 796
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    .line 797
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 799
    :cond_76
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1202(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;

    .line 800
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_91

    .line 801
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    .line 802
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 804
    :cond_91
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1302(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;

    .line 805
    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_9e

    .line 806
    or-int/lit8 v0, v0, 0x20

    .line 808
    :cond_9e
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1402(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 809
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_b9

    .line 810
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    .line 811
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 813
    :cond_b9
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1502(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;

    .line 814
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_d4

    .line 815
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    .line 816
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 818
    :cond_d4
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1602(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;

    .line 819
    #setter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1702(Lcom/google/goggles/ContainerProtos$ContainerRequest;I)I

    .line 820
    return-object v2

    :cond_dd
    move v0, v1

    goto/16 :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2

    .prologue
    .line 714
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 715
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 716
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 717
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 718
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 719
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 720
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 721
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 722
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    .line 724
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 725
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 726
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 727
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    .line 728
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 729
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    .line 730
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 731
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 732
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    .line 734
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 735
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    .line 736
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 737
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->clear()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->clear()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAndroidVersionInfoRequest()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1556
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 1558
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1559
    return-object p0
.end method

.method public clearGetHistoryConfigRequest()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1117
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 1119
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1120
    return-object p0
.end method

.method public clearGogglesReplayRequest()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1335
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 1337
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1338
    return-object p0
.end method

.method public clearGogglesRequests()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    .line 1287
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1289
    return-object p0
.end method

.method public clearNativeClientLogEventRequest()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1507
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    .line 1508
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1510
    return-object p0
.end method

.method public clearSearchWindowRetrieveRequests()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1728
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    .line 1729
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1731
    return-object p0
.end method

.method public clearSearchWindowUpdateRequests()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1639
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    .line 1640
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1642
    return-object p0
.end method

.method public clearSessionConfigRequest()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1074
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 1076
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1077
    return-object p0
.end method

.method public clearSetHistoryConfigRequest()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1160
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 1162
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1163
    return-object p0
.end method

.method public clearTraceRequests()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    .line 1419
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1421
    return-object p0
.end method

.method public clearTracingCookieRequest()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1203
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 1205
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1206
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3

    .prologue
    .line 741
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->create()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidVersionInfoRequest()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 2

    .prologue
    .line 745
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    return-object v0
.end method

.method public getGogglesReplayRequest()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    return-object v0
.end method

.method public getGogglesRequests(I)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest;

    return-object v0
.end method

.method public getGogglesRequestsCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGogglesRequestsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNativeClientLogEventRequest(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    return-object v0
.end method

.method public getNativeClientLogEventRequestCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNativeClientLogEventRequestList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchWindowRetrieveRequests(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSearchWindowRetrieveRequestsCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSearchWindowRetrieveRequestsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchWindowUpdateRequests(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSearchWindowUpdateRequestsCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSearchWindowUpdateRequestsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfigRequest()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    return-object v0
.end method

.method public getTraceRequests(I)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest;

    return-object v0
.end method

.method public getTraceRequestsCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTraceRequestsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTracingCookieRequest()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    return-object v0
.end method

.method public hasAndroidVersionInfoRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1522
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasGetHistoryConfigRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1083
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasGogglesReplayRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1301
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSessionConfigRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1040
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSetHistoryConfigRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1126
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTracingCookieRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1169
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasSetHistoryConfigRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 898
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getSetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 927
    :cond_11
    :goto_11
    return v1

    :cond_12
    move v0, v1

    .line 903
    :goto_13
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getGogglesRequestsCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 904
    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getGogglesRequests(I)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 909
    :cond_26
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasGogglesReplayRequest()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 910
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getGogglesReplayRequest()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_36
    move v0, v1

    .line 915
    :goto_37
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getTraceRequestsCount()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 916
    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getTraceRequests(I)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/TracingProtos$TraceRequest;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_4a
    move v0, v1

    .line 921
    :goto_4b
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getNativeClientLogEventRequestCount()I

    move-result v2

    if-ge v0, v2, :cond_5e

    .line 922
    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getNativeClientLogEventRequest(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 927
    :cond_5e
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public mergeAndroidVersionInfoRequest(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1544
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1546
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 1552
    :goto_20
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1553
    return-object p0

    .line 1549
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 824
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 893
    :cond_6
    :goto_6
    return-object p0

    .line 825
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasSessionConfigRequest()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 826
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getSessionConfigRequest()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeSessionConfigRequest(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    .line 828
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasGetHistoryConfigRequest()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 829
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getGetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeGetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    .line 831
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasSetHistoryConfigRequest()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 832
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getSetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeSetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    .line 834
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasTracingCookieRequest()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 835
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getTracingCookieRequest()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeTracingCookieRequest(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    .line 837
    :cond_3b
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1000(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 838
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 839
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1000(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    .line 840
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 847
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasGogglesReplayRequest()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 848
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getGogglesReplayRequest()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeGogglesReplayRequest(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    .line 850
    :cond_66
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1200(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    .line 851
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 852
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1200(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    .line 853
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 860
    :cond_84
    :goto_84
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1300(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 861
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 862
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1300(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    .line 863
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 870
    :cond_a2
    :goto_a2
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasAndroidVersionInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 871
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getAndroidVersionInfoRequest()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeAndroidVersionInfoRequest(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    .line 873
    :cond_af
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1500(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 874
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 875
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1500(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    .line 876
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 883
    :cond_cd
    :goto_cd
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1600(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 884
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 885
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1600(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    .line 886
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 842
    :cond_ed
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 843
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1000(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_59

    .line 855
    :cond_fb
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 856
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1200(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_84

    .line 865
    :cond_109
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 866
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1300(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a2

    .line 878
    :cond_116
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 879
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1500(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_cd

    .line 888
    :cond_123
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 889
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->access$1600(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 936
    sparse-switch v0, :sswitch_data_108

    .line 941
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    :sswitch_d
    return-object p0

    .line 948
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    .line 949
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 950
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->addGogglesRequests(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto :goto_0

    .line 954
    :sswitch_1d
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    .line 955
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 956
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->addTraceRequests(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto :goto_0

    .line 960
    :sswitch_2c
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    .line 961
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasTracingCookieRequest()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 962
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getTracingCookieRequest()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    .line 964
    :cond_3d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 965
    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setTracingCookieRequest(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto :goto_0

    .line 969
    :sswitch_48
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    .line 970
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasGetHistoryConfigRequest()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 971
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getGetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    .line 973
    :cond_59
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 974
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setGetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto :goto_0

    .line 978
    :sswitch_64
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    .line 979
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasSetHistoryConfigRequest()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 980
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getSetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    .line 982
    :cond_75
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 983
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setSetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto :goto_0

    .line 987
    :sswitch_80
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    .line 988
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasGogglesReplayRequest()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 989
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getGogglesReplayRequest()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    .line 991
    :cond_91
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 992
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setGogglesReplayRequest(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto/16 :goto_0

    .line 996
    :sswitch_9d
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 997
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasSessionConfigRequest()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 998
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getSessionConfigRequest()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    .line 1000
    :cond_ae
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1001
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setSessionConfigRequest(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto/16 :goto_0

    .line 1005
    :sswitch_ba
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    .line 1006
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1007
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->addNativeClientLogEventRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto/16 :goto_0

    .line 1011
    :sswitch_ca
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    .line 1012
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->hasAndroidVersionInfoRequest()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 1013
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getAndroidVersionInfoRequest()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    .line 1015
    :cond_db
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1016
    invoke-virtual {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setAndroidVersionInfoRequest(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto/16 :goto_0

    .line 1020
    :sswitch_e7
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 1021
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1022
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->addSearchWindowUpdateRequests(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto/16 :goto_0

    .line 1026
    :sswitch_f7
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 1027
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1028
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->addSearchWindowRetrieveRequests(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    goto/16 :goto_0

    .line 936
    nop

    :sswitch_data_108
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x1a -> :sswitch_1d
        0x22 -> :sswitch_2c
        0x2a -> :sswitch_48
        0x32 -> :sswitch_64
        0x3a -> :sswitch_80
        0x62 -> :sswitch_9d
        0x6a -> :sswitch_ba
        0x72 -> :sswitch_ca
        0x7a -> :sswitch_e7
        0x82 -> :sswitch_f7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 698
    check-cast p1, Lcom/google/goggles/ContainerProtos$ContainerRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1105
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1107
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 1113
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1114
    return-object p0

    .line 1110
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    goto :goto_1f
.end method

.method public mergeGogglesReplayRequest(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1323
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1325
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 1331
    :goto_20
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1332
    return-object p0

    .line 1328
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    goto :goto_20
.end method

.method public mergeSessionConfigRequest(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1062
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1064
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 1070
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1071
    return-object p0

    .line 1067
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    goto :goto_1f
.end method

.method public mergeSetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1148
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1150
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 1156
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1157
    return-object p0

    .line 1153
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    goto :goto_1f
.end method

.method public mergeTracingCookieRequest(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1191
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1193
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->newBuilder(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 1199
    :goto_20
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1200
    return-object p0

    .line 1196
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    goto :goto_20
.end method

.method public removeGogglesRequests(I)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1292
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1293
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1295
    return-object p0
.end method

.method public removeNativeClientLogEventRequest(I)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1514
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1516
    return-object p0
.end method

.method public removeSearchWindowRetrieveRequests(I)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1734
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1735
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1737
    return-object p0
.end method

.method public removeSearchWindowUpdateRequests(I)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1645
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1646
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1648
    return-object p0
.end method

.method public removeTraceRequests(I)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1425
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1427
    return-object p0
.end method

.method public setAndroidVersionInfoRequest(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->build()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 1540
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1541
    return-object p0
.end method

.method public setAndroidVersionInfoRequest(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1528
    if-nez p1, :cond_8

    .line 1529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1531
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 1533
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1534
    return-object p0
.end method

.method public setGetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1099
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 1101
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1102
    return-object p0
.end method

.method public setGetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1089
    if-nez p1, :cond_8

    .line 1090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1092
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 1094
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1095
    return-object p0
.end method

.method public setGogglesReplayRequest(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1317
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 1319
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1320
    return-object p0
.end method

.method public setGogglesReplayRequest(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1307
    if-nez p1, :cond_8

    .line 1308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1310
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 1312
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1313
    return-object p0
.end method

.method public setGogglesRequests(ILcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1241
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1243
    return-object p0
.end method

.method public setGogglesRequests(ILcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1230
    if-nez p2, :cond_8

    .line 1231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1233
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureGogglesRequestsIsMutable()V

    .line 1234
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1236
    return-object p0
.end method

.method public setNativeClientLogEventRequest(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1462
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1464
    return-object p0
.end method

.method public setNativeClientLogEventRequest(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1451
    if-nez p2, :cond_8

    .line 1452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1454
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureNativeClientLogEventRequestIsMutable()V

    .line 1455
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1457
    return-object p0
.end method

.method public setSearchWindowRetrieveRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1683
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1685
    return-object p0
.end method

.method public setSearchWindowRetrieveRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1672
    if-nez p2, :cond_8

    .line 1673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1675
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowRetrieveRequestsIsMutable()V

    .line 1676
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1678
    return-object p0
.end method

.method public setSearchWindowUpdateRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1593
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1594
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1596
    return-object p0
.end method

.method public setSearchWindowUpdateRequests(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1583
    if-nez p2, :cond_8

    .line 1584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1586
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureSearchWindowUpdateRequestsIsMutable()V

    .line 1587
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1589
    return-object p0
.end method

.method public setSessionConfigRequest(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1056
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 1058
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1059
    return-object p0
.end method

.method public setSessionConfigRequest(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1046
    if-nez p1, :cond_8

    .line 1047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1049
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 1051
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1052
    return-object p0
.end method

.method public setSetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1142
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 1144
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1145
    return-object p0
.end method

.method public setSetHistoryConfigRequest(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1132
    if-nez p1, :cond_8

    .line 1133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1135
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 1137
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1138
    return-object p0
.end method

.method public setTraceRequests(ILcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1372
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1373
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->build()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1375
    return-object p0
.end method

.method public setTraceRequests(ILcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1362
    if-nez p2, :cond_8

    .line 1363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1365
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->ensureTraceRequestsIsMutable()V

    .line 1366
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1368
    return-object p0
.end method

.method public setTracingCookieRequest(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1185
    invoke-virtual {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->build()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 1187
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1188
    return-object p0
.end method

.method public setTracingCookieRequest(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1175
    if-nez p1, :cond_8

    .line 1176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1178
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 1180
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->bitField0_:I

    .line 1181
    return-object p0
.end method
