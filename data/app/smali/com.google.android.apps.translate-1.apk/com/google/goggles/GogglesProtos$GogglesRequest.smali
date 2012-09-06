.class public final Lcom/google/goggles/GogglesProtos$GogglesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;,
        Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;,
        Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesRequest;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUDIO_FIELD_NUMBER:I = 0x3

.field public static final CAPTURE_TYPE_FIELD_NUMBER:I = 0x7

.field public static final FLOW_FIELD_NUMBER:I = 0x5

.field public static final GOGGLES_CONFIG_FIELD_NUMBER:I = 0xa

.field public static final IMAGE_FIELD_NUMBER:I = 0x1

.field public static final POSE_FIELD_NUMBER:I = 0x2

.field public static final RESTRICTS_FIELD_NUMBER:I = 0x8

.field public static final SOURCE_FIELD_NUMBER:I = 0x6

.field public static final TEXT_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesRequest;

.field private static final serialVersionUID:J


# instance fields
.field private audio_:Lcom/google/goggles/GogglesProtos$Audio;

.field private bitField0_:I

.field private captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

.field private flow_:Lcom/google/goggles/FlowProtos$FlowData;

.field private gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

.field private image_:Lcom/google/goggles/GogglesProtos$Image;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pose_:Lcom/google/goggles/PoseProtos$Pose;

.field private restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

.field private source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3754
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesRequest;

    .line 3755
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesRequest;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->initFields()V

    .line 3756
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2701
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 2947
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    .line 3014
    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedSerializedSize:I

    .line 2702
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/goggles/GogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2696
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;-><init>(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2703
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2947
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    .line 3014
    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedSerializedSize:I

    .line 2703
    return-void
.end method

.method static synthetic access$4202(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->image_:Lcom/google/goggles/GogglesProtos$Image;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/goggles/GogglesProtos$GogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;)Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/goggles/GogglesProtos$GogglesRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2696
    iput p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 1

    .prologue
    .line 2707
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesRequest;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->text_:Ljava/lang/Object;

    .line 2886
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2887
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2889
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->text_:Ljava/lang/Object;

    .line 2892
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2937
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 2938
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->image_:Lcom/google/goggles/GogglesProtos$Image;

    .line 2939
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 2940
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    .line 2941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->text_:Ljava/lang/Object;

    .line 2942
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    .line 2943
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2944
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 2945
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 2946
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 1

    .prologue
    .line 3135
    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->create()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$4000()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 3138
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3104
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    .line 3105
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3106
    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    .line 3108
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3115
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    .line 3116
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3117
    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    .line 3119
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3071
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3077
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3125
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3131
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3093
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3099
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3082
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3088
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudio()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    return-object v0
.end method

.method public getCaptureType()Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
    .registers 2

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 2

    .prologue
    .line 2711
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFlow()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    return-object v0
.end method

.method public getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object v0
.end method

.method public getImage()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->image_:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method public getPose()Lcom/google/goggles/PoseProtos$Pose;
    .registers 2

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    return-object v0
.end method

.method public getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 3016
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedSerializedSize:I

    .line 3017
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 3058
    :goto_a
    return v0

    .line 3019
    :cond_b
    const/4 v0, 0x0

    .line 3020
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_19

    .line 3021
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->image_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3024
    :cond_19
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_26

    .line 3025
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3028
    :cond_26
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_34

    .line 3029
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3032
    :cond_34
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_45

    .line 3033
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3036
    :cond_45
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_55

    .line 3037
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3040
    :cond_55
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_69

    .line 3041
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3044
    :cond_69
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7d

    .line 3045
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3048
    :cond_7d
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8c

    .line 3049
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3052
    :cond_8c
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_9b

    .line 3053
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3056
    :cond_9b
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3057
    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedSerializedSize:I

    goto/16 :goto_a
.end method

.method public getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 2

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->text_:Ljava/lang/Object;

    .line 2872
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2873
    check-cast v0, Ljava/lang/String;

    .line 2881
    :goto_8
    return-object v0

    .line 2875
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2877
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2878
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2879
    iput-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->text_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2881
    goto :goto_8
.end method

.method public hasAudio()Z
    .registers 3

    .prologue
    .line 2858
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public hasCaptureType()Z
    .registers 3

    .prologue
    .line 2920
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public hasFlow()Z
    .registers 3

    .prologue
    .line 2900
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public hasGogglesConfig()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2828
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasImage()Z
    .registers 3

    .prologue
    .line 2838
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public hasPose()Z
    .registers 3

    .prologue
    .line 2848
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public hasRestricts()Z
    .registers 3

    .prologue
    .line 2930
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public hasSource()Z
    .registers 3

    .prologue
    .line 2910
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    .line 2868
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2949
    iget-byte v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    .line 2950
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 2975
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 2950
    goto :goto_9

    .line 2952
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasGogglesConfig()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2953
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2954
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 2958
    :cond_20
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2959
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_33

    .line 2960
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 2964
    :cond_33
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasPose()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2965
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/PoseProtos$Pose;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_46

    .line 2966
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 2970
    :cond_46
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 2971
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 2974
    :cond_4f
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->memoizedIsInitialized:B

    move v1, v0

    .line 2975
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3136
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilderForType()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3140
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->toBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

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
    .line 3065
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2980
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getSerializedSize()I

    .line 2982
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 2984
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_17

    .line 2985
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->image_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2987
    :cond_17
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_22

    .line 2988
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2990
    :cond_22
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_2e

    .line 2991
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2993
    :cond_2e
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3d

    .line 2994
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2996
    :cond_3d
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4b

    .line 2997
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2999
    :cond_4b
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5d

    .line 3000
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3002
    :cond_5d
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6f

    .line 3003
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3005
    :cond_6f
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7c

    .line 3006
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3008
    :cond_7c
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_89

    .line 3009
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3011
    :cond_89
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 3012
    return-void
.end method
