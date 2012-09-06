.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

.field private populatedCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6487
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6607
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6488
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->maybeForceBuilderInitialization()V

    .line 6489
    return-void
.end method

.method static synthetic access$8000()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 1

    .prologue
    .line 6482
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 1

    .prologue
    .line 6494
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6492
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 3

    .prologue
    .line 6515
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    .line 6516
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6517
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6519
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 6

    .prologue
    .line 6533
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 6534
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6535
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6536
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6537
    or-int/lit8 v2, v2, 0x1

    .line 6539
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->access$8202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6540
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6541
    or-int/lit8 v2, v2, 0x2

    .line 6543
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->access$8302(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I

    .line 6544
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->access$8402(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I

    .line 6545
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6498
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6499
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6500
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6501
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    .line 6502
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6503
    return-object p0
.end method

.method public clearParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6643
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6645
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6646
    return-object p0
.end method

.method public clearPopulatedCount()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6664
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6665
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    .line 6667
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3

    .prologue
    .line 6507
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

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
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 2

    .prologue
    .line 6511
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 6612
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getPopulatedCount()I
    .registers 2

    .prologue
    .line 6655
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    return v0
.end method

.method public hasParams()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6609
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPopulatedCount()Z
    .registers 3

    .prologue
    .line 6652
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 6560
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->hasParams()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6561
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 6563
    const/4 v0, 0x0

    .line 6566
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 6482
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6482
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

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
    .line 6482
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6574
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6575
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 6580
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6582
    :sswitch_d
    return-object p0

    .line 6587
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    .line 6588
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->hasParams()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6589
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 6591
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6592
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    goto :goto_0

    .line 6596
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6597
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    goto :goto_0

    .line 6575
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 6549
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6556
    :cond_6
    :goto_6
    return-object p0

    .line 6550
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->hasParams()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6551
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    .line 6553
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->hasPopulatedCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6554
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getPopulatedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->setPopulatedCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    goto :goto_6
.end method

.method public mergeParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6631
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 6633
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6639
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6640
    return-object p0

    .line 6636
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    goto :goto_1f
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 6625
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6627
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6628
    return-object p0
.end method

.method public setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6615
    if-nez p1, :cond_8

    .line 6616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6618
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6620
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6621
    return-object p0
.end method

.method public setPopulatedCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->bitField0_:I

    .line 6659
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->populatedCount_:I

    .line 6661
    return-object p0
.end method
