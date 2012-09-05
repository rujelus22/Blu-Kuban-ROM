.class public final Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$NewConversationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversation;",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field private senderId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18629
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18761
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18804
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    .line 18840
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18630
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->maybeForceBuilderInitialization()V

    .line 18631
    return-void
.end method

.method static synthetic access$24800()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 1

    .prologue
    .line 18624
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 1

    .prologue
    .line 18636
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 18634
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 3

    .prologue
    .line 18659
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    .line 18660
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18661
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18663
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 6

    .prologue
    .line 18677
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;-><init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 18678
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18679
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18680
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 18681
    or-int/lit8 v2, v2, 0x1

    .line 18683
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->access$25002(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18684
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 18685
    or-int/lit8 v2, v2, 0x2

    .line 18687
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->access$25102(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18688
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 18689
    or-int/lit8 v2, v2, 0x4

    .line 18691
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->access$25202(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18692
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->access$25302(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;I)I

    .line 18693
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 2

    .prologue
    .line 18640
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18641
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18642
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    .line 18644
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18645
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18647
    return-object p0
.end method

.method public clearClientConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 2

    .prologue
    .line 18797
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18800
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 2

    .prologue
    .line 18828
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18829
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    .line 18831
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 2

    .prologue
    .line 18876
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18878
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18879
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 3

    .prologue
    .line 18651
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

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
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 18766
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18624
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 2

    .prologue
    .line 18655
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18809
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    .line 18810
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18811
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18812
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    .line 18815
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

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 18845
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasClientConversation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18763
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

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
    .line 18806
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

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
    .line 18842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

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

.method public mergeClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18785
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 18787
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18793
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18794
    return-object p0

    .line 18790
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    goto :goto_1f
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
    .line 18624
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

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
    .line 18624
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18719
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 18720
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_54

    .line 18725
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18727
    :sswitch_d
    return-object p0

    .line 18732
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    .line 18733
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->hasClientConversation()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 18734
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 18736
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18737
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->setClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    goto :goto_0

    .line 18741
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18742
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 18746
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 18747
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 18748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 18750
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18751
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    goto :goto_0

    .line 18720
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 18697
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18707
    :cond_6
    :goto_6
    return-object p0

    .line 18698
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->hasClientConversation()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18699
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    .line 18701
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 18702
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    .line 18704
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18705
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18864
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 18866
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18872
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18873
    return-object p0

    .line 18869
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18779
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18781
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18782
    return-object p0
.end method

.method public setClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18769
    if-nez p1, :cond_8

    .line 18770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18772
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18774
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18775
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18819
    if-nez p1, :cond_8

    .line 18820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18822
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18823
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->senderId_:Ljava/lang/Object;

    .line 18825
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18858
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18860
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18861
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18848
    if-nez p1, :cond_8

    .line 18849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18851
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 18853
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->bitField0_:I

    .line 18854
    return-object p0
.end method
