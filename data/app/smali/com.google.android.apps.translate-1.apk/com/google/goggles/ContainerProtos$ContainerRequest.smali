.class public final Lcom/google/goggles/ContainerProtos$ContainerRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContainerProtos.java"

# interfaces
.implements Lcom/google/goggles/ContainerProtos$ContainerRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ContainerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    }
.end annotation


# static fields
.field public static final ANDROID_VERSION_INFO_REQUEST_FIELD_NUMBER:I = 0xe

.field public static final GET_HISTORY_CONFIG_REQUEST_FIELD_NUMBER:I = 0x5

.field public static final GOGGLES_REPLAY_REQUEST_FIELD_NUMBER:I = 0x7

.field public static final GOGGLES_REQUESTS_FIELD_NUMBER:I = 0x1

.field public static final NATIVE_CLIENT_LOG_EVENT_REQUEST_FIELD_NUMBER:I = 0xd

.field public static final SEARCH_WINDOW_RETRIEVE_REQUESTS_FIELD_NUMBER:I = 0x10

.field public static final SEARCH_WINDOW_UPDATE_REQUESTS_FIELD_NUMBER:I = 0xf

.field public static final SESSION_CONFIG_REQUEST_FIELD_NUMBER:I = 0xc

.field public static final SET_HISTORY_CONFIG_REQUEST_FIELD_NUMBER:I = 0x6

.field public static final TRACE_REQUESTS_FIELD_NUMBER:I = 0x3

.field public static final TRACING_COOKIE_REQUEST_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerRequest;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1744
    new-instance v0, Lcom/google/goggles/ContainerProtos$ContainerRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerRequest;

    .line 1745
    sget-object v0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerRequest;

    invoke-direct {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->initFields()V

    .line 1746
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 294
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 486
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    .line 563
    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedSerializedSize:I

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;Lcom/google/goggles/ContainerProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest;-><init>(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 486
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    .line 563
    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedSerializedSize:I

    .line 296
    return-void
.end method

.method static synthetic access$1000(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/goggles/ContainerProtos$ContainerRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/goggles/ContainerProtos$ContainerRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/goggles/ContainerProtos$ContainerRequest;Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 1

    .prologue
    .line 300
    sget-object v0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 474
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 475
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 476
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 477
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    .line 479
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 480
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    .line 481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    .line 482
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    .line 484
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    .line 485
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 1

    .prologue
    .line 691
    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->create()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$400()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 694
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    .line 661
    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 662
    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    .line 664
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    .line 672
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 673
    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    .line 675
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;->access$300(Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;)Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAndroidVersionInfoRequest()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerRequest;
    .registers 2

    .prologue
    .line 304
    sget-object v0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    return-object v0
.end method

.method public getGogglesReplayRequest()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    return-object v0
.end method

.method public getGogglesRequests(I)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

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
    .line 359
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

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
    .line 352
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getGogglesRequestsOrBuilder(I)Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;

    return-object v0
.end method

.method public getGogglesRequestsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getNativeClientLogEventRequest(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

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
    .line 411
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

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
    .line 404
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    return-object v0
.end method

.method public getNativeClientLogEventRequestOrBuilder(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequestOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequestOrBuilder;

    return-object v0
.end method

.method public getNativeClientLogEventRequestOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowRetrieveRequests(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

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
    .line 463
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

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
    .line 456
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowRetrieveRequestsOrBuilder(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;

    return-object v0
.end method

.method public getSearchWindowRetrieveRequestsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowUpdateRequests(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

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
    .line 442
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

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
    .line 435
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowUpdateRequestsOrBuilder(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;

    return-object v0
.end method

.method public getSearchWindowUpdateRequestsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 565
    iget v3, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedSerializedSize:I

    .line 566
    const/4 v0, -0x1

    if-eq v3, v0, :cond_b

    .line 614
    :goto_a
    return v3

    :cond_b
    move v1, v2

    move v3, v2

    .line 569
    :goto_d
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 570
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 569
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_26
    move v1, v2

    .line 573
    :goto_27
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_41

    .line 574
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 573
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    .line 577
    :cond_41
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_50

    .line 578
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    invoke-static {v6, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 581
    :cond_50
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5f

    .line 582
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 585
    :cond_5f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_6d

    .line 586
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 589
    :cond_6d
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v7, :cond_7b

    .line 590
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 593
    :cond_7b
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_8a

    .line 594
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_8a
    move v1, v2

    .line 597
    :goto_8b
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a6

    .line 598
    const/16 v4, 0xd

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 597
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8b

    .line 601
    :cond_a6
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b7

    .line 602
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_b7
    move v1, v2

    .line 605
    :goto_b8
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d3

    .line 606
    const/16 v4, 0xf

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 605
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b8

    .line 609
    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_eb

    .line 610
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 613
    :cond_eb
    iput v3, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedSerializedSize:I

    goto/16 :goto_a
.end method

.method public getSessionConfigRequest()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    return-object v0
.end method

.method public getTraceRequests(I)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

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
    .line 390
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

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
    .line 383
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getTraceRequestsOrBuilder(I)Lcom/google/goggles/TracingProtos$TraceRequestOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequestOrBuilder;

    return-object v0
.end method

.method public getTraceRequestsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/TracingProtos$TraceRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getTracingCookieRequest()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    return-object v0
.end method

.method public hasAndroidVersionInfoRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

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

.method public hasGetHistoryConfigRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

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
    .line 373
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

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

.method public hasSessionConfigRequest()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 312
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

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
    .line 332
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

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
    .line 342
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    iget-byte v2, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    .line 489
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 522
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 489
    goto :goto_9

    .line 491
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasSetHistoryConfigRequest()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 492
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getSetHistoryConfigRequest()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 493
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    goto :goto_a

    :cond_20
    move v2, v1

    .line 497
    :goto_21
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getGogglesRequestsCount()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 498
    invoke-virtual {p0, v2}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getGogglesRequests(I)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_34

    .line 499
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 497
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 503
    :cond_37
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->hasGogglesReplayRequest()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 504
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getGogglesReplayRequest()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 505
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    goto :goto_a

    :cond_4a
    move v2, v1

    .line 509
    :goto_4b
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getTraceRequestsCount()I

    move-result v3

    if-ge v2, v3, :cond_61

    .line 510
    invoke-virtual {p0, v2}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getTraceRequests(I)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/TracingProtos$TraceRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 511
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 509
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_61
    move v2, v1

    .line 515
    :goto_62
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getNativeClientLogEventRequestCount()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 516
    invoke-virtual {p0, v2}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getNativeClientLogEventRequest(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_75

    .line 517
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 515
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 521
    :cond_78
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->memoizedIsInitialized:B

    move v1, v0

    .line 522
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2

    .prologue
    .line 692
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilderForType()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;
    .registers 2

    .prologue
    .line 696
    invoke-static {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->newBuilder(Lcom/google/goggles/ContainerProtos$ContainerRequest;)Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->toBuilder()Lcom/google/goggles/ContainerProtos$ContainerRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getSerializedSize()I

    move v1, v2

    .line 528
    :goto_9
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 529
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 528
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_20
    move v1, v2

    .line 531
    :goto_21
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 532
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->traceRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 531
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    .line 534
    :cond_39
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_46

    .line 535
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->tracingCookieRequest_:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 537
    :cond_46
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 538
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->getHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 540
    :cond_53
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_5f

    .line 541
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->setHistoryConfigRequest_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 543
    :cond_5f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v6, :cond_6b

    .line 544
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->gogglesReplayRequest_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 546
    :cond_6b
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_78

    .line 547
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->sessionConfigRequest_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_78
    move v1, v2

    .line 549
    :goto_79
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_92

    .line 550
    const/16 v3, 0xd

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->nativeClientLogEventRequest_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 549
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_79

    .line 552
    :cond_92
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a1

    .line 553
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->androidVersionInfoRequest_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_a1
    move v1, v2

    .line 555
    :goto_a2
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bb

    .line 556
    const/16 v3, 0xf

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowUpdateRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 555
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a2

    .line 558
    :cond_bb
    :goto_bb
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d1

    .line 559
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerRequest;->searchWindowRetrieveRequests_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 561
    :cond_d1
    return-void
.end method
