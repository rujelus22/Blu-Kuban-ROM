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
    .line 6855
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6856
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->maybeForceBuilderInitialization()V

    .line 6857
    return-void
.end method

.method static synthetic access$8600()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 1

    .prologue
    .line 6850
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 1

    .prologue
    .line 6862
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureOrderIsMutable()V
    .registers 3

    .prologue
    .line 6967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 6968
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6971
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6860
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
    .line 7034
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 7035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7037
    return-object p0
.end method

.method public addOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7027
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 7028
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7030
    return-object p0
.end method

.method public addOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7010
    if-nez p2, :cond_8

    .line 7011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7013
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 7014
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7016
    return-object p0
.end method

.method public addOrder(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 7020
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 7021
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7023
    return-object p0
.end method

.method public addOrder(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7000
    if-nez p1, :cond_8

    .line 7001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7003
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 7004
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7006
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 3

    .prologue
    .line 6881
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    .line 6882
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6883
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6885
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 5

    .prologue
    .line 6899
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 6900
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6901
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 6902
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6903
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6905
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8802(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;Ljava/util/List;)Ljava/util/List;

    .line 6906
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 2

    .prologue
    .line 6866
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6867
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6868
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 6869
    return-object p0
.end method

.method public clearOrder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 2

    .prologue
    .line 7040
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 7041
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    .line 7043
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 3

    .prologue
    .line 6873
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
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 2

    .prologue
    .line 6877
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getOrder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6980
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    return-object v0
.end method

.method public getOrderCount()I
    .registers 2

    .prologue
    .line 6977
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
    .line 6974
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 6925
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->getOrderCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 6926
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->getOrder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 6928
    const/4 v1, 0x0

    .line 6931
    :goto_12
    return v1

    .line 6925
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6931
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 6850
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6850
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

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
    .line 6850
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
    .line 6939
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6940
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 6945
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6947
    :sswitch_d
    return-object p0

    .line 6952
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    .line 6953
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6954
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->addOrder(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    goto :goto_0

    .line 6940
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
    .line 6910
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6921
    :cond_6
    :goto_6
    return-object p0

    .line 6911
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6912
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6913
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    .line 6914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 6916
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6917
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->access$8800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6994
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6995
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6997
    return-object p0
.end method

.method public setOrder(ILcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6984
    if-nez p2, :cond_8

    .line 6985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6987
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->ensureOrderIsMutable()V

    .line 6988
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->order_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6990
    return-object p0
.end method
