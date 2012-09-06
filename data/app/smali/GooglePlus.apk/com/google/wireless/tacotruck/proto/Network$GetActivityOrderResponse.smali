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
    .line 7056
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    .line 7057
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->initFields()V

    .line 7058
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6695
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6732
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedIsInitialized:B

    .line 6755
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    .line 6696
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6690
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6697
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6732
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedIsInitialized:B

    .line 6755
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    .line 6697
    return-void
.end method

.method static synthetic access$8800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6690
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6690
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 1

    .prologue
    .line 6701
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    .line 6731
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 1

    .prologue
    .line 6843
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->access$8600()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6846
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;
    .registers 2

    .prologue
    .line 6705
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;

    return-object v0
.end method

.method public getOrder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6722
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    return-object v0
.end method

.method public getOrderCount()I
    .registers 2

    .prologue
    .line 6719
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
    .line 6712
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object v0
.end method

.method public getOrderOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrderOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6726
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
    .line 6716
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 6757
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    .line 6758
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 6766
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 6760
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 6761
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 6762
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 6761
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 6765
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 6766
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6734
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedIsInitialized:B

    .line 6735
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 6744
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 6735
    goto :goto_9

    .line 6737
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getOrderCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 6738
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getOrder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 6739
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 6740
    goto :goto_9

    .line 6737
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 6743
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 2

    .prologue
    .line 6844
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;
    .registers 2

    .prologue
    .line 6848
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse$Builder;

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
    .line 6773
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
    .line 6749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->getSerializedSize()I

    .line 6750
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 6751
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponse;->order_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6750
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6753
    :cond_1b
    return-void
.end method
