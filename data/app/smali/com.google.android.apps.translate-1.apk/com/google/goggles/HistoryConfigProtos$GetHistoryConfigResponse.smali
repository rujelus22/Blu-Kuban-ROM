.class public final Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetHistoryConfigResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    }
.end annotation


# static fields
.field public static final HISTORY_CONFIG_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 841
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    .line 842
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->initFields()V

    .line 843
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 535
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 562
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedIsInitialized:B

    .line 587
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedSerializedSize:I

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;-><init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 537
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 562
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedIsInitialized:B

    .line 587
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedSerializedSize:I

    .line 537
    return-void
.end method

.method static synthetic access$1102(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 530
    iput p1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 1

    .prologue
    .line 541
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 560
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 561
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 1

    .prologue
    .line 675
    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$900()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 678
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    .line 645
    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 646
    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    .line 648
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    .line 656
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 657
    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    .line 659
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2

    .prologue
    .line 545
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 589
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedSerializedSize:I

    .line 590
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 598
    :goto_6
    return v0

    .line 592
    :cond_7
    const/4 v0, 0x0

    .line 593
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 594
    iget-object v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_15
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public hasHistoryConfig()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 553
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 564
    iget-byte v2, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedIsInitialized:B

    .line 565
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 576
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 565
    goto :goto_9

    .line 567
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->hasHistoryConfig()Z

    move-result v2

    if-nez v2, :cond_16

    .line 568
    iput-byte v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedIsInitialized:B

    move v0, v1

    .line 569
    goto :goto_9

    .line 571
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_24

    .line 572
    iput-byte v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedIsInitialized:B

    move v0, v1

    .line 573
    goto :goto_9

    .line 575
    :cond_24
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 2

    .prologue
    .line 676
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 2

    .prologue
    .line 680
    invoke-static {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->toBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

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
    .line 605
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 581
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getSerializedSize()I

    .line 582
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 583
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 585
    :cond_f
    return-void
.end method
