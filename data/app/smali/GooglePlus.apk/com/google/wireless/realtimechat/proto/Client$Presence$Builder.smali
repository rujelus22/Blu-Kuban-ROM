.class public final Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PresenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Presence;",
        "Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private reciprocate_:Z

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7794
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7818
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    .line 7854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    .line 7639
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->maybeForceBuilderInitialization()V

    .line 7640
    return-void
.end method

.method static synthetic access$9800()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 1

    .prologue
    .line 7633
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 1

    .prologue
    .line 7645
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7643
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 3

    .prologue
    .line 7672
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    .line 7673
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7674
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7676
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 6

    .prologue
    .line 7690
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$Presence;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$Presence;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 7691
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7692
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7693
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7694
    or-int/lit8 v2, v2, 0x1

    .line 7696
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Presence;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->access$10002(Lcom/google/wireless/realtimechat/proto/Client$Presence;Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7697
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 7698
    or-int/lit8 v2, v2, 0x2

    .line 7700
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Presence;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->access$10102(Lcom/google/wireless/realtimechat/proto/Client$Presence;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7701
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 7702
    or-int/lit8 v2, v2, 0x4

    .line 7704
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Presence;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->access$10202(Lcom/google/wireless/realtimechat/proto/Client$Presence;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7705
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 7706
    or-int/lit8 v2, v2, 0x8

    .line 7708
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->reciprocate_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Presence;->reciprocate_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->access$10302(Lcom/google/wireless/realtimechat/proto/Client$Presence;Z)Z

    .line 7709
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 7710
    or-int/lit8 v2, v2, 0x10

    .line 7712
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Presence;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->access$10402(Lcom/google/wireless/realtimechat/proto/Client$Presence;J)J

    .line 7713
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Presence;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->access$10502(Lcom/google/wireless/realtimechat/proto/Client$Presence;I)I

    .line 7714
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 3

    .prologue
    .line 7649
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7650
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7651
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    .line 7653
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    .line 7655
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->reciprocate_:Z

    .line 7657
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7658
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->timestamp_:J

    .line 7659
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7660
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 2

    .prologue
    .line 7842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7843
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    .line 7845
    return-object p0
.end method

.method public clearReciprocate()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 2

    .prologue
    .line 7904
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->reciprocate_:Z

    .line 7907
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 2

    .prologue
    .line 7878
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7879
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    .line 7881
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 3

    .prologue
    .line 7925
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7926
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->timestamp_:J

    .line 7928
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 2

    .prologue
    .line 7811
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7812
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7814
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 3

    .prologue
    .line 7664
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

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
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7823
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    .line 7824
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7825
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7826
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    .line 7829
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
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7633
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2

    .prologue
    .line 7668
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    return-object v0
.end method

.method public getReciprocate()Z
    .registers 2

    .prologue
    .line 7895
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->reciprocate_:Z

    return v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7859
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    .line 7860
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7861
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7862
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    .line 7865
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

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 7916
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    .registers 2

    .prologue
    .line 7799
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 7820
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

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
    .line 7892
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 7856
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 7913
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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

    .line 7796
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

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
    .line 7738
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
    .line 7633
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7633
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

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
    .line 7633
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7746
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7747
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 7752
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7754
    :sswitch_d
    return-object p0

    .line 7759
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7760
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    move-result-object v2

    .line 7761
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    if-eqz v2, :cond_0

    .line 7762
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7763
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    goto :goto_0

    .line 7768
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7769
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 7773
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7774
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 7778
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7779
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->reciprocate_:Z

    goto :goto_0

    .line 7783
    :sswitch_48
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7784
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->timestamp_:J

    goto :goto_0

    .line 7747
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x28 -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 7718
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7734
    :cond_6
    :goto_6
    return-object p0

    .line 7719
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7720
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 7722
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7723
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 7725
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7726
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 7728
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasReciprocate()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7729
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getReciprocate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->setReciprocate(Z)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 7731
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7732
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7833
    if-nez p1, :cond_8

    .line 7834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7836
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7837
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->conversationId_:Ljava/lang/Object;

    .line 7839
    return-object p0
.end method

.method public setReciprocate(Z)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7898
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7899
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->reciprocate_:Z

    .line 7901
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7869
    if-nez p1, :cond_8

    .line 7870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7872
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7873
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->senderId_:Ljava/lang/Object;

    .line 7875
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7919
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7920
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->timestamp_:J

    .line 7922
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7802
    if-nez p1, :cond_8

    .line 7803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7805
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->bitField0_:I

    .line 7806
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    .line 7808
    return-object p0
.end method
