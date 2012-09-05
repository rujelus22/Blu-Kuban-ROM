.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private albumEntityVersion_:J

.field private bitField0_:I

.field private photoOrder_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7690
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 7691
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->maybeForceBuilderInitialization()V

    .line 7692
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 1

    .prologue
    .line 7697
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoOrderIsMutable()V
    .registers 3

    .prologue
    .line 7812
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 7813
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 7814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7816
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7695
    return-void
.end method


# virtual methods
.method public addAllPhotoOrder(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 7879
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7882
    return-object p0
.end method

.method public addPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7872
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7873
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7875
    return-object p0
.end method

.method public addPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7855
    if-nez p2, :cond_8

    .line 7856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7858
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7859
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7861
    return-object p0
.end method

.method public addPhotoOrder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 7865
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7866
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7868
    return-object p0
.end method

.method public addPhotoOrder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7845
    if-nez p1, :cond_8

    .line 7846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7848
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7849
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7851
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 6

    .prologue
    .line 7736
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 7737
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7738
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7739
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 7740
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 7741
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7743
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;Ljava/util/List;)Ljava/util/List;

    .line 7744
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 7745
    or-int/lit8 v2, v2, 0x1

    .line 7747
    :cond_2a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;J)J

    .line 7748
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;I)I

    .line 7749
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3

    .prologue
    .line 7701
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 7703
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7704
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    .line 7705
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7706
    return-object p0
.end method

.method public clearAlbumEntityVersion()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3

    .prologue
    .line 7912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7913
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    .line 7915
    return-object p0
.end method

.method public clearPhotoOrder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 2

    .prologue
    .line 7885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 7886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7888
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3

    .prologue
    .line 7710
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

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
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumEntityVersion()J
    .registers 3

    .prologue
    .line 7903
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7685
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 2

    .prologue
    .line 7714
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoOrder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 7825
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    return-object v0
.end method

.method public getPhotoOrderCount()I
    .registers 2

    .prologue
    .line 7822
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoOrderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumEntityVersion()Z
    .registers 3

    .prologue
    .line 7900
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

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
    .line 7685
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

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
    .line 7685
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7779
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7780
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 7785
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7787
    :sswitch_d
    return-object p0

    .line 7792
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    .line 7793
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7794
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->addPhotoOrder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    goto :goto_0

    .line 7798
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7799
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    goto :goto_0

    .line 7780
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 7753
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7767
    :cond_6
    :goto_6
    return-object p0

    .line 7754
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10000(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 7755
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7756
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10000(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 7757
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7764
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->hasAlbumEntityVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7765
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getAlbumEntityVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->setAlbumEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    goto :goto_6

    .line 7759
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7760
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10000(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAlbumEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7906
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 7907
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    .line 7909
    return-object p0
.end method

.method public setPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7839
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7840
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7842
    return-object p0
.end method

.method public setPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7829
    if-nez p2, :cond_8

    .line 7830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7832
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 7833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7835
    return-object p0
.end method
