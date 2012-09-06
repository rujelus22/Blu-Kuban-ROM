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
    .line 8035
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 8036
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->maybeForceBuilderInitialization()V

    .line 8037
    return-void
.end method

.method static synthetic access$10200()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 1

    .prologue
    .line 8030
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 1

    .prologue
    .line 8042
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoOrderIsMutable()V
    .registers 3

    .prologue
    .line 8157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 8158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 8159
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8161
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8040
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
    .line 8224
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8225
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8227
    return-object p0
.end method

.method public addPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 8217
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8218
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8220
    return-object p0
.end method

.method public addPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8200
    if-nez p2, :cond_8

    .line 8201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8203
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8204
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8206
    return-object p0
.end method

.method public addPhotoOrder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 8210
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8211
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8213
    return-object p0
.end method

.method public addPhotoOrder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8190
    if-nez p1, :cond_8

    .line 8191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8193
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8194
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8196
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 3

    .prologue
    .line 8063
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    .line 8064
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8065
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8067
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 6

    .prologue
    .line 8081
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 8082
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8083
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8084
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 8085
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 8086
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8088
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;Ljava/util/List;)Ljava/util/List;

    .line 8089
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 8090
    or-int/lit8 v2, v2, 0x1

    .line 8092
    :cond_2a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;J)J

    .line 8093
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;I)I

    .line 8094
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3

    .prologue
    .line 8046
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8047
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 8048
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8049
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    .line 8050
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8051
    return-object p0
.end method

.method public clearAlbumEntityVersion()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3

    .prologue
    .line 8257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    .line 8260
    return-object p0
.end method

.method public clearPhotoOrder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 2

    .prologue
    .line 8230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 8231
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8233
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 3

    .prologue
    .line 8055
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
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumEntityVersion()J
    .registers 3

    .prologue
    .line 8248
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 2

    .prologue
    .line 8059
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoOrder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 8170
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    return-object v0
.end method

.method public getPhotoOrderCount()I
    .registers 2

    .prologue
    .line 8167
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
    .line 8164
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumEntityVersion()Z
    .registers 3

    .prologue
    .line 8245
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 8116
    const/4 v0, 0x1

    return v0
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
    .line 8030
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8030
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

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
    .line 8030
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
    .line 8124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8125
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 8130
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8132
    :sswitch_d
    return-object p0

    .line 8137
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    .line 8138
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8139
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->addPhotoOrder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    goto :goto_0

    .line 8143
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8144
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    goto :goto_0

    .line 8125
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
    .line 8098
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8112
    :cond_6
    :goto_6
    return-object p0

    .line 8099
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 8100
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8101
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    .line 8102
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8109
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->hasAlbumEntityVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8110
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getAlbumEntityVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->setAlbumEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    goto :goto_6

    .line 8104
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8105
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->access$10400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAlbumEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8251
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->bitField0_:I

    .line 8252
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->albumEntityVersion_:J

    .line 8254
    return-object p0
.end method

.method public setPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 8184
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8185
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8187
    return-object p0
.end method

.method public setPhotoOrder(ILcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8174
    if-nez p2, :cond_8

    .line 8175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8177
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->ensurePhotoOrderIsMutable()V

    .line 8178
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8180
    return-object p0
.end method
