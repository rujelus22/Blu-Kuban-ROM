.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationJoinRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private joinCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15071
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 15072
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->initFields()V

    .line 15073
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14522
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14626
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedIsInitialized:B

    .line 14652
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedSerializedSize:I

    .line 14523
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14524
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14626
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedIsInitialized:B

    .line 14652
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedSerializedSize:I

    .line 14524
    return-void
.end method

.method static synthetic access$19902(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->joinCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20002(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20102(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object p1
.end method

.method static synthetic access$20202(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$20302(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14589
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->conversationId_:Ljava/lang/Object;

    .line 14590
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14591
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14593
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->conversationId_:Ljava/lang/Object;

    .line 14596
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 1

    .prologue
    .line 14528
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method private getJoinCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14557
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->joinCode_:Ljava/lang/Object;

    .line 14558
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14559
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14561
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->joinCode_:Ljava/lang/Object;

    .line 14564
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
    .line 14621
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->joinCode_:Ljava/lang/Object;

    .line 14622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->conversationId_:Ljava/lang/Object;

    .line 14623
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 14624
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 14625
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 1

    .prologue
    .line 14752
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->access$19700()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14755
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14575
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->conversationId_:Ljava/lang/Object;

    .line 14576
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14577
    check-cast v1, Ljava/lang/String;

    .line 14585
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14579
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14581
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14582
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14583
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14585
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14517
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 14532
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getJoinCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14543
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->joinCode_:Ljava/lang/Object;

    .line 14544
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14545
    check-cast v1, Ljava/lang/String;

    .line 14553
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14547
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14549
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14550
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14551
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->joinCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14553
    goto :goto_8
.end method

.method public getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 14607
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14654
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedSerializedSize:I

    .line 14655
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 14675
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 14657
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 14658
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 14659
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getJoinCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14662
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 14663
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14666
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 14667
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14670
    :cond_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 14671
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14674
    :cond_46
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 14675
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 14617
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 14572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

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

.method public hasJoinCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14540
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasParticipant()Z
    .registers 3

    .prologue
    .line 14604
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

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
    .line 14614
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 14628
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedIsInitialized:B

    .line 14629
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 14632
    :goto_8
    return v1

    .line 14629
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 14631
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->memoizedIsInitialized:B

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
    .line 14682
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

    .line 14637
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getSerializedSize()I

    .line 14638
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 14639
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getJoinCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14641
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 14642
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14644
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 14645
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14647
    :cond_2c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 14648
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14650
    :cond_39
    return-void
.end method
