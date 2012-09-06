.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutRingFinishRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private hangoutId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41787
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 41788
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->initFields()V

    .line 41789
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 41303
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41418
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedIsInitialized:B

    .line 41441
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedSerializedSize:I

    .line 41304
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41298
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 41305
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41418
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedIsInitialized:B

    .line 41441
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedSerializedSize:I

    .line 41305
    return-void
.end method

.method static synthetic access$57402(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41298
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$57502(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41298
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object p1
.end method

.method static synthetic access$57602(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41298
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$57702(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41298
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 1

    .prologue
    .line 41309
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method private getHangoutIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41382
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;

    .line 41383
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41384
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41386
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;

    .line 41389
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 41414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;

    .line 41415
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41416
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41417
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 1

    .prologue
    .line 41537
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->access$57200()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 41540
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 41313
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getHangoutId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41368
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;

    .line 41369
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41370
    check-cast v1, Ljava/lang/String;

    .line 41378
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41372
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41374
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41375
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41376
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41378
    goto :goto_8
.end method

.method public getRingStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 2

    .prologue
    .line 41400
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41443
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedSerializedSize:I

    .line 41444
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 41460
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 41446
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 41447
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 41448
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getHangoutIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41451
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 41452
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 41455
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 41456
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41459
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 41460
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 41410
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasHangoutId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41365
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRingStatus()Z
    .registers 3

    .prologue
    .line 41397
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 41407
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 41420
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedIsInitialized:B

    .line 41421
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 41424
    :goto_8
    return v1

    .line 41421
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 41423
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41538
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41542
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

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
    .line 41467
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

    .line 41429
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getSerializedSize()I

    .line 41430
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 41431
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getHangoutIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41433
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 41434
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 41436
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 41437
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 41439
    :cond_2e
    return-void
.end method
