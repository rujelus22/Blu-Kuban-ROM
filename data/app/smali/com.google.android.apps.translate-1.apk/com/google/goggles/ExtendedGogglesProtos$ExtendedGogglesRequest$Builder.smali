.class public final Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;",
        "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;",
        ">;",
        "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientAnnotations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private deprecatedField1_:J

.field private deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

.field private encryptedLatLng_:Lcom/google/protobuf/ByteString;

.field private msSinceEpoch_:J

.field private networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

.field private requestId_:Ljava/lang/Object;

.field private returnResults_:Z

.field private sequenceNumber_:I

.field private sessionId_:Ljava/lang/Object;

.field private sourceLanguage_:Ljava/lang/Object;

.field private trackedResults_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1218
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    .line 1242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    .line 1352
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 1395
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    .line 1474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    .line 1588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    .line 931
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 932
    return-void
.end method

.method static synthetic access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 1

    .prologue
    .line 925
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 989
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 992
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 1

    .prologue
    .line 937
    new-instance v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureClientAnnotationsIsMutable()V
    .registers 3

    .prologue
    .line 1245
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1246
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    .line 1247
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1249
    :cond_16
    return-void
.end method

.method private ensureTrackedResultsIsMutable()V
    .registers 3

    .prologue
    .line 1591
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_17

    .line 1592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    .line 1593
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1595
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 935
    return-void
.end method


# virtual methods
.method public addAllClientAnnotations(Ljava/lang/Iterable;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;",
            ">;)",
            "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1312
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1313
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1315
    return-object p0
.end method

.method public addAllTrackedResults(Ljava/lang/Iterable;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
            ">;)",
            "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1659
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1661
    return-object p0
.end method

.method public addClientAnnotations(ILcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1306
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->build()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1308
    return-object p0
.end method

.method public addClientAnnotations(ILcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1288
    if-nez p2, :cond_8

    .line 1289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1291
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1292
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1294
    return-object p0
.end method

.method public addClientAnnotations(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1299
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->build()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    return-object p0
.end method

.method public addClientAnnotations(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1278
    if-nez p1, :cond_8

    .line 1279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1281
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1282
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    return-object p0
.end method

.method public addTrackedResults(ILcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1651
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1652
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1654
    return-object p0
.end method

.method public addTrackedResults(ILcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1634
    if-nez p2, :cond_8

    .line 1635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1637
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1638
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1640
    return-object p0
.end method

.method public addTrackedResults(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1644
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1645
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    return-object p0
.end method

.method public addTrackedResults(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1624
    if-nez p1, :cond_8

    .line 1625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1627
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1628
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    return-object p0
.end method

.method public build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 3

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 980
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 982
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 996
    new-instance v2, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;-><init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;Lcom/google/goggles/ExtendedGogglesProtos$1;)V

    .line 997
    iget v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 998
    const/4 v1, 0x0

    .line 999
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_c0

    .line 1002
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->encryptedLatLng_:Lcom/google/protobuf/ByteString;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$902(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1003
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_28

    .line 1004
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    .line 1005
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1007
    :cond_28
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1002(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/util/List;)Ljava/util/List;

    .line 1008
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_34

    .line 1009
    or-int/lit8 v0, v0, 0x2

    .line 1011
    :cond_34
    iget-wide v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->msSinceEpoch_:J

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->msSinceEpoch_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1102(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;J)J

    .line 1012
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_41

    .line 1013
    or-int/lit8 v0, v0, 0x4

    .line 1015
    :cond_41
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1202(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 1016
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_4e

    .line 1017
    or-int/lit8 v0, v0, 0x8

    .line 1019
    :cond_4e
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1302(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 1020
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5b

    .line 1021
    or-int/lit8 v0, v0, 0x10

    .line 1023
    :cond_5b
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sourceLanguage_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1402(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_68

    .line 1025
    or-int/lit8 v0, v0, 0x20

    .line 1027
    :cond_68
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sessionId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1502(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_75

    .line 1029
    or-int/lit8 v0, v0, 0x40

    .line 1031
    :cond_75
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->requestId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1602(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_82

    .line 1033
    or-int/lit16 v0, v0, 0x80

    .line 1035
    :cond_82
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sequenceNumber_:I

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sequenceNumber_:I
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1702(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;I)I

    .line 1036
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8f

    .line 1037
    or-int/lit16 v0, v0, 0x100

    .line 1039
    :cond_8f
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->returnResults_:Z

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->returnResults_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1802(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Z)Z

    .line 1040
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_aa

    .line 1041
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    .line 1042
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1044
    :cond_aa
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1902(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/util/List;)Ljava/util/List;

    .line 1045
    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_b7

    .line 1046
    or-int/lit16 v0, v0, 0x200

    .line 1048
    :cond_b7
    iget-wide v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deprecatedField1_:J

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deprecatedField1_:J
    invoke-static {v2, v3, v4}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$2002(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;J)J

    .line 1049
    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$2102(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;I)I

    .line 1050
    return-object v2

    :cond_c0
    move v0, v1

    goto/16 :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 941
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 942
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    .line 943
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    .line 945
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 946
    iput-wide v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->msSinceEpoch_:J

    .line 947
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 948
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 949
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 950
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 951
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    .line 953
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 955
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    .line 957
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 958
    iput v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sequenceNumber_:I

    .line 959
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 960
    iput-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->returnResults_:Z

    .line 961
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 962
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    .line 963
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 964
    iput-wide v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deprecatedField1_:J

    .line 965
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 966
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clear()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clear()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientAnnotations()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    .line 1319
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1321
    return-object p0
.end method

.method public clearDeprecatedField1()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1691
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1692
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deprecatedField1_:J

    .line 1694
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1388
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 1390
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1391
    return-object p0
.end method

.method public clearEncryptedLatLng()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1235
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1236
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getEncryptedLatLng()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    .line 1238
    return-object p0
.end method

.method public clearMsSinceEpoch()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3

    .prologue
    .line 1345
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->msSinceEpoch_:J

    .line 1348
    return-object p0
.end method

.method public clearNetworkInfo()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1431
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 1433
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1434
    return-object p0
.end method

.method public clearRequestId()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1534
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1535
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    .line 1537
    return-object p0
.end method

.method public clearReturnResults()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1581
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->returnResults_:Z

    .line 1584
    return-object p0
.end method

.method public clearSequenceNumber()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1560
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1561
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sequenceNumber_:I

    .line 1563
    return-object p0
.end method

.method public clearSessionId()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1498
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1499
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1501
    return-object p0
.end method

.method public clearSourceLanguage()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1462
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1463
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSourceLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    .line 1465
    return-object p0
.end method

.method public clearTrackedResults()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 1664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    .line 1665
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1667
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3

    .prologue
    .line 970
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

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
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientAnnotations(I)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .parameter

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    return-object v0
.end method

.method public getClientAnnotationsCount()I
    .registers 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientAnnotationsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 2

    .prologue
    .line 974
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecatedField1()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1682
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deprecatedField1_:J

    return-wide v0
.end method

.method public getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object v0
.end method

.method public getEncryptedLatLng()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMsSinceEpoch()J
    .registers 3

    .prologue
    .line 1336
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->msSinceEpoch_:J

    return-wide v0
.end method

.method public getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    .line 1516
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1517
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1518
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    .line 1521
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getReturnResults()Z
    .registers 2

    .prologue
    .line 1572
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->returnResults_:Z

    return v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 1551
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sequenceNumber_:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1480
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1481
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1482
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1485
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    .line 1444
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1445
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1446
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    .line 1449
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getTrackedResults(I)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .parameter

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    return-object v0
.end method

.method public getTrackedResultsCount()I
    .registers 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackedResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDeprecatedField1()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1679
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDeviceInfo()Z
    .registers 3

    .prologue
    .line 1354
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

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

.method public hasEncryptedLatLng()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1220
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMsSinceEpoch()Z
    .registers 3

    .prologue
    .line 1333
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

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

.method public hasNetworkInfo()Z
    .registers 3

    .prologue
    .line 1397
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRequestId()Z
    .registers 3

    .prologue
    .line 1512
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReturnResults()Z
    .registers 3

    .prologue
    .line 1569
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSequenceNumber()Z
    .registers 3

    .prologue
    .line 1548
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

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

.method public hasSessionId()Z
    .registers 3

    .prologue
    .line 1476
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSourceLanguage()Z
    .registers 3

    .prologue
    .line 1440
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1109
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getClientAnnotationsCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 1110
    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getClientAnnotations(I)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1121
    :cond_12
    :goto_12
    return v1

    .line 1109
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    move v0, v1

    .line 1115
    :goto_17
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getTrackedResultsCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 1116
    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getTrackedResults(I)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1115
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1121
    :cond_2a
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1376
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1378
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 1384
    :goto_20
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1385
    return-object p0

    .line 1381
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1054
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1105
    :cond_6
    :goto_6
    return-object p0

    .line 1055
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasEncryptedLatLng()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1056
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getEncryptedLatLng()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setEncryptedLatLng(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1058
    :cond_14
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1000(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1059
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1060
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1000(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    .line 1061
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1068
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasMsSinceEpoch()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1069
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getMsSinceEpoch()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1071
    :cond_3f
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1072
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1074
    :cond_4c
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasNetworkInfo()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1075
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1077
    :cond_59
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasSourceLanguage()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1078
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setSourceLanguage(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1080
    :cond_66
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1081
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1083
    :cond_73
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1084
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1086
    :cond_80
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasSequenceNumber()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1087
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setSequenceNumber(I)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1089
    :cond_8d
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasReturnResults()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1090
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getReturnResults()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setReturnResults(Z)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 1092
    :cond_9a
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 1093
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1094
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    .line 1095
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1102
    :cond_b8
    :goto_b8
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->hasDeprecatedField1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1103
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDeprecatedField1()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setDeprecatedField1(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto/16 :goto_6

    .line 1063
    :cond_c7
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1064
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1000(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_32

    .line 1097
    :cond_d5
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1098
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->access$1900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b8
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1130
    sparse-switch v0, :sswitch_data_d2

    .line 1135
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    :sswitch_d
    return-object p0

    .line 1142
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1143
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1147
    :sswitch_1b
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    .line 1148
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1149
    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->addClientAnnotations(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto :goto_0

    .line 1153
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1154
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->msSinceEpoch_:J

    goto :goto_0

    .line 1158
    :sswitch_37
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1159
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deprecatedField1_:J

    goto :goto_0

    .line 1163
    :sswitch_44
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    .line 1164
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->hasDeviceInfo()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1165
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    .line 1167
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1168
    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto :goto_0

    .line 1172
    :sswitch_60
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    .line 1173
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->hasNetworkInfo()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1174
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    .line 1176
    :cond_71
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1177
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto :goto_0

    .line 1181
    :sswitch_7c
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1182
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1186
    :sswitch_8a
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1187
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1191
    :sswitch_98
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1192
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->returnResults_:Z

    goto/16 :goto_0

    .line 1196
    :sswitch_a6
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    .line 1197
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1198
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->addTrackedResults(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto/16 :goto_0

    .line 1202
    :sswitch_b6
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1203
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sequenceNumber_:I

    goto/16 :goto_0

    .line 1207
    :sswitch_c4
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1208
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1130
    :sswitch_data_d2
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x2a -> :sswitch_1b
        0x38 -> :sswitch_2a
        0x40 -> :sswitch_37
        0x4a -> :sswitch_44
        0x52 -> :sswitch_60
        0x5a -> :sswitch_7c
        0x62 -> :sswitch_8a
        0x68 -> :sswitch_98
        0x72 -> :sswitch_a6
        0x78 -> :sswitch_b6
        0x82 -> :sswitch_c4
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
    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 925
    check-cast p1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

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
    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1419
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1421
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 1427
    :goto_20
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1428
    return-object p0

    .line 1424
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    goto :goto_20
.end method

.method public removeClientAnnotations(I)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1325
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1327
    return-object p0
.end method

.method public removeTrackedResults(I)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1670
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1671
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1673
    return-object p0
.end method

.method public setClientAnnotations(ILcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1273
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->build()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1275
    return-object p0
.end method

.method public setClientAnnotations(ILcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1262
    if-nez p2, :cond_8

    .line 1263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1265
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureClientAnnotationsIsMutable()V

    .line 1266
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1268
    return-object p0
.end method

.method public setDeprecatedField1(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1685
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1686
    iput-wide p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deprecatedField1_:J

    .line 1688
    return-object p0
.end method

.method public setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1370
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->build()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 1372
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1373
    return-object p0
.end method

.method public setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1360
    if-nez p1, :cond_8

    .line 1361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1363
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 1365
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1366
    return-object p0
.end method

.method public setEncryptedLatLng(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1226
    if-nez p1, :cond_8

    .line 1227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1229
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1230
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    .line 1232
    return-object p0
.end method

.method public setMsSinceEpoch(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1339
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1340
    iput-wide p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->msSinceEpoch_:J

    .line 1342
    return-object p0
.end method

.method public setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1413
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->build()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 1415
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1416
    return-object p0
.end method

.method public setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1403
    if-nez p1, :cond_8

    .line 1404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1406
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 1408
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1409
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1525
    if-nez p1, :cond_8

    .line 1526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1528
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1529
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    .line 1531
    return-object p0
.end method

.method setRequestId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1540
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1541
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->requestId_:Ljava/lang/Object;

    .line 1543
    return-void
.end method

.method public setReturnResults(Z)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1575
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1576
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->returnResults_:Z

    .line 1578
    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1554
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1555
    iput p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sequenceNumber_:I

    .line 1557
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1489
    if-nez p1, :cond_8

    .line 1490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1492
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1493
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1495
    return-object p0
.end method

.method setSessionId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1504
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1505
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1507
    return-void
.end method

.method public setSourceLanguage(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1453
    if-nez p1, :cond_8

    .line 1454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1456
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1457
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    .line 1459
    return-object p0
.end method

.method setSourceLanguage(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1468
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->bitField0_:I

    .line 1469
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->sourceLanguage_:Ljava/lang/Object;

    .line 1471
    return-void
.end method

.method public setTrackedResults(ILcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1618
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1619
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1621
    return-object p0
.end method

.method public setTrackedResults(ILcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1608
    if-nez p2, :cond_8

    .line 1609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1611
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->ensureTrackedResultsIsMutable()V

    .line 1612
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1614
    return-object p0
.end method
