.class public final Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NetworkInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/NetworkInfoProtos$NetworkInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NetworkInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;,
        Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    }
.end annotation


# static fields
.field public static final MOBILE_NETWORK_INFO_FIELD_NUMBER:I = 0x2

.field public static final SIGNAL_STRENGTH_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

.field private signalStrength_:I

.field private type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 950
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 951
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-direct {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->initFields()V

    .line 952
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 500
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 596
    iput-byte v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedIsInitialized:B

    .line 619
    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedSerializedSize:I

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;Lcom/google/goggles/NetworkInfoProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;-><init>(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 502
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 596
    iput-byte v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedIsInitialized:B

    .line 619
    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedSerializedSize:I

    .line 502
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 495
    iput p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->signalStrength_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 495
    iput p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 1

    .prologue
    .line 506
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 592
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 593
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 594
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->signalStrength_:I

    .line 595
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 1

    .prologue
    .line 715
    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->create()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$700()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 2
    .parameter

    .prologue
    .line 718
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    .line 685
    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 686
    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    .line 688
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    .line 696
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 697
    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    .line 699
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2

    .prologue
    .line 510
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 621
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedSerializedSize:I

    .line 622
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 638
    :goto_7
    return v0

    .line 624
    :cond_8
    const/4 v0, 0x0

    .line 625
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1a

    .line 626
    iget-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    invoke-virtual {v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    :cond_1a
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 630
    iget-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 633
    :cond_27
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    .line 634
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->signalStrength_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    :cond_36
    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getSignalStrength()I
    .registers 2

    .prologue
    .line 588
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->signalStrength_:I

    return v0
.end method

.method public getType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    return-object v0
.end method

.method public hasMobileNetworkInfo()Z
    .registers 3

    .prologue
    .line 575
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

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

.method public hasSignalStrength()Z
    .registers 3

    .prologue
    .line 585
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 565
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

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

    .line 598
    iget-byte v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedIsInitialized:B

    .line 599
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 602
    :goto_8
    return v0

    .line 599
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 601
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 2

    .prologue
    .line 716
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilderForType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 2

    .prologue
    .line 720
    invoke-static {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->newBuilder(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->toBuilder()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

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
    .line 645
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 607
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getSerializedSize()I

    .line 608
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 609
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 611
    :cond_14
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 612
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 614
    :cond_1f
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 615
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->signalStrength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 617
    :cond_2c
    return-void
.end method
