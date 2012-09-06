.class public final Lcom/google/goggles/TracingProtos$TraceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$TraceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_INFO_FIELD_NUMBER:I = 0x2

.field public static final NETWORK_INFO_FIELD_NUMBER:I = 0x3

.field public static final PROCESSOR_STATUS_FIELD_NUMBER:I = 0x4

.field public static final TRACE_ACTION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/TracingProtos$TraceRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3237
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/TracingProtos$TraceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/TracingProtos$TraceRequest;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceRequest;

    .line 3238
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceRequest;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceRequest;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$TraceRequest;->initFields()V

    .line 3239
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2562
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2644
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedIsInitialized:B

    .line 2682
    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedSerializedSize:I

    .line 2563
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;Lcom/google/goggles/TracingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2557
    invoke-direct {p0, p1}, Lcom/google/goggles/TracingProtos$TraceRequest;-><init>(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2644
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedIsInitialized:B

    .line 2682
    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedSerializedSize:I

    .line 2564
    return-void
.end method

.method static synthetic access$3700(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/goggles/TracingProtos$TraceRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2557
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/goggles/TracingProtos$TraceRequest;Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2557
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/goggles/TracingProtos$TraceRequest;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2557
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/google/goggles/TracingProtos$TraceRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/goggles/TracingProtos$TraceRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2557
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/goggles/TracingProtos$TraceRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2557
    iput p1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 1

    .prologue
    .line 2568
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceRequest;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2639
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    .line 2640
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 2641
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 2642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    .line 2643
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 1

    .prologue
    .line 2782
    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->create()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3500()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2785
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2751
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    .line 2752
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2753
    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    .line 2755
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2762
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    .line 2763
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2764
    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    .line 2766
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2718
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2724
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2772
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2778
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2740
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2746
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2729
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2735
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceRequest;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->access$3400(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 2

    .prologue
    .line 2572
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceRequest;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2557
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object v0
.end method

.method public getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object v0
.end method

.method public getProcessorStatus(I)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .parameter

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus;

    return-object v0
.end method

.method public getProcessorStatusCount()I
    .registers 2

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

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
    .line 2621
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    return-object v0
.end method

.method public getProcessorStatusOrBuilder(I)Lcom/google/goggles/TracingProtos$ProcessorStatusOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatusOrBuilder;

    return-object v0
.end method

.method public getProcessorStatusOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/TracingProtos$ProcessorStatusOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2684
    iget v3, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedSerializedSize:I

    .line 2685
    const/4 v0, -0x1

    if-eq v3, v0, :cond_9

    .line 2705
    :goto_8
    return v3

    :cond_9
    move v1, v2

    move v3, v2

    .line 2688
    :goto_b
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 2689
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2688
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 2692
    :cond_24
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_31

    .line 2693
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2696
    :cond_31
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_3f

    .line 2697
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2700
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_58

    .line 2701
    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 2700
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 2704
    :cond_58
    iput v3, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getTraceAction(I)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .parameter

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction;

    return-object v0
.end method

.method public getTraceActionCount()I
    .registers 2

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

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
    .line 2580
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    return-object v0
.end method

.method public getTraceActionOrBuilder(I)Lcom/google/goggles/TracingProtos$TraceActionOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceActionOrBuilder;

    return-object v0
.end method

.method public getTraceActionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/TracingProtos$TraceActionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2601
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNetworkInfo()Z
    .registers 3

    .prologue
    .line 2611
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2646
    iget-byte v2, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedIsInitialized:B

    .line 2647
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 2662
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 2647
    goto :goto_9

    :cond_c
    move v2, v1

    .line 2649
    :goto_d
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest;->getTraceActionCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 2650
    invoke-virtual {p0, v2}, Lcom/google/goggles/TracingProtos$TraceRequest;->getTraceAction(I)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/TracingProtos$TraceAction;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_21

    .line 2651
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 2652
    goto :goto_9

    .line 2649
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    move v2, v1

    .line 2655
    :goto_25
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest;->getProcessorStatusCount()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 2656
    invoke-virtual {p0, v2}, Lcom/google/goggles/TracingProtos$TraceRequest;->getProcessorStatus(I)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_39

    .line 2657
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 2658
    goto :goto_9

    .line 2655
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2661
    :cond_3c
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2

    .prologue
    .line 2783
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2557
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilderForType()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    .registers 2

    .prologue
    .line 2787
    invoke-static {p0}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder(Lcom/google/goggles/TracingProtos$TraceRequest;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2557
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest;->toBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

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
    .line 2712
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2667
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceRequest;->getSerializedSize()I

    move v1, v2

    .line 2668
    :goto_7
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 2669
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->traceAction_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2668
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 2671
    :cond_1e
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_29

    .line 2672
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2674
    :cond_29
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_35

    .line 2675
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2677
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4c

    .line 2678
    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceRequest;->processorStatus_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2677
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 2680
    :cond_4c
    return-void
.end method
