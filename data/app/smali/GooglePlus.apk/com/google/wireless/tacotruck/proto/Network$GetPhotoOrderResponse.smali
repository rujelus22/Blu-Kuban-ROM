.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoOrderResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

.field private static final serialVersionUID:J


# instance fields
.field private albumEntityVersion_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8267
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    .line 8268
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->initFields()V

    .line 8269
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7862
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7911
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedIsInitialized:B

    .line 7931
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    .line 7863
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7857
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7864
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7911
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedIsInitialized:B

    .line 7931
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    .line 7864
    return-void
.end method

.method static synthetic access$10400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7857
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7857
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7857
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    return-wide p1
.end method

.method static synthetic access$10602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7857
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 1

    .prologue
    .line 7868
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 7908
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    .line 7909
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    .line 7910
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 1

    .prologue
    .line 8023
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->access$10200()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8026
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumEntityVersion()J
    .registers 3

    .prologue
    .line 7904
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7857
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 2

    .prologue
    .line 7872
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    return-object v0
.end method

.method public getPhotoOrder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 7890
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    return-object v0
.end method

.method public getPhotoOrderCount()I
    .registers 2

    .prologue
    .line 7887
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

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
    .line 7880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoOrderOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 7894
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;

    return-object v0
.end method

.method public getPhotoOrderOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7884
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 7933
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    .line 7934
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 7946
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 7936
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 7937
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 7938
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7937
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7941
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 7942
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 7945
    :cond_30
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 7946
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasAlbumEntityVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7901
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

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
    const/4 v1, 0x1

    .line 7913
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedIsInitialized:B

    .line 7914
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7917
    :goto_8
    return v1

    .line 7914
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7916
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7857
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 2

    .prologue
    .line 8024
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7857
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    .registers 2

    .prologue
    .line 8028
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;

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
    .line 7953
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 7922
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getSerializedSize()I

    .line 7923
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 7924
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7923
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7926
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 7927
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7929
    :cond_27
    return-void
.end method
