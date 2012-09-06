.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInviteFinishRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private inviteId_:Ljava/lang/Object;

.field private inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45832
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 45833
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->initFields()V

    .line 45834
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 45348
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 45463
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedIsInitialized:B

    .line 45486
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedSerializedSize:I

    .line 45349
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45343
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 45350
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 45463
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedIsInitialized:B

    .line 45486
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedSerializedSize:I

    .line 45350
    return-void
.end method

.method static synthetic access$63202(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45343
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$63302(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45343
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    return-object p1
.end method

.method static synthetic access$63402(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45343
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$63502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45343
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 1

    .prologue
    .line 45354
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method private getInviteIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 45427
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteId_:Ljava/lang/Object;

    .line 45428
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 45429
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 45431
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteId_:Ljava/lang/Object;

    .line 45434
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
    .line 45459
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteId_:Ljava/lang/Object;

    .line 45460
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45461
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45462
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 1

    .prologue
    .line 45582
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->access$63000()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 45585
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45343
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 45358
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45413
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteId_:Ljava/lang/Object;

    .line 45414
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 45415
    check-cast v1, Ljava/lang/String;

    .line 45423
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 45417
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 45419
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45420
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 45421
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 45423
    goto :goto_8
.end method

.method public getInviteStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    .registers 2

    .prologue
    .line 45445
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45488
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedSerializedSize:I

    .line 45489
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 45505
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 45491
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 45492
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 45493
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45496
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 45497
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 45500
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 45501
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45504
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 45505
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 45455
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInviteId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45410
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviteStatus()Z
    .registers 3

    .prologue
    .line 45442
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

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
    .line 45452
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

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

    .line 45465
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedIsInitialized:B

    .line 45466
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 45469
    :goto_8
    return v1

    .line 45466
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 45468
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45343
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 2

    .prologue
    .line 45583
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45343
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 2

    .prologue
    .line 45587
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

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
    .line 45512
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

    .line 45474
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getSerializedSize()I

    .line 45475
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 45476
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 45478
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 45479
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 45481
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 45482
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 45484
    :cond_2e
    return-void
.end method
