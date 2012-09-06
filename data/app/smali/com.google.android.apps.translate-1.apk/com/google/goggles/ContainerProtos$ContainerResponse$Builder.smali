.class public final Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContainerProtos.java"

# interfaces
.implements Lcom/google/goggles/ContainerProtos$ContainerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ContainerProtos$ContainerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ContainerProtos$ContainerResponse;",
        "Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;",
        ">;",
        "Lcom/google/goggles/ContainerProtos$ContainerResponseOrBuilder;"
    }
.end annotation


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
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2210
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2533
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 2576
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 2619
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 2662
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 2705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    .line 2794
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 2837
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    .line 2926
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    .line 3015
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 3058
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    .line 3147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    .line 2211
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->maybeForceBuilderInitialization()V

    .line 2212
    return-void
.end method

.method static synthetic access$1800(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2205
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 1

    .prologue
    .line 2205
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->create()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2265
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    .line 2266
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2267
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2270
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 1

    .prologue
    .line 2217
    new-instance v0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGogglesResponsesIsMutable()V
    .registers 3

    .prologue
    .line 2708
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 2709
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    .line 2710
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2712
    :cond_17
    return-void
.end method

.method private ensureNativeClientLogEventResponseIsMutable()V
    .registers 3

    .prologue
    .line 2929
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 2930
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    .line 2931
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2933
    :cond_17
    return-void
.end method

.method private ensureSearchWindowRetrieveResponsesIsMutable()V
    .registers 3

    .prologue
    .line 3150
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_17

    .line 3151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    .line 3152
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3154
    :cond_17
    return-void
.end method

.method private ensureSearchWindowUpdateResponsesIsMutable()V
    .registers 3

    .prologue
    .line 3061
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 3062
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    .line 3063
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3065
    :cond_17
    return-void
.end method

.method private ensureTraceResponsesIsMutable()V
    .registers 3

    .prologue
    .line 2840
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 2841
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    .line 2842
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2844
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2215
    return-void
.end method


# virtual methods
.method public addAllGogglesResponses(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2775
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2776
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2778
    return-object p0
.end method

.method public addAllNativeClientLogEventResponse(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2996
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2997
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2999
    return-object p0
.end method

.method public addAllSearchWindowRetrieveResponses(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3218
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3220
    return-object p0
.end method

.method public addAllSearchWindowUpdateResponses(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3128
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3129
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3131
    return-object p0
.end method

.method public addAllTraceResponses(Ljava/lang/Iterable;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/TracingProtos$TraceResponse;",
            ">;)",
            "Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2907
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2908
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2910
    return-object p0
.end method

.method public addGogglesResponses(ILcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2768
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2769
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2771
    return-object p0
.end method

.method public addGogglesResponses(ILcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2751
    if-nez p2, :cond_8

    .line 2752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2754
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2755
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2757
    return-object p0
.end method

.method public addGogglesResponses(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2761
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2762
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2764
    return-object p0
.end method

.method public addGogglesResponses(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2741
    if-nez p1, :cond_8

    .line 2742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2744
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2745
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2747
    return-object p0
.end method

.method public addNativeClientLogEventResponse(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2989
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2990
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2992
    return-object p0
.end method

.method public addNativeClientLogEventResponse(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2972
    if-nez p2, :cond_8

    .line 2973
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2975
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2976
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2978
    return-object p0
.end method

.method public addNativeClientLogEventResponse(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2982
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2983
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2985
    return-object p0
.end method

.method public addNativeClientLogEventResponse(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2962
    if-nez p1, :cond_8

    .line 2963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2965
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2966
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2968
    return-object p0
.end method

.method public addSearchWindowRetrieveResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3210
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3211
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3213
    return-object p0
.end method

.method public addSearchWindowRetrieveResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3193
    if-nez p2, :cond_8

    .line 3194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3196
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3197
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3199
    return-object p0
.end method

.method public addSearchWindowRetrieveResponses(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3203
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3204
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3206
    return-object p0
.end method

.method public addSearchWindowRetrieveResponses(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3183
    if-nez p1, :cond_8

    .line 3184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3186
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3187
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3189
    return-object p0
.end method

.method public addSearchWindowUpdateResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3121
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3122
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3124
    return-object p0
.end method

.method public addSearchWindowUpdateResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3104
    if-nez p2, :cond_8

    .line 3105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3107
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3108
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3110
    return-object p0
.end method

.method public addSearchWindowUpdateResponses(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3114
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3115
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3117
    return-object p0
.end method

.method public addSearchWindowUpdateResponses(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3094
    if-nez p1, :cond_8

    .line 3095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3097
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3098
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3100
    return-object p0
.end method

.method public addTraceResponses(ILcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2900
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2901
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->build()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2903
    return-object p0
.end method

.method public addTraceResponses(ILcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2883
    if-nez p2, :cond_8

    .line 2884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2886
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2887
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2889
    return-object p0
.end method

.method public addTraceResponses(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2893
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2894
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->build()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2896
    return-object p0
.end method

.method public addTraceResponses(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2873
    if-nez p1, :cond_8

    .line 2874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2876
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2877
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2879
    return-object p0
.end method

.method public build()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 3

    .prologue
    .line 2256
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    .line 2257
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2258
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2260
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->build()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2274
    new-instance v2, Lcom/google/goggles/ContainerProtos$ContainerResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;-><init>(Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;Lcom/google/goggles/ContainerProtos$1;)V

    .line 2275
    iget v3, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2276
    const/4 v1, 0x0

    .line 2277
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_dd

    .line 2280
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2102(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 2281
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 2282
    or-int/lit8 v0, v0, 0x2

    .line 2284
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2202(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 2285
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 2286
    or-int/lit8 v0, v0, 0x4

    .line 2288
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2302(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 2289
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 2290
    or-int/lit8 v0, v0, 0x8

    .line 2292
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2402(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 2293
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_4e

    .line 2294
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    .line 2295
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2297
    :cond_4e
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2502(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;

    .line 2298
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5b

    .line 2299
    or-int/lit8 v0, v0, 0x10

    .line 2301
    :cond_5b
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2602(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 2302
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_76

    .line 2303
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    .line 2304
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2306
    :cond_76
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2702(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;

    .line 2307
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_91

    .line 2308
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    .line 2309
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2311
    :cond_91
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2802(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;

    .line 2312
    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_9e

    .line 2313
    or-int/lit8 v0, v0, 0x20

    .line 2315
    :cond_9e
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2902(Lcom/google/goggles/ContainerProtos$ContainerResponse;Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 2316
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_b9

    .line 2317
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    .line 2318
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2320
    :cond_b9
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3002(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;

    .line 2321
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_d4

    .line 2322
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    .line 2323
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2325
    :cond_d4
    iget-object v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3102(Lcom/google/goggles/ContainerProtos$ContainerResponse;Ljava/util/List;)Ljava/util/List;

    .line 2326
    #setter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3202(Lcom/google/goggles/ContainerProtos$ContainerResponse;I)I

    .line 2327
    return-object v2

    :cond_dd
    move v0, v1

    goto/16 :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2

    .prologue
    .line 2221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2222
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 2223
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2224
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 2225
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2226
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 2227
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2228
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 2229
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    .line 2231
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2232
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 2233
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    .line 2235
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    .line 2237
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2238
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 2239
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2240
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    .line 2241
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    .line 2243
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2244
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->clear()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->clear()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGetHistoryConfigResponse()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2612
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 2614
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2615
    return-object p0
.end method

.method public clearGogglesReplayResponse()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2830
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 2832
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2833
    return-object p0
.end method

.method public clearGogglesResponses()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    .line 2782
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2784
    return-object p0
.end method

.method public clearNativeClientLogEventResponse()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3002
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    .line 3003
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3005
    return-object p0
.end method

.method public clearSearchWindowRetrieveResponses()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    .line 3224
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3226
    return-object p0
.end method

.method public clearSearchWindowUpdateResponses()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    .line 3135
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3137
    return-object p0
.end method

.method public clearSessionConfigResponse()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2569
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 2571
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2572
    return-object p0
.end method

.method public clearSetHistoryConfigResponse()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2655
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 2657
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2658
    return-object p0
.end method

.method public clearTraceResponses()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2913
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    .line 2914
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2916
    return-object p0
.end method

.method public clearTracingCookieResponse()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2698
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 2700
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2701
    return-object p0
.end method

.method public clearVersionInfoResponse()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3051
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 3053
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3054
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3

    .prologue
    .line 2248
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->create()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

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
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->clone()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerResponse;
    .registers 2

    .prologue
    .line 2252
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getGetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    return-object v0
.end method

.method public getGogglesReplayResponse()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    return-object v0
.end method

.method public getGogglesResponses(I)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

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
    .line 2718
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

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
    .line 2715
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNativeClientLogEventResponse(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

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
    .line 2939
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

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
    .line 2936
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchWindowRetrieveResponses(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

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
    .line 3160
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

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
    .line 3157
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchWindowUpdateResponses(I)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

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
    .line 3071
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

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
    .line 3068
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfigResponse()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public getSetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    return-object v0
.end method

.method public getTraceResponses(I)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

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
    .line 2850
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

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
    .line 2847
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTracingCookieResponse()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    return-object v0
.end method

.method public getVersionInfoResponse()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    return-object v0
.end method

.method public hasGetHistoryConfigResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2578
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

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
    .line 2796
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

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

.method public hasSessionConfigResponse()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2535
    iget v1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

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
    .line 2621
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

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
    .line 2664
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

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
    .line 3017
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2404
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasGetHistoryConfigResponse()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2405
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getGetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2422
    :cond_11
    :goto_11
    return v1

    :cond_12
    move v0, v1

    .line 2410
    :goto_13
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getGogglesResponsesCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 2411
    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getGogglesResponses(I)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2410
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2416
    :cond_26
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasGogglesReplayResponse()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2417
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getGogglesReplayResponse()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2422
    :cond_36
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2331
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$ContainerResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2400
    :cond_6
    :goto_6
    return-object p0

    .line 2332
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasSessionConfigResponse()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2333
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getSessionConfigResponse()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeSessionConfigResponse(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    .line 2335
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasGetHistoryConfigResponse()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2336
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getGetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeGetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    .line 2338
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasSetHistoryConfigResponse()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2339
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getSetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeSetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    .line 2341
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasTracingCookieResponse()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2342
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getTracingCookieResponse()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeTracingCookieResponse(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    .line 2344
    :cond_3b
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2500(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 2345
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 2346
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2500(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    .line 2347
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2354
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasGogglesReplayResponse()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2355
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getGogglesReplayResponse()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeGogglesReplayResponse(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    .line 2357
    :cond_66
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2700(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    .line 2358
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2359
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2700(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    .line 2360
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2367
    :cond_84
    :goto_84
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2800(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 2368
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 2369
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2800(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    .line 2370
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2377
    :cond_a2
    :goto_a2
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->hasVersionInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2378
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->getVersionInfoResponse()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeVersionInfoResponse(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    .line 2380
    :cond_af
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3000(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 2381
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 2382
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3000(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    .line 2383
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2390
    :cond_cd
    :goto_cd
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3100(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2391
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 2392
    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3100(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    .line 2393
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 2349
    :cond_ed
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2350
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->gogglesResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2500(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_59

    .line 2362
    :cond_fb
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2363
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->traceResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2700(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_84

    .line 2372
    :cond_109
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2373
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->nativeClientLogEventResponse_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$2800(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a2

    .line 2385
    :cond_116
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 2386
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowUpdateResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3000(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_cd

    .line 2395
    :cond_123
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 2396
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ContainerProtos$ContainerResponse;->searchWindowRetrieveResponses_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->access$3100(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2431
    sparse-switch v0, :sswitch_data_108

    .line 2436
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2438
    :sswitch_d
    return-object p0

    .line 2443
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    .line 2444
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2445
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->addGogglesResponses(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto :goto_0

    .line 2449
    :sswitch_1d
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    .line 2450
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2451
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->addTraceResponses(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto :goto_0

    .line 2455
    :sswitch_2c
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    .line 2456
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasTracingCookieResponse()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2457
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getTracingCookieResponse()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    .line 2459
    :cond_3d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2460
    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setTracingCookieResponse(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto :goto_0

    .line 2464
    :sswitch_48
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    .line 2465
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasGetHistoryConfigResponse()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2466
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getGetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    .line 2468
    :cond_59
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2469
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setGetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto :goto_0

    .line 2473
    :sswitch_64
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    .line 2474
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasSetHistoryConfigResponse()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 2475
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getSetHistoryConfigResponse()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    .line 2477
    :cond_75
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2478
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setSetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto :goto_0

    .line 2482
    :sswitch_80
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    .line 2483
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasGogglesReplayResponse()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 2484
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getGogglesReplayResponse()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    .line 2486
    :cond_91
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2487
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setGogglesReplayResponse(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto/16 :goto_0

    .line 2491
    :sswitch_9d
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 2492
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasSessionConfigResponse()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2493
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getSessionConfigResponse()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    .line 2495
    :cond_ae
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2496
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setSessionConfigResponse(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto/16 :goto_0

    .line 2500
    :sswitch_ba
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    .line 2501
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2502
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->addNativeClientLogEventResponse(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto/16 :goto_0

    .line 2506
    :sswitch_ca
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    .line 2507
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->hasVersionInfoResponse()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 2508
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getVersionInfoResponse()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    .line 2510
    :cond_db
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2511
    invoke-virtual {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setVersionInfoResponse(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto/16 :goto_0

    .line 2515
    :sswitch_e7
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 2516
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2517
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->addSearchWindowUpdateResponses(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto/16 :goto_0

    .line 2521
    :sswitch_f7
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 2522
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2523
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->addSearchWindowRetrieveResponses(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    goto/16 :goto_0

    .line 2431
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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2205
    check-cast p1, Lcom/google/goggles/ContainerProtos$ContainerResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$ContainerResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

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
    .line 2205
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2600
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2602
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 2608
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2609
    return-object p0

    .line 2605
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    goto :goto_1f
.end method

.method public mergeGogglesReplayResponse(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2818
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2820
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 2826
    :goto_20
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2827
    return-object p0

    .line 2823
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    goto :goto_20
.end method

.method public mergeSessionConfigResponse(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2557
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2559
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 2565
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2566
    return-object p0

    .line 2562
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    goto :goto_1f
.end method

.method public mergeSetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2643
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2645
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 2651
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2652
    return-object p0

    .line 2648
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    goto :goto_1f
.end method

.method public mergeTracingCookieResponse(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2686
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2688
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 2694
    :goto_20
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2695
    return-object p0

    .line 2691
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    goto :goto_20
.end method

.method public mergeVersionInfoResponse(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3039
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3041
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildPartial()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 3047
    :goto_20
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3048
    return-object p0

    .line 3044
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    goto :goto_20
.end method

.method public removeGogglesResponses(I)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2787
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2788
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2790
    return-object p0
.end method

.method public removeNativeClientLogEventResponse(I)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3008
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 3009
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3011
    return-object p0
.end method

.method public removeSearchWindowRetrieveResponses(I)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3229
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3230
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3232
    return-object p0
.end method

.method public removeSearchWindowUpdateResponses(I)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3140
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3141
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3143
    return-object p0
.end method

.method public removeTraceResponses(I)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2919
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2920
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2922
    return-object p0
.end method

.method public setGetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2594
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 2596
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2597
    return-object p0
.end method

.method public setGetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2584
    if-nez p1, :cond_8

    .line 2585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2587
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->getHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 2589
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2590
    return-object p0
.end method

.method public setGogglesReplayResponse(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2812
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 2814
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2815
    return-object p0
.end method

.method public setGogglesReplayResponse(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2802
    if-nez p1, :cond_8

    .line 2803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2805
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesReplayResponse_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 2807
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2808
    return-object p0
.end method

.method public setGogglesResponses(ILcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2735
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2736
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2738
    return-object p0
.end method

.method public setGogglesResponses(ILcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2725
    if-nez p2, :cond_8

    .line 2726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2728
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureGogglesResponsesIsMutable()V

    .line 2729
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->gogglesResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2731
    return-object p0
.end method

.method public setNativeClientLogEventResponse(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2956
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2957
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2959
    return-object p0
.end method

.method public setNativeClientLogEventResponse(ILcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2946
    if-nez p2, :cond_8

    .line 2947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2949
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureNativeClientLogEventResponseIsMutable()V

    .line 2950
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->nativeClientLogEventResponse_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2952
    return-object p0
.end method

.method public setSearchWindowRetrieveResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3177
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3178
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3180
    return-object p0
.end method

.method public setSearchWindowRetrieveResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3167
    if-nez p2, :cond_8

    .line 3168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3170
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowRetrieveResponsesIsMutable()V

    .line 3171
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowRetrieveResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3173
    return-object p0
.end method

.method public setSearchWindowUpdateResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3088
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3089
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3091
    return-object p0
.end method

.method public setSearchWindowUpdateResponses(ILcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3078
    if-nez p2, :cond_8

    .line 3079
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3081
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureSearchWindowUpdateResponsesIsMutable()V

    .line 3082
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->searchWindowUpdateResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3084
    return-object p0
.end method

.method public setSessionConfigResponse(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2551
    invoke-virtual {p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 2553
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2554
    return-object p0
.end method

.method public setSessionConfigResponse(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2541
    if-nez p1, :cond_8

    .line 2542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2544
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->sessionConfigResponse_:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 2546
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2547
    return-object p0
.end method

.method public setSetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2637
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 2639
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2640
    return-object p0
.end method

.method public setSetHistoryConfigResponse(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2627
    if-nez p1, :cond_8

    .line 2628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2630
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->setHistoryConfigResponse_:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 2632
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2633
    return-object p0
.end method

.method public setTraceResponses(ILcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2867
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2868
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->build()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2870
    return-object p0
.end method

.method public setTraceResponses(ILcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2857
    if-nez p2, :cond_8

    .line 2858
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2860
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->ensureTraceResponsesIsMutable()V

    .line 2861
    iget-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->traceResponses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2863
    return-object p0
.end method

.method public setTracingCookieResponse(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2680
    invoke-virtual {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->build()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 2682
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2683
    return-object p0
.end method

.method public setTracingCookieResponse(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2670
    if-nez p1, :cond_8

    .line 2671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2673
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->tracingCookieResponse_:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 2675
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 2676
    return-object p0
.end method

.method public setVersionInfoResponse(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3033
    invoke-virtual {p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->build()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 3035
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3036
    return-object p0
.end method

.method public setVersionInfoResponse(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3023
    if-nez p1, :cond_8

    .line 3024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3026
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->versionInfoResponse_:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 3028
    iget v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;->bitField0_:I

    .line 3029
    return-object p0
.end method
