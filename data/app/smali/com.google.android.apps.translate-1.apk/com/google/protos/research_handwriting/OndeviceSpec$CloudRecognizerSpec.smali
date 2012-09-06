.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudRecognizerSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_NAME_FIELD_NUMBER:I = 0x6

.field public static final CLIENT_VERSION_FIELD_NUMBER:I = 0x7

.field public static final COMPRESS_REQUESTS_FIELD_NUMBER:I = 0x3

.field public static final DEVICE_NAME_FIELD_NUMBER:I = 0x4

.field public static final DEVICE_VERSION_FIELD_NUMBER:I = 0x5

.field public static final RECO_PATH_FIELD_NUMBER:I = 0x2

.field public static final SEND_FEEDBACK_IMMEDIATELY_FIELD_NUMBER:I = 0x8

.field public static final SERVER_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientName_:Ljava/lang/Object;

.field private clientVersion_:I

.field private compressRequests_:Z

.field private deviceName_:Ljava/lang/Object;

.field private deviceVersion_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recoPath_:Ljava/lang/Object;

.field private sendFeedbackImmediately_:Z

.field private server_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2272
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;-><init>(Z)V

    sput-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 2273
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->initFields()V

    .line 2274
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1489
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1681
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedIsInitialized:B

    .line 1719
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedSerializedSize:I

    .line 1490
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1491
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1681
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedIsInitialized:B

    .line 1719
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedSerializedSize:I

    .line 1491
    return-void
.end method

.method static synthetic access$2202(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->server_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->recoPath_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput-boolean p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->compressRequests_:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceVersion_:I

    return p1
.end method

.method static synthetic access$2702(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientVersion_:I

    return p1
.end method

.method static synthetic access$2902(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput-boolean p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->sendFeedbackImmediately_:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1484
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    return p1
.end method

.method private getClientNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientName_:Ljava/lang/Object;

    .line 1641
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1642
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1644
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientName_:Ljava/lang/Object;

    .line 1647
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 1

    .prologue
    .line 1495
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    return-object v0
.end method

.method private getDeviceNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceName_:Ljava/lang/Object;

    .line 1599
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1600
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1602
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceName_:Ljava/lang/Object;

    .line 1605
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getRecoPathBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->recoPath_:Ljava/lang/Object;

    .line 1557
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1558
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1560
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->recoPath_:Ljava/lang/Object;

    .line 1563
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getServerBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->server_:Ljava/lang/Object;

    .line 1525
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1526
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1528
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->server_:Ljava/lang/Object;

    .line 1531
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->server_:Ljava/lang/Object;

    .line 1673
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->recoPath_:Ljava/lang/Object;

    .line 1674
    iput-boolean v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->compressRequests_:Z

    .line 1675
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceName_:Ljava/lang/Object;

    .line 1676
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceVersion_:I

    .line 1677
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientName_:Ljava/lang/Object;

    .line 1678
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientVersion_:I

    .line 1679
    iput-boolean v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->sendFeedbackImmediately_:Z

    .line 1680
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 1835
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$2000()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1838
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1804
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    .line 1805
    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1806
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    .line 1808
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    .line 1816
    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1817
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    .line 1819
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1771
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1777
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1825
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1831
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1799
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1782
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1788
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientName_:Ljava/lang/Object;

    .line 1627
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1628
    check-cast v0, Ljava/lang/String;

    .line 1636
    :goto_8
    return-object v0

    .line 1630
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1632
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1633
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1634
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1636
    goto :goto_8
.end method

.method public getClientVersion()I
    .registers 2

    .prologue
    .line 1658
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientVersion_:I

    return v0
.end method

.method public getCompressRequests()Z
    .registers 2

    .prologue
    .line 1574
    iget-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->compressRequests_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2

    .prologue
    .line 1499
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceName_:Ljava/lang/Object;

    .line 1585
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1586
    check-cast v0, Ljava/lang/String;

    .line 1594
    :goto_8
    return-object v0

    .line 1588
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1590
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1591
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1592
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1594
    goto :goto_8
.end method

.method public getDeviceVersion()I
    .registers 2

    .prologue
    .line 1616
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceVersion_:I

    return v0
.end method

.method public getRecoPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->recoPath_:Ljava/lang/Object;

    .line 1543
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1544
    check-cast v0, Ljava/lang/String;

    .line 1552
    :goto_8
    return-object v0

    .line 1546
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1548
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1549
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1550
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->recoPath_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1552
    goto :goto_8
.end method

.method public getSendFeedbackImmediately()Z
    .registers 2

    .prologue
    .line 1668
    iget-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->sendFeedbackImmediately_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1721
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedSerializedSize:I

    .line 1722
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 1758
    :goto_a
    return v0

    .line 1724
    :cond_b
    const/4 v0, 0x0

    .line 1725
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1b

    .line 1726
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getServerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1729
    :cond_1b
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2a

    .line 1730
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getRecoPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1733
    :cond_2a
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_38

    .line 1734
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->compressRequests_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1737
    :cond_38
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_47

    .line 1738
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDeviceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1741
    :cond_47
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_57

    .line 1742
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceVersion_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1745
    :cond_57
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_69

    .line 1746
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getClientNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1749
    :cond_69
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_79

    .line 1750
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientVersion_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1753
    :cond_79
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_88

    .line 1754
    iget-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->sendFeedbackImmediately_:Z

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1757
    :cond_88
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedSerializedSize:I

    goto :goto_a
.end method

.method public getServer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->server_:Ljava/lang/Object;

    .line 1511
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1512
    check-cast v0, Ljava/lang/String;

    .line 1520
    :goto_8
    return-object v0

    .line 1514
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1516
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1517
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1518
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->server_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1520
    goto :goto_8
.end method

.method public hasClientName()Z
    .registers 3

    .prologue
    .line 1623
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 1655
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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

.method public hasCompressRequests()Z
    .registers 3

    .prologue
    .line 1571
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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

.method public hasDeviceName()Z
    .registers 3

    .prologue
    .line 1581
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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

.method public hasDeviceVersion()Z
    .registers 3

    .prologue
    .line 1613
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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

.method public hasRecoPath()Z
    .registers 3

    .prologue
    .line 1539
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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

.method public hasSendFeedbackImmediately()Z
    .registers 3

    .prologue
    .line 1665
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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

.method public hasServer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1507
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

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
    const/4 v0, 0x1

    .line 1683
    iget-byte v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedIsInitialized:B

    .line 1684
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 1687
    :goto_8
    return v0

    .line 1684
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 1686
    :cond_b
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1836
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1840
    invoke-static {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

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
    .line 1765
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1692
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getSerializedSize()I

    .line 1693
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 1694
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getServerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1696
    :cond_15
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 1697
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getRecoPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1699
    :cond_22
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 1700
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->compressRequests_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1702
    :cond_2e
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 1703
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDeviceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1705
    :cond_3b
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 1706
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1708
    :cond_49
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 1709
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getClientNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1711
    :cond_59
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_67

    .line 1712
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1714
    :cond_67
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_74

    .line 1715
    iget-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->sendFeedbackImmediately_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1717
    :cond_74
    return-void
.end method
