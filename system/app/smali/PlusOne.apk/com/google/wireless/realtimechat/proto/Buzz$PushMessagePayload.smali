.class public final Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushMessagePayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private channel_:Ljava/lang/Object;

.field private from_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private payload_:Lcom/google/protobuf/ByteString;

.field private sendOnDisconnect_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4985
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    .line 4986
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->initFields()V

    .line 4987
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4461
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4565
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->memoizedIsInitialized:B

    .line 4603
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->memoizedSerializedSize:I

    .line 4462
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4456
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4463
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4565
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->memoizedIsInitialized:B

    .line 4603
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->memoizedSerializedSize:I

    .line 4463
    return-void
.end method

.method static synthetic access$6402(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4456
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->channel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4456
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->from_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4456
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->payload_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4456
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->sendOnDisconnect_:Z

    return p1
.end method

.method static synthetic access$6802(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4456
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    return p1
.end method

.method private getChannelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4496
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->channel_:Ljava/lang/Object;

    .line 4497
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4498
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4500
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->channel_:Ljava/lang/Object;

    .line 4503
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
    .registers 1

    .prologue
    .line 4467
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    return-object v0
.end method

.method private getFromBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4528
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->from_:Ljava/lang/Object;

    .line 4529
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4530
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4532
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->from_:Ljava/lang/Object;

    .line 4535
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
    .line 4560
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->channel_:Ljava/lang/Object;

    .line 4561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->from_:Ljava/lang/Object;

    .line 4562
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->payload_:Lcom/google/protobuf/ByteString;

    .line 4563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->sendOnDisconnect_:Z

    .line 4564
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4482
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->channel_:Ljava/lang/Object;

    .line 4483
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4484
    check-cast v1, Ljava/lang/String;

    .line 4492
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4486
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4488
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4489
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4490
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->channel_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4492
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4456
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
    .registers 2

    .prologue
    .line 4471
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4514
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->from_:Ljava/lang/Object;

    .line 4515
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4516
    check-cast v1, Ljava/lang/String;

    .line 4524
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4518
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4520
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4521
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4522
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->from_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4524
    goto :goto_8
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 4546
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSendOnDisconnect()Z
    .registers 2

    .prologue
    .line 4556
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->sendOnDisconnect_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4605
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->memoizedSerializedSize:I

    .line 4606
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 4626
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 4608
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 4609
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 4610
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4613
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 4614
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4617
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 4618
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->payload_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4621
    :cond_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 4622
    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->sendOnDisconnect_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4625
    :cond_46
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->memoizedSerializedSize:I

    move v1, v0

    .line 4626
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasChannel()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4479
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFrom()Z
    .registers 3

    .prologue
    .line 4511
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

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

.method public hasPayload()Z
    .registers 3

    .prologue
    .line 4543
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

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

.method public hasSendOnDisconnect()Z
    .registers 3

    .prologue
    .line 4553
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

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
    .line 4633
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4588
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getSerializedSize()I

    .line 4589
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 4590
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4592
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 4593
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4595
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 4596
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->payload_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4598
    :cond_2c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 4599
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->sendOnDisconnect_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4601
    :cond_39
    return-void
.end method
