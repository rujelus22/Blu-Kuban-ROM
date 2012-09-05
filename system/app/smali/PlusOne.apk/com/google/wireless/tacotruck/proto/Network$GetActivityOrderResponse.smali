.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivityOrderResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6711
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    .line 6712
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->initFields()V

    .line 6713
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6350
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6387
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedIsInitialized:B

    .line 6410
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    .line 6351
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6352
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6387
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedIsInitialized:B

    .line 6410
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    .line 6352
    return-void
.end method

.method static synthetic access$8400(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6345
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 1

    .prologue
    .line 6356
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    .line 6386
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6345
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 2

    .prologue
    .line 6360
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    return-object v0
.end method

.method public getOrder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6377
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    return-object v0
.end method

.method public getOrderCount()I
    .registers 2

    .prologue
    .line 6374
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

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
    .line 6367
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object v0
.end method

.method public getOrderOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrderOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6381
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrderOrBuilder;

    return-object v0
.end method

.method public getOrderOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrderOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6371
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 6412
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    .line 6413
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 6421
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 6415
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 6416
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 6417
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 6416
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 6420
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 6421
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 6428
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6404
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getSerializedSize()I

    .line 6405
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 6406
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6405
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6408
    :cond_1b
    return-void
.end method
