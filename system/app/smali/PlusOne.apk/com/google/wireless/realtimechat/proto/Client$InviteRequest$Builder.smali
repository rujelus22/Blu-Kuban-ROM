.class public final Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$InviteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$InviteRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private participant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private senderId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19172
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 19359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    .line 19448
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 19173
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->maybeForceBuilderInitialization()V

    .line 19174
    return-void
.end method

.method static synthetic access$25500()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 1

    .prologue
    .line 19167
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 1

    .prologue
    .line 19179
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureParticipantIsMutable()V
    .registers 3

    .prologue
    .line 19362
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 19363
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    .line 19364
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19366
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19177
    return-void
.end method


# virtual methods
.method public addAllParticipant(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 19429
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19430
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19432
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 19422
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19423
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19425
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19405
    if-nez p2, :cond_8

    .line 19406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19408
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19409
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19411
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 19415
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19416
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19418
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19395
    if-nez p1, :cond_8

    .line 19396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19398
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19399
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19401
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 3

    .prologue
    .line 19204
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    .line 19205
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19206
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19208
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 6

    .prologue
    .line 19222
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 19223
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19224
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 19225
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19226
    or-int/lit8 v2, v2, 0x1

    .line 19228
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$25702(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19229
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 19230
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    .line 19231
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19233
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$25802(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Ljava/util/List;)Ljava/util/List;

    .line 19234
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 19235
    or-int/lit8 v2, v2, 0x2

    .line 19237
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$25902(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19238
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 19239
    or-int/lit8 v2, v2, 0x4

    .line 19241
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$26002(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19242
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$26102(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;I)I

    .line 19243
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2

    .prologue
    .line 19183
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 19185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    .line 19187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19188
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19189
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 19191
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19192
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2

    .prologue
    .line 19347
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19348
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 19350
    return-object p0
.end method

.method public clearParticipant()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2

    .prologue
    .line 19435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    .line 19436
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19438
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2

    .prologue
    .line 19515
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19516
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 19518
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2

    .prologue
    .line 19484
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19486
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19487
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 3

    .prologue
    .line 19196
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

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
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19328
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 19329
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19330
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19331
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 19334
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
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 19200
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 19375
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 19372
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19369
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19496
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 19497
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19498
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19499
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 19502
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
    .line 19453
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19325
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

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
    .line 19493
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 19450
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

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
    .line 19167
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

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
    .line 19167
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19279
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 19280
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_54

    .line 19285
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19287
    :sswitch_d
    return-object p0

    .line 19292
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19293
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 19297
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19298
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 19302
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    .line 19303
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19304
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    goto :goto_0

    .line 19308
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 19309
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 19310
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 19312
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19313
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    goto :goto_0

    .line 19280
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x22 -> :sswitch_1b
        0x2a -> :sswitch_28
        0x32 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 19247
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19267
    :cond_6
    :goto_6
    return-object p0

    .line 19248
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19249
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    .line 19251
    :cond_14
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$25800(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 19252
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 19253
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$25800(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    .line 19254
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19261
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 19262
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    .line 19264
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19265
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    goto :goto_6

    .line 19256
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19257
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->access$25800(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19472
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 19474
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19480
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19481
    return-object p0

    .line 19477
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19338
    if-nez p1, :cond_8

    .line 19339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19341
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19342
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 19344
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 19389
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19390
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19392
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19379
    if-nez p2, :cond_8

    .line 19380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19382
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->ensureParticipantIsMutable()V

    .line 19383
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19385
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19506
    if-nez p1, :cond_8

    .line 19507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19509
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19510
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 19512
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19466
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19468
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19469
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19456
    if-nez p1, :cond_8

    .line 19457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19459
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19461
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->bitField0_:I

    .line 19462
    return-object p0
.end method
