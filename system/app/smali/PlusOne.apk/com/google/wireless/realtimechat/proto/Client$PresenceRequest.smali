.class public final Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PresenceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PresenceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reciprocate_:Z

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7009
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 7010
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->initFields()V

    .line 7011
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6516
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6598
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedIsInitialized:B

    .line 6624
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedSerializedSize:I

    .line 6517
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6511
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6518
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6598
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedIsInitialized:B

    .line 6624
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedSerializedSize:I

    .line 6518
    return-void
.end method

.method static synthetic access$8702(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6511
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6511
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6511
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->reciprocate_:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6511
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6511
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6561
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->conversationId_:Ljava/lang/Object;

    .line 6562
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6563
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6565
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->conversationId_:Ljava/lang/Object;

    .line 6568
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 1

    .prologue
    .line 6522
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6593
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 6594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->conversationId_:Ljava/lang/Object;

    .line 6595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->reciprocate_:Z

    .line 6596
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 6597
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 1

    .prologue
    .line 6724
    #calls: Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->access$8500()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6727
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6547
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->conversationId_:Ljava/lang/Object;

    .line 6548
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6549
    check-cast v1, Ljava/lang/String;

    .line 6557
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6551
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6553
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6554
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6555
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6557
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6511
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 6526
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getReciprocate()Z
    .registers 2

    .prologue
    .line 6579
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->reciprocate_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6626
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedSerializedSize:I

    .line 6627
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 6647
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 6629
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 6630
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 6631
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6634
    :cond_1c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 6635
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6638
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 6639
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->reciprocate_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6642
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 6643
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6646
    :cond_48
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 6647
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 6589
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    .registers 2

    .prologue
    .line 6537
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 6544
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

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

.method public hasReciprocate()Z
    .registers 3

    .prologue
    .line 6576
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 6586
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6534
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

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

    .line 6600
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedIsInitialized:B

    .line 6601
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6604
    :goto_8
    return v1

    .line 6601
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6603
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->memoizedIsInitialized:B

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
    .line 6654
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

    .line 6609
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getSerializedSize()I

    .line 6610
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 6611
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6613
    :cond_15
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 6614
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6616
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 6617
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->reciprocate_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6619
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 6620
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6622
    :cond_3b
    return-void
.end method
