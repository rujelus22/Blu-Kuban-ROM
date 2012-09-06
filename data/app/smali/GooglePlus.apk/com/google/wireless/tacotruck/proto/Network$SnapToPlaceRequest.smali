.class public final Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnapToPlaceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

.field private static final serialVersionUID:J


# instance fields
.field private accuracyInMeters_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20683
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    .line 20684
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->initFields()V

    .line 20685
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20328
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20366
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    .line 20392
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    .line 20329
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20323
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20330
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20366
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    .line 20392
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    .line 20330
    return-void
.end method

.method static synthetic access$27802(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20323
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object p1
.end method

.method static synthetic access$27902(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20323
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    return p1
.end method

.method static synthetic access$28002(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20323
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    .registers 1

    .prologue
    .line 20334
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 20363
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 20364
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    .line 20365
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 1

    .prologue
    .line 20484
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->access$27600()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20487
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccuracyInMeters()I
    .registers 2

    .prologue
    .line 20359
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    .registers 2

    .prologue
    .line 20338
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 20349
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 20394
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    .line 20395
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 20407
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 20397
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 20398
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 20399
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20402
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 20403
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 20406
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 20407
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAccuracyInMeters()Z
    .registers 3

    .prologue
    .line 20356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20346
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20368
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    .line 20369
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 20378
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 20369
    goto :goto_9

    .line 20371
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->hasPosition()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 20372
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 20373
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 20374
    goto :goto_9

    .line 20377
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 2

    .prologue
    .line 20485
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 2

    .prologue
    .line 20489
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

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
    .line 20414
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

    .line 20383
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getSerializedSize()I

    .line 20384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 20385
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20387
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 20388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 20390
    :cond_1b
    return-void
.end method
