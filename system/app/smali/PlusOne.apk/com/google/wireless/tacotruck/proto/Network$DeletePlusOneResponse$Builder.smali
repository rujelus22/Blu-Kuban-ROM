.class public final Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24534
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24634
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24535
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->maybeForceBuilderInitialization()V

    .line 24536
    return-void
.end method

.method static synthetic access$33600(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24529
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33700()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 24529
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24569
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    .line 24570
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 24571
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 24574
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 24541
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24539
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    .registers 6

    .prologue
    .line 24578
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 24579
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    .line 24580
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24581
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24582
    or-int/lit8 v2, v2, 0x1

    .line 24584
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->access$33902(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24585
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->access$34002(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;I)I

    .line 24586
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 24545
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24546
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24547
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    .line 24548
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 24670
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24672
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    .line 24673
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 3

    .prologue
    .line 24552
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

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
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    .registers 2

    .prologue
    .line 24556
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 24639
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24636
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24529
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24529
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24606
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24607
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 24612
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24614
    :sswitch_d
    return-object p0

    .line 24619
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 24620
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->hasPlusoneData()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 24621
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 24623
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 24624
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    goto :goto_0

    .line 24607
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 24590
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24594
    :cond_6
    :goto_6
    return-object p0

    .line 24591
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24592
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    goto :goto_6
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 24660
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24666
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    .line 24667
    return-object p0

    .line 24663
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_1f
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 24652
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    .line 24655
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24642
    if-nez p1, :cond_8

    .line 24643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24645
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->bitField0_:I

    .line 24648
    return-object p0
.end method
