.class public final Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientParametersProto.java"

# interfaces
.implements Lcom/google/protos/speech/ClientParametersProto$ClientParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/ClientParametersProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/ClientParametersProto$ClientParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;


# instance fields
.field private bandwidthEstimatorMeanRttThresholdSecs_:D

.field private bandwidthEstimatorPacketLossThreshold_:D

.field private bandwidthEstimatorStdevRttThresholdSecs_:D

.field private bitField0_:I

.field private enableHifiForWifi_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private showHintOnHelp_:Z

.field private useWidebandSpeex_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 119
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$1;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 591
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 592
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->initFields()V

    .line 593
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 203
    iput-byte v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 235
    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 61
    invoke-direct {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->initFields()V

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 65
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_88

    .line 66
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 67
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8c

    .line 72
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 74
    const/4 v0, 0x1

    goto :goto_d

    .line 69
    :sswitch_1e
    const/4 v0, 0x1

    .line 70
    goto :goto_d

    .line 79
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 110
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 111
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 116
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->makeExtensionsImmutable()V

    throw v4

    .line 84
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 112
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 113
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 89
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    goto :goto_d

    .line 94
    :sswitch_61
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 95
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    goto :goto_d

    .line 99
    :sswitch_6e
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    goto :goto_d

    .line 104
    :sswitch_7b
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 105
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_87} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_87} :catch_45

    goto :goto_d

    .line 116
    .end local v3           #tag:I
    :cond_88
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->makeExtensionsImmutable()V

    .line 118
    return-void

    .line 67
    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_38
        0x19 -> :sswitch_54
        0x21 -> :sswitch_61
        0x29 -> :sswitch_6e
        0x30 -> :sswitch_7b
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/ClientParametersProto$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 203
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 235
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/ClientParametersProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 203
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 235
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 46
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    return-wide p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object v0
.end method

.method private initFields()V
    .registers 6

    .prologue
    const-wide v3, 0x3fc3333333333333L

    const/4 v2, 0x0

    .line 196
    iput-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    .line 197
    iput-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    .line 198
    iput-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    .line 199
    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    .line 200
    iput-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    .line 201
    iput-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    .line 202
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .registers 1

    .prologue
    .line 328
    #calls: Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->create()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->access$100()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 331
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBandwidthEstimatorMeanRttThresholdSecs()D
    .registers 3

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    return-wide v0
.end method

.method public getBandwidthEstimatorPacketLossThreshold()D
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    return-wide v0
.end method

.method public getBandwidthEstimatorStdevRttThresholdSecs()D
    .registers 3

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object v0
.end method

.method public getEnableHifiForWifi()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 237
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 238
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 266
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 240
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 241
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 242
    iget-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    :cond_18
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 246
    iget-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    :cond_25
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 250
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 253
    :cond_33
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 254
    iget-wide v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 257
    :cond_42
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 258
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 261
    :cond_52
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 262
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    :cond_62
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    move v1, v0

    .line 266
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getShowHintOnHelp()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    return v0
.end method

.method public getUseWidebandSpeex()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    return v0
.end method

.method public hasBandwidthEstimatorMeanRttThresholdSecs()Z
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasBandwidthEstimatorPacketLossThreshold()Z
    .registers 3

    .prologue
    .line 179
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasBandwidthEstimatorStdevRttThresholdSecs()Z
    .registers 3

    .prologue
    .line 169
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasEnableHifiForWifi()Z
    .registers 3

    .prologue
    .line 149
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasShowHintOnHelp()Z
    .registers 3

    .prologue
    .line 189
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasUseWidebandSpeex()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 139
    iget v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 205
    iget-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 206
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 209
    :goto_8
    return v1

    .line 206
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 208
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .registers 2

    .prologue
    .line 329
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .registers 2

    .prologue
    .line 333
    invoke-static {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

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
    .line 272
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getSerializedSize()I

    .line 215
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 216
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 218
    :cond_11
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 219
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 221
    :cond_1c
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 222
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 224
    :cond_28
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 225
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 227
    :cond_35
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 228
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 230
    :cond_43
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 231
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 233
    :cond_51
    return-void
.end method
