.class public final Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$TraceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$TraceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingProtos$TraceRequest;",
        "Lcom/google/goggles/TracingProtos$TraceRequest$Builder;",
        ">;",
        "Lcom/google/goggles/TracingProtos$TraceRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

.field private networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

.field private processorStatus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$ProcessorStatus;",
            ">;"
        }
    .end annotation
.end field

.field private traceAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2794
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2970
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    .line 3059
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 3102
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 3145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    .line 2795
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2796
    return-void
.end method

.method static synthetic access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2789
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 1

    .prologue
    .line 2789
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->create()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    .line 2836
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2837
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2840
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 1

    .prologue
    .line 2801
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureProcessorStatusIsMutable()V
    .registers 3

    .prologue
    .line 3148
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 3149
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    .line 3150
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3152
    :cond_17
    return-void
.end method

.method private ensureTraceActionIsMutable()V
    .registers 3

    .prologue
    .line 2973
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 2974
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    .line 2975
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2977
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2799
    return-void
.end method


# virtual methods
.method public addAllProcessorStatus(Ljava/lang/Iterable;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/TracingProtos$ProcessorStatus;",
            ">;)",
            "Lcom/google/goggles/TracingProtos$TraceRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 3215
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3216
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3218
    return-object p0
.end method

.method public addAllTraceAction(Ljava/lang/Iterable;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/TracingProtos$TraceAction;",
            ">;)",
            "Lcom/google/goggles/TracingProtos$TraceRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 3040
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 3041
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3043
    return-object p0
.end method

.method public addProcessorStatus(ILcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3208
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3209
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->build()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3211
    return-object p0
.end method

.method public addProcessorStatus(ILcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3191
    if-nez p2, :cond_8

    .line 3192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3194
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3195
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3197
    return-object p0
.end method

.method public addProcessorStatus(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3201
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3202
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->build()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3204
    return-object p0
.end method

.method public addProcessorStatus(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3181
    if-nez p1, :cond_8

    .line 3182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3184
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3185
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3187
    return-object p0
.end method

.method public addTraceAction(ILcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3033
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 3034
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->build()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3036
    return-object p0
.end method

.method public addTraceAction(ILcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3016
    if-nez p2, :cond_8

    .line 3017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3019
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 3020
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3022
    return-object p0
.end method

.method public addTraceAction(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3026
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 3027
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->build()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3029
    return-object p0
.end method

.method public addTraceAction(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3006
    if-nez p1, :cond_8

    .line 3007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3009
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 3010
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3012
    return-object p0
.end method

.method public build()Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3

    .prologue
    .line 2826
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    .line 2827
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2828
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2830
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->build()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 2844
    new-instance v2, Lcom/google/goggles/TracingProtos$TraceRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/TracingProtos$TraceRequest;-><init>(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;Lcom/google/goggles/TracingProtos$1;)V

    .line 2845
    iget v3, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2846
    const/4 v1, 0x0

    .line 2847
    iget v4, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_1e

    .line 2848
    iget-object v4, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    .line 2849
    iget v4, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2851
    :cond_1e
    iget-object v4, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    #setter for: Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$3702(Lcom/google/goggles/TracingProtos$TraceRequest;Ljava/util/List;)Ljava/util/List;

    .line 2852
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_58

    .line 2855
    :goto_28
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    #setter for: Lcom/google/goggles/TracingProtos$TraceRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$3802(Lcom/google/goggles/TracingProtos$TraceRequest;Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 2856
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_34

    .line 2857
    or-int/lit8 v0, v0, 0x2

    .line 2859
    :cond_34
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    #setter for: Lcom/google/goggles/TracingProtos$TraceRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$3902(Lcom/google/goggles/TracingProtos$TraceRequest;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 2860
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4f

    .line 2861
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    .line 2862
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2864
    :cond_4f
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    #setter for: Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$4002(Lcom/google/goggles/TracingProtos$TraceRequest;Ljava/util/List;)Ljava/util/List;

    .line 2865
    #setter for: Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$4102(Lcom/google/goggles/TracingProtos$TraceRequest;I)I

    .line 2866
    return-object v2

    :cond_58
    move v0, v1

    goto :goto_28
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2

    .prologue
    .line 2805
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    .line 2807
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2808
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 2809
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2810
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 2811
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2812
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    .line 2813
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2814
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->clear()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->clear()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceInfo()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2

    .prologue
    .line 3095
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 3097
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3098
    return-object p0
.end method

.method public clearNetworkInfo()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2

    .prologue
    .line 3138
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 3140
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3141
    return-object p0
.end method

.method public clearProcessorStatus()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2

    .prologue
    .line 3221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    .line 3222
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3224
    return-object p0
.end method

.method public clearTraceAction()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2

    .prologue
    .line 3046
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    .line 3047
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3049
    return-object p0
.end method

.method public clone()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3

    .prologue
    .line 2818
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->create()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

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
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 2

    .prologue
    .line 2822
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object v0
.end method

.method public getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object v0
.end method

.method public getProcessorStatus(I)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .parameter

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus;

    return-object v0
.end method

.method public getProcessorStatusCount()I
    .registers 2

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProcessorStatusList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$ProcessorStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTraceAction(I)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .parameter

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction;

    return-object v0
.end method

.method public getTraceActionCount()I
    .registers 2

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTraceActionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .registers 3

    .prologue
    .line 3061
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

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

.method public hasNetworkInfo()Z
    .registers 3

    .prologue
    .line 3104
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2901
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getTraceActionCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 2902
    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getTraceAction(I)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/TracingProtos$TraceAction;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2913
    :cond_12
    :goto_12
    return v1

    .line 2901
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    move v0, v1

    .line 2907
    :goto_17
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getProcessorStatusCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 2908
    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getProcessorStatus(I)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2907
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2913
    :cond_2a
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3083
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3085
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 3091
    :goto_1f
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3092
    return-object p0

    .line 3088
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2870
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2897
    :cond_6
    :goto_6
    return-object p0

    .line 2871
    :cond_7
    #getter for: Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$3700(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2872
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2873
    #getter for: Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$3700(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    .line 2874
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 2881
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2882
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    .line 2884
    :cond_32
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->hasNetworkInfo()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2885
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    .line 2887
    :cond_3f
    #getter for: Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$4000(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2888
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2889
    #getter for: Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$4000(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    .line 2890
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 2876
    :cond_5e
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 2877
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    #getter for: Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$3700(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 2892
    :cond_6b
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 2893
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    #getter for: Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceRequest;->access$4000(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2921
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2922
    sparse-switch v0, :sswitch_data_64

    .line 2927
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2929
    :sswitch_d
    return-object p0

    .line 2934
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    .line 2935
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2936
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->addTraceAction(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    goto :goto_0

    .line 2940
    :sswitch_1d
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    .line 2941
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->hasDeviceInfo()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2942
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    .line 2944
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2945
    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    goto :goto_0

    .line 2949
    :sswitch_39
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    .line 2950
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->hasNetworkInfo()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2951
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    .line 2953
    :cond_4a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2954
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    goto :goto_0

    .line 2958
    :sswitch_55
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    .line 2959
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2960
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->addProcessorStatus(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    goto :goto_0

    .line 2922
    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_39
        0x22 -> :sswitch_55
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
    .line 2789
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2789
    check-cast p1, Lcom/google/goggles/TracingProtos$TraceRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

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
    .line 2789
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3126
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3128
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 3134
    :goto_1f
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3135
    return-object p0

    .line 3131
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    goto :goto_1f
.end method

.method public removeProcessorStatus(I)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3227
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3228
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3230
    return-object p0
.end method

.method public removeTraceAction(I)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3052
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 3053
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3055
    return-object p0
.end method

.method public setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3077
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->build()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 3079
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3080
    return-object p0
.end method

.method public setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3067
    if-nez p1, :cond_8

    .line 3068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3070
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 3072
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3073
    return-object p0
.end method

.method public setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3120
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->build()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 3122
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3123
    return-object p0
.end method

.method public setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3110
    if-nez p1, :cond_8

    .line 3111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3113
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 3115
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->bitField0_:I

    .line 3116
    return-object p0
.end method

.method public setProcessorStatus(ILcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3175
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3176
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->build()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3178
    return-object p0
.end method

.method public setProcessorStatus(ILcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3165
    if-nez p2, :cond_8

    .line 3166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3168
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureProcessorStatusIsMutable()V

    .line 3169
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3171
    return-object p0
.end method

.method public setTraceAction(ILcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3000
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 3001
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->build()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3003
    return-object p0
.end method

.method public setTraceAction(ILcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2990
    if-nez p2, :cond_8

    .line 2991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2993
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->ensureTraceActionIsMutable()V

    .line 2994
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->traceAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2996
    return-object p0
.end method
