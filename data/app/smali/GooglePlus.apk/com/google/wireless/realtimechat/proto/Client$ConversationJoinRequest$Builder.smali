.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private joinCode_:Ljava/lang/Object;

.field private participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14764
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    .line 14946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 14982
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 15025
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 14765
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14766
    return-void
.end method

.method static synthetic access$19700()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 1

    .prologue
    .line 14759
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 1

    .prologue
    .line 14771
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14769
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 3

    .prologue
    .line 14796
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    .line 14797
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14798
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14800
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 6

    .prologue
    .line 14814
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 14815
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14816
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14817
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14818
    or-int/lit8 v2, v2, 0x1

    .line 14820
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->joinCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->access$19902(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14821
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14822
    or-int/lit8 v2, v2, 0x2

    .line 14824
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->access$20002(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14825
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14826
    or-int/lit8 v2, v2, 0x4

    .line 14828
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->access$20102(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 14829
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 14830
    or-int/lit8 v2, v2, 0x8

    .line 14832
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->access$20202(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 14833
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->access$20302(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;I)I

    .line 14834
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 2

    .prologue
    .line 14775
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    .line 14777
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 14779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14780
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 14781
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14782
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 14783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14784
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 2

    .prologue
    .line 14970
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14971
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 14973
    return-object p0
.end method

.method public clearJoinCode()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 2

    .prologue
    .line 14934
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14935
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getJoinCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    .line 14937
    return-object p0
.end method

.method public clearParticipant()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 2

    .prologue
    .line 15018
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 15020
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 15021
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 2

    .prologue
    .line 15061
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 15063
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 15064
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3

    .prologue
    .line 14788
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14951
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 14952
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14953
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14954
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 14957
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14759
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 14792
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    return-object v0
.end method

.method public getJoinCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14915
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    .line 14916
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14917
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14918
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    .line 14921
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 14987
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 15030
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 14948
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

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

    .line 14912
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

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
    .line 14984
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

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
    .line 15027
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 14855
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14759
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14759
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14759
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 14864
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_60

    .line 14869
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14871
    :sswitch_d
    return-object p0

    .line 14876
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14877
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    goto :goto_0

    .line 14881
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14882
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 14886
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    .line 14887
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->hasParticipant()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 14888
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 14890
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14891
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    goto :goto_0

    .line 14895
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 14896
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 14897
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 14899
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14900
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    goto :goto_0

    .line 14864
    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 14838
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14851
    :cond_6
    :goto_6
    return-object p0

    .line 14839
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->hasJoinCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14840
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getJoinCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->setJoinCode(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    .line 14842
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14843
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    .line 14845
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->hasParticipant()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 14846
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    .line 14848
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14849
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    goto :goto_6
.end method

.method public mergeParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15006
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 15008
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 15014
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 15015
    return-object p0

    .line 15011
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    goto :goto_1f
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15049
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 15051
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 15057
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 15058
    return-object p0

    .line 15054
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14961
    if-nez p1, :cond_8

    .line 14962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14964
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14965
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 14967
    return-object p0
.end method

.method public setJoinCode(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14925
    if-nez p1, :cond_8

    .line 14926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14928
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14929
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->joinCode_:Ljava/lang/Object;

    .line 14931
    return-object p0
.end method

.method public setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15000
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 15002
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 15003
    return-object p0
.end method

.method public setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14990
    if-nez p1, :cond_8

    .line 14991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14993
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 14995
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 14996
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15043
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 15045
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 15046
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15033
    if-nez p1, :cond_8

    .line 15034
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15036
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 15038
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->bitField0_:I

    .line 15039
    return-object p0
.end method
