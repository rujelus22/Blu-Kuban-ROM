.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private senderId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20416
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20544
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 20604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 20417
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 20418
    return-void
.end method

.method static synthetic access$27100()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 1

    .prologue
    .line 20411
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 1

    .prologue
    .line 20423
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20421
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 3

    .prologue
    .line 20446
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    .line 20447
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20448
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20450
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 6

    .prologue
    .line 20464
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 20465
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20466
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20467
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20468
    or-int/lit8 v2, v2, 0x1

    .line 20470
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->access$27302(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20471
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 20472
    or-int/lit8 v2, v2, 0x2

    .line 20474
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->access$27402(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20475
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 20476
    or-int/lit8 v2, v2, 0x4

    .line 20478
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->access$27502(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20479
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->access$27602(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;I)I

    .line 20480
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 2

    .prologue
    .line 20427
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20428
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20429
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 20431
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 20433
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20434
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 2

    .prologue
    .line 20628
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20629
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 20631
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 2

    .prologue
    .line 20592
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20593
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 20595
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 2

    .prologue
    .line 20561
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20562
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20564
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 3

    .prologue
    .line 20438
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

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
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 20609
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 20610
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 20611
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20612
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 20615
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
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 20442
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 20573
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 20574
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 20575
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20576
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 20579
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

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    .registers 2

    .prologue
    .line 20549
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 20606
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 20570
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20546
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 20411
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

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
    .line 20411
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20506
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20507
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 20512
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20514
    :sswitch_d
    return-object p0

    .line 20519
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 20520
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    move-result-object v2

    .line 20521
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    if-eqz v2, :cond_0

    .line 20522
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20523
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    goto :goto_0

    .line 20528
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 20533
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20534
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 20507
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 20484
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20494
    :cond_6
    :goto_6
    return-object p0

    .line 20485
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20486
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    .line 20488
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 20489
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    .line 20491
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20492
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20619
    if-nez p1, :cond_8

    .line 20620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20622
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20623
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 20625
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20583
    if-nez p1, :cond_8

    .line 20584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20586
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20587
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 20589
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20552
    if-nez p1, :cond_8

    .line 20553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20555
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->bitField0_:I

    .line 20556
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20558
    return-object p0
.end method
