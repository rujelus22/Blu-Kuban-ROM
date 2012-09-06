.class public final Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeaveConversationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23890
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 23891
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->initFields()V

    .line 23892
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23476
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23547
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedIsInitialized:B

    .line 23570
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedSerializedSize:I

    .line 23477
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23471
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23478
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23547
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedIsInitialized:B

    .line 23570
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedSerializedSize:I

    .line 23478
    return-void
.end method

.method static synthetic access$32102(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23471
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$32202(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23471
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$32302(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23471
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32402(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23471
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 1

    .prologue
    .line 23482
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23531
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->requestError_:Ljava/lang/Object;

    .line 23532
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23533
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23535
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->requestError_:Ljava/lang/Object;

    .line 23538
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
    .registers 3

    .prologue
    .line 23543
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 23544
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->timestamp_:J

    .line 23545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->requestError_:Ljava/lang/Object;

    .line 23546
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 1

    .prologue
    .line 23666
    #calls: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->access$31900()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23669
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23471
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 23486
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23517
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->requestError_:Ljava/lang/Object;

    .line 23518
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23519
    check-cast v1, Ljava/lang/String;

    .line 23527
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23521
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23523
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23524
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23525
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23527
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedSerializedSize:I

    .line 23573
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 23589
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 23575
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 23576
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 23577
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23580
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 23581
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23584
    :cond_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 23585
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23588
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 23589
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 23497
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 23507
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 23514
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23494
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 23504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 23549
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedIsInitialized:B

    .line 23550
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 23553
    :goto_8
    return v1

    .line 23550
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 23552
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23471
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 2

    .prologue
    .line 23667
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23471
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    .registers 2

    .prologue
    .line 23671
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

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
    .line 23596
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

    .line 23558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getSerializedSize()I

    .line 23559
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 23560
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 23562
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 23563
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 23565
    :cond_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 23566
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23568
    :cond_2e
    return-void
.end method
