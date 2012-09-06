.class public final Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PresenceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private reciprocate_:Z

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6736
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6882
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 6906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 6963
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 6737
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 6738
    return-void
.end method

.method static synthetic access$8500()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 1

    .prologue
    .line 6731
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 1

    .prologue
    .line 6743
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6741
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 3

    .prologue
    .line 6768
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    .line 6769
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6770
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6772
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 6

    .prologue
    .line 6786
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 6787
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6788
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6789
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6790
    or-int/lit8 v2, v2, 0x1

    .line 6792
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->access$8702(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 6793
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6794
    or-int/lit8 v2, v2, 0x2

    .line 6796
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->access$8802(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6797
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 6798
    or-int/lit8 v2, v2, 0x4

    .line 6800
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->reciprocate_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->reciprocate_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->access$8902(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Z)Z

    .line 6801
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 6802
    or-int/lit8 v2, v2, 0x8

    .line 6804
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->access$9002(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 6805
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->access$9102(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;I)I

    .line 6806
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 2

    .prologue
    .line 6747
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6748
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 6749
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6750
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 6751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->reciprocate_:Z

    .line 6753
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6754
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 6755
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6756
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 2

    .prologue
    .line 6930
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6931
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 6933
    return-object p0
.end method

.method public clearReciprocate()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 2

    .prologue
    .line 6956
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->reciprocate_:Z

    .line 6959
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 2

    .prologue
    .line 6999
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 7001
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 7002
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 2

    .prologue
    .line 6899
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6900
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 6902
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 3

    .prologue
    .line 6760
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

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
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6911
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 6912
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6913
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6914
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 6917
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
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6731
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 6764
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getReciprocate()Z
    .registers 2

    .prologue
    .line 6947
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->reciprocate_:Z

    return v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 6968
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    .registers 2

    .prologue
    .line 6887
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 6908
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

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
    .line 6944
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

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
    .line 6965
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

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

    .line 6884
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 6827
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
    .line 6731
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6731
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

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
    .line 6731
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6836
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 6841
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6843
    :sswitch_d
    return-object p0

    .line 6848
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 6849
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    move-result-object v3

    .line 6850
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    if-eqz v3, :cond_0

    .line 6851
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6852
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    goto :goto_0

    .line 6857
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6858
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 6862
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6863
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->reciprocate_:Z

    goto :goto_0

    .line 6867
    :sswitch_3b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 6868
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 6869
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 6871
    :cond_4c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6872
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    goto :goto_0

    .line 6836
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 6810
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6823
    :cond_6
    :goto_6
    return-object p0

    .line 6811
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6812
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    .line 6814
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6815
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    .line 6817
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->hasReciprocate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6818
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getReciprocate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->setReciprocate(Z)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    .line 6820
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6821
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6987
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 6989
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 6995
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6996
    return-object p0

    .line 6992
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6921
    if-nez p1, :cond_8

    .line 6922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6924
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6925
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 6927
    return-object p0
.end method

.method public setReciprocate(Z)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6950
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6951
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->reciprocate_:Z

    .line 6953
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 6981
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 6983
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6984
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6971
    if-nez p1, :cond_8

    .line 6972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6974
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 6976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6977
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6890
    if-nez p1, :cond_8

    .line 6891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6893
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->bitField0_:I

    .line 6894
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 6896
    return-object p0
.end method
