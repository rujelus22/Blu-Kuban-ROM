.class public final Lcom/google/goggles/ContainerProtos$ContainerResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContainerProtos.java"

# interfaces
.implements Lcom/google/goggles/ContainerProtos$ContainerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ContainerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    }
.end annotation


# static fields
.field public static final GET_HISTORY_CONFIG_RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final GOGGLES_REPLAY_RESPONSE_FIELD_NUMBER:I = 0x7

.field public static final GOGGLES_RESPONSES_FIELD_NUMBER:I = 0x1

.field public static final NATIVE_CLIENT_LOG_EVENT_RESPONSE_FIELD_NUMBER:I = 0xd

.field public static final SEARCH_WINDOW_RETRIEVE_RESPONSES_FIELD_NUMBER:I = 0x10

.field public static final SEARCH_WINDOW_UPDATE_RESPONSES_FIELD_NUMBER:I = 0xf

.field public static final SESSION_CONFIG_RESPONSE_FIELD_NUMBER:I = 0xc

.field public static final SET_HISTORY_CONFIG_RESPONSE_FIELD_NUMBER:I = 0x6

.field public static final TRACE_RESPONSES_FIELD_NUMBER:I = 0x3

.field public static final TRACING_COOKIE_RESPONSE_FIELD_NUMBER:I = 0x4

.field public static final VERSION_INFO_RESPONSE_FIELD_NUMBER:I = 0xe

.field private static final defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

.field private gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

.field private gogglesResponses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nativeClientLogEventResponse_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;"
        }
    .end annotation
.end field

.field private searchWindowRetrieveResponses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private searchWindowUpdateResponses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

.field private setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

.field private traceResponses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

.field private versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3239
    new-instance v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerResponse;

    .line 3240
    sget-object v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerResponse;

    invoke-direct {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->initFields()V

    .line 3241
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1813
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2005
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedIsInitialized:B

    .line 2070
    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedSerializedSize:I

    .line 1814
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;Lcom/google/goggles/ContainerProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1808
    invoke-direct {p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;-><init>(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1815
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2005
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedIsInitialized:B

    .line 2070
    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedSerializedSize:I

    .line 1815
    return-void
.end method

.method static synthetic access$2102(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/goggles/ContainerProtos$ContainerResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1808
    iput p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 1

    .prologue
    .line 1819
    sget-object v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1993
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 1994
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 1995
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 1996
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 1997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    .line 1998
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 1999
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    .line 2000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    .line 2001
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 2002
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    .line 2003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    .line 2004
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 1

    .prologue
    .line 2198
    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->create()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1900()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2201
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2167
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    .line 2168
    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2169
    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    .line 2171
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2178
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    .line 2179
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2180
    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    .line 2182
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2134
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2140
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2188
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2194
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2156
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2162
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2145
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2151
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 2

    .prologue
    .line 1823
    sget-object v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->defaultInstance:Lcom/google/goggles/ContainerProtos$ContainerResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getGetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    return-object v0
.end method

.method public getGogglesReplayResponse()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    return-object v0
.end method

.method public getGogglesResponses(I)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    return-object v0
.end method

.method public getGogglesResponsesCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGogglesResponsesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getGogglesResponsesOrBuilder(I)Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;

    return-object v0
.end method

.method public getGogglesResponsesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getNativeClientLogEventResponse(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    return-object v0
.end method

.method public getNativeClientLogEventResponseCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNativeClientLogEventResponseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getNativeClientLogEventResponseOrBuilder(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponseOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponseOrBuilder;

    return-object v0
.end method

.method public getNativeClientLogEventResponseOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowRetrieveResponses(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSearchWindowRetrieveResponsesCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSearchWindowRetrieveResponsesList()Ljava/util/List;
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
    .line 1975
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowRetrieveResponsesOrBuilder(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;

    return-object v0
.end method

.method public getSearchWindowRetrieveResponsesOrBuilderList()Ljava/util/List;
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
    .line 1979
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowUpdateResponses(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSearchWindowUpdateResponsesCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSearchWindowUpdateResponsesList()Ljava/util/List;
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
    .line 1954
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getSearchWindowUpdateResponsesOrBuilder(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;

    return-object v0
.end method

.method public getSearchWindowUpdateResponsesOrBuilderList()Ljava/util/List;
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
    .line 1958
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2072
    iget v3, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedSerializedSize:I

    .line 2073
    const/4 v0, -0x1

    if-eq v3, v0, :cond_b

    .line 2121
    :goto_a
    return v3

    :cond_b
    move v1, v2

    move v3, v2

    .line 2076
    :goto_d
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 2077
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2076
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_26
    move v1, v2

    .line 2080
    :goto_27
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_41

    .line 2081
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2080
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    .line 2084
    :cond_41
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_50

    .line 2085
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-static {v6, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2088
    :cond_50
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5f

    .line 2089
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2092
    :cond_5f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_6d

    .line 2093
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2096
    :cond_6d
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v7, :cond_7b

    .line 2097
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2100
    :cond_7b
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_8a

    .line 2101
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_8a
    move v1, v2

    .line 2104
    :goto_8b
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a6

    .line 2105
    const/16 v4, 0xd

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8b

    .line 2108
    :cond_a6
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b7

    .line 2109
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_b7
    move v1, v2

    .line 2112
    :goto_b8
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d3

    .line 2113
    const/16 v4, 0xf

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b8

    .line 2116
    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_eb

    .line 2117
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2116
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 2120
    :cond_eb
    iput v3, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedSerializedSize:I

    goto/16 :goto_a
.end method

.method public getSessionConfigResponse()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    return-object v0
.end method

.method public getTraceResponses(I)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse;

    return-object v0
.end method

.method public getTraceResponsesCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTraceResponsesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getTraceResponsesOrBuilder(I)Lcom/google/goggles/TracingProtos$TraceResponseOrBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponseOrBuilder;

    return-object v0
.end method

.method public getTraceResponsesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/TracingProtos$TraceResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    return-object v0
.end method

.method public getTracingCookieResponse()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    return-object v0
.end method

.method public getVersionInfoResponse()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    return-object v0
.end method

.method public hasGetHistoryConfigResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1841
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

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

.method public hasGogglesReplayResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1892
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

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

.method public hasSessionConfigResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1831
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSetHistoryConfigResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1851
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

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

.method public hasTracingCookieResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1861
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

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

.method public hasVersionInfoResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1944
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2007
    iget-byte v2, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedIsInitialized:B

    .line 2008
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 2029
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 2008
    goto :goto_9

    .line 2010
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasGetHistoryConfigResponse()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2011
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getGetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2012
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedIsInitialized:B

    goto :goto_a

    :cond_20
    move v2, v1

    .line 2016
    :goto_21
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getGogglesResponsesCount()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 2017
    invoke-virtual {p0, v2}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getGogglesResponses(I)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_34

    .line 2018
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 2016
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2022
    :cond_37
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasGogglesReplayResponse()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2023
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getGogglesReplayResponse()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 2024
    iput-byte v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 2028
    :cond_4a
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->memoizedIsInitialized:B

    move v1, v0

    .line 2029
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2

    .prologue
    .line 2199
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilderForType()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2

    .prologue
    .line 2203
    invoke-static {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->toBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

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
    .line 2128
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

    .line 2034
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getSerializedSize()I

    move v1, v2

    .line 2035
    :goto_9
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 2036
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2035
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_20
    move v1, v2

    .line 2038
    :goto_21
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 2039
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2038
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    .line 2041
    :cond_39
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_46

    .line 2042
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2044
    :cond_46
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 2045
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2047
    :cond_53
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_5f

    .line 2048
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2050
    :cond_5f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v6, :cond_6b

    .line 2051
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2053
    :cond_6b
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_78

    .line 2054
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_78
    move v1, v2

    .line 2056
    :goto_79
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_92

    .line 2057
    const/16 v3, 0xd

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2056
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_79

    .line 2059
    :cond_92
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a1

    .line 2060
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_a1
    move v1, v2

    .line 2062
    :goto_a2
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bb

    .line 2063
    const/16 v3, 0xf

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2062
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a2

    .line 2065
    :cond_bb
    :goto_bb
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d1

    .line 2066
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2065
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 2068
    :cond_d1
    return-void
.end method
