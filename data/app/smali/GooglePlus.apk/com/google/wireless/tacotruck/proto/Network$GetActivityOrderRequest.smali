.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivityOrderRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

.field private populatedCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6674
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    .line 6675
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->initFields()V

    .line 6676
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6319
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6357
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedIsInitialized:B

    .line 6383
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    .line 6320
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6314
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6321
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6357
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedIsInitialized:B

    .line 6383
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    .line 6321
    return-void
.end method

.method static synthetic access$8202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6314
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6314
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    return p1
.end method

.method static synthetic access$8402(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6314
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 1

    .prologue
    .line 6325
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6354
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6355
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    .line 6356
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 1

    .prologue
    .line 6475
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->access$8000()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6478
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6314
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 2

    .prologue
    .line 6329
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    return-object v0
.end method

.method public getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 6340
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getPopulatedCount()I
    .registers 2

    .prologue
    .line 6350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6385
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    .line 6386
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 6398
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 6388
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 6389
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 6390
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6393
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 6394
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6397
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 6398
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasParams()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6337
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

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
    .line 6347
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6359
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedIsInitialized:B

    .line 6360
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 6369
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 6360
    goto :goto_9

    .line 6362
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->hasParams()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 6363
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 6364
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 6365
    goto :goto_9

    .line 6368
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6314
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6476
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6314
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;
    .registers 2

    .prologue
    .line 6480
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;

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
    .line 6405
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6374
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getSerializedSize()I

    .line 6375
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 6376
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6378
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 6379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6381
    :cond_1b
    return-void
.end method
