.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivitiesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private maxCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

.field private view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2805
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    .line 2806
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->initFields()V

    .line 2807
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2307
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2439
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedIsInitialized:B

    .line 2468
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedSerializedSize:I

    .line 2308
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2302
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2439
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedIsInitialized:B

    .line 2468
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedSerializedSize:I

    .line 2309
    return-void
.end method

.method static synthetic access$3202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2302
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->maxCount_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2302
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 1

    .prologue
    .line 2313
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2435
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    .line 2436
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->maxCount_:I

    .line 2437
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 2438
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    .registers 1

    .prologue
    .line 2564
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->access$3000()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;
    .registers 2

    .prologue
    .line 2317
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->maxCount_:I

    return v0
.end method

.method public getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedSerializedSize:I

    .line 2471
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 2487
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 2473
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 2474
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 2475
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2478
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 2479
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->maxCount_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2482
    :cond_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 2483
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2486
    :cond_37
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 2487
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    return-object v0
.end method

.method public hasMaxCount()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2418
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

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

.method public hasParams()Z
    .registers 3

    .prologue
    .line 2428
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasView()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2408
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

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

    .line 2441
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedIsInitialized:B

    .line 2442
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 2451
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 2442
    goto :goto_9

    .line 2444
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->hasParams()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2445
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 2446
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 2447
    goto :goto_9

    .line 2450
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2494
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

    .line 2456
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getSerializedSize()I

    .line 2457
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 2458
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$View;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2460
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 2461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->maxCount_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2463
    :cond_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 2464
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->params_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2466
    :cond_2c
    return-void
.end method
