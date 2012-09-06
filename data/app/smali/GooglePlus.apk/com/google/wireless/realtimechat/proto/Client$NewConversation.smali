.class public final Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$NewConversationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private senderId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18886
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 18887
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->initFields()V

    .line 18888
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18427
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18498
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedIsInitialized:B

    .line 18521
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedSerializedSize:I

    .line 18428
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18422
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;-><init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18429
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18498
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedIsInitialized:B

    .line 18521
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedSerializedSize:I

    .line 18429
    return-void
.end method

.method static synthetic access$25002(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18422
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object p1
.end method

.method static synthetic access$25102(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18422
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25202(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18422
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$25302(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18422
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 1

    .prologue
    .line 18433
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18472
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->senderId_:Ljava/lang/Object;

    .line 18473
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18474
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18476
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->senderId_:Ljava/lang/Object;

    .line 18479
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
    .line 18494
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->senderId_:Ljava/lang/Object;

    .line 18496
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18497
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 1

    .prologue
    .line 18617
    #calls: Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->access$24800()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18620
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 18448
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18422
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 2

    .prologue
    .line 18437
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18458
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->senderId_:Ljava/lang/Object;

    .line 18459
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18460
    check-cast v1, Ljava/lang/String;

    .line 18468
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18462
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18464
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18465
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18466
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18468
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18523
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedSerializedSize:I

    .line 18524
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 18540
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 18526
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 18527
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 18528
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18531
    :cond_17
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 18532
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18535
    :cond_26
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 18536
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18539
    :cond_35
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedSerializedSize:I

    move v1, v0

    .line 18540
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 18490
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasClientConversation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18445
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 18455
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

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
    .line 18487
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

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

    .line 18500
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedIsInitialized:B

    .line 18501
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 18504
    :goto_8
    return v1

    .line 18501
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 18503
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18422
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 2

    .prologue
    .line 18618
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18422
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 2

    .prologue
    .line 18622
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

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
    .line 18547
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

    .line 18509
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getSerializedSize()I

    .line 18510
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 18511
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18513
    :cond_10
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 18514
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18516
    :cond_1d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 18517
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18519
    :cond_2a
    return-void
.end method
