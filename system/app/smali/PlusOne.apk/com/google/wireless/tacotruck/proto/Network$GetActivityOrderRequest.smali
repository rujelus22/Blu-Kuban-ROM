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
    .line 6329
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    .line 6330
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->initFields()V

    .line 6331
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5974
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6012
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedIsInitialized:B

    .line 6038
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    .line 5975
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5969
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6012
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedIsInitialized:B

    .line 6038
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    .line 5976
    return-void
.end method

.method static synthetic access$7802(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5969
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5969
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    return p1
.end method

.method static synthetic access$8002(Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5969
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 1

    .prologue
    .line 5980
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6009
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 6010
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    .line 6011
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5969
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;
    .registers 2

    .prologue
    .line 5984
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;

    return-object v0
.end method

.method public getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 5995
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getPopulatedCount()I
    .registers 2

    .prologue
    .line 6005
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    .line 6041
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 6053
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 6043
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 6044
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 6045
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6048
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 6049
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6052
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 6053
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasParams()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5992
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
    .line 6002
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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 6060
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

    .line 6029
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->getSerializedSize()I

    .line 6030
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 6031
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6033
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 6034
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderRequest;->populatedCount_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6036
    :cond_1b
    return-void
.end method
