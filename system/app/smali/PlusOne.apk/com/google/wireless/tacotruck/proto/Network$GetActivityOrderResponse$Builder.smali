.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private order_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6510
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6511
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->maybeForceBuilderInitialization()V

    .line 6512
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 1

    .prologue
    .line 6517
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureOrderIsMutable()V
    .registers 3

    .prologue
    .line 6622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 6623
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6626
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6515
    return-void
.end method


# virtual methods
.method public addAllOrder(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 6689
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6690
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6692
    return-object p0
.end method

.method public addOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6682
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6683
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6685
    return-object p0
.end method

.method public addOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6665
    if-nez p2, :cond_8

    .line 6666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6668
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6669
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6671
    return-object p0
.end method

.method public addOrder(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 6675
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6676
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6678
    return-object p0
.end method

.method public addOrder(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6655
    if-nez p1, :cond_8

    .line 6656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6658
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6659
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6661
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 5

    .prologue
    .line 6554
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 6555
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6556
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 6557
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6558
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6560
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8402(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;Ljava/util/List;)Ljava/util/List;

    .line 6561
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 2

    .prologue
    .line 6521
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6522
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6523
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6524
    return-object p0
.end method

.method public clearOrder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 2

    .prologue
    .line 6695
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6696
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6698
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 3

    .prologue
    .line 6528
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

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
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 2

    .prologue
    .line 6532
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getOrder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6635
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    return-object v0
.end method

.method public getOrderCount()I
    .registers 2

    .prologue
    .line 6632
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOrderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6629
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 6505
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

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
    .line 6505
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6594
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6595
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 6600
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6602
    :sswitch_d
    return-object p0

    .line 6607
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    .line 6608
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6609
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->addOrder(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    goto :goto_0

    .line 6595
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 6565
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6576
    :cond_6
    :goto_6
    return-object p0

    .line 6566
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8400(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6567
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6568
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8400(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 6571
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6572
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8400(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6649
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6650
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6652
    return-object p0
.end method

.method public setOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6639
    if-nez p2, :cond_8

    .line 6640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6642
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6643
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6645
    return-object p0
.end method
