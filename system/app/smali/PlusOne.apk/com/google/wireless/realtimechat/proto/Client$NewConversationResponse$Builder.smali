.class public final Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field private conversationClientId_:Ljava/lang/Object;

.field private inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

.field private participantError_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;"
        }
    .end annotation
.end field

.field private receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

.field private recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17757
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18003
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 18027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 18063
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    .line 18142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    .line 18231
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 18274
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 18298
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 18341
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 17758
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 17759
    return-void
.end method

.method static synthetic access$23500()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 1

    .prologue
    .line 17752
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 1

    .prologue
    .line 17764
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureParticipantErrorIsMutable()V
    .registers 3

    .prologue
    .line 18145
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 18146
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    .line 18147
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18149
    :cond_17
    return-void
.end method

.method private ensureRecipientIdIsMutable()V
    .registers 3

    .prologue
    .line 18343
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 18344
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 18345
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18347
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17762
    return-void
.end method


# virtual methods
.method public addAllParticipantError(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 18212
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 18213
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18215
    return-object p0
.end method

.method public addAllRecipientId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 18379
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureRecipientIdIsMutable()V

    .line 18380
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18382
    return-object p0
.end method

.method public addParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18205
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 18206
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18208
    return-object p0
.end method

.method public addParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18188
    if-nez p2, :cond_8

    .line 18189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18191
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 18192
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18194
    return-object p0
.end method

.method public addParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 18198
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 18199
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18201
    return-object p0
.end method

.method public addParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18178
    if-nez p1, :cond_8

    .line 18179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18181
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 18182
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18184
    return-object p0
.end method

.method public addRecipientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18369
    if-nez p1, :cond_8

    .line 18370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18372
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureRecipientIdIsMutable()V

    .line 18373
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 18375
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 3

    .prologue
    .line 17799
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    .line 17800
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 17801
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17803
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 6

    .prologue
    .line 17817
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 17818
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17819
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17820
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 17821
    or-int/lit8 v2, v2, 0x1

    .line 17823
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$23702(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 17824
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 17825
    or-int/lit8 v2, v2, 0x2

    .line 17827
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->conversationClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$23802(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17828
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 17829
    or-int/lit8 v2, v2, 0x4

    .line 17831
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$23902(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 17832
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 17833
    or-int/lit8 v2, v2, 0x8

    .line 17835
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24002(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17836
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 17837
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    .line 17838
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17840
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24102(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Ljava/util/List;)Ljava/util/List;

    .line 17841
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 17842
    or-int/lit8 v2, v2, 0x10

    .line 17844
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24202(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 17845
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 17846
    or-int/lit8 v2, v2, 0x20

    .line 17848
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24302(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 17849
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 17850
    or-int/lit8 v2, v2, 0x40

    .line 17852
    :cond_77
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24402(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17853
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_93

    .line 17854
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 17856
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17858
    :cond_93
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24502(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 17859
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24602(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;I)I

    .line 17860
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 17768
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17769
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 17770
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 17772
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17773
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 17774
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    .line 17776
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17777
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    .line 17778
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17779
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 17780
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17781
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 17782
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17783
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17784
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17785
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 17786
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17787
    return-object p0
.end method

.method public clearClientConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18099
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18101
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18102
    return-object p0
.end method

.method public clearConversationClientId()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18051
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18052
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 18054
    return-object p0
.end method

.method public clearInviteType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18291
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18292
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 18294
    return-object p0
.end method

.method public clearParticipantError()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    .line 18219
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18221
    return-object p0
.end method

.method public clearReceipt()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18267
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 18269
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18270
    return-object p0
.end method

.method public clearRecentMessage()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18334
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 18336
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18337
    return-object p0
.end method

.method public clearRecipientId()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18385
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 18386
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18388
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18130
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18131
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    .line 18133
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 18020
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18021
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 18023
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3

    .prologue
    .line 17791
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

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
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 18068
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public getConversationClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18032
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 18033
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18034
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18035
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 18038
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
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17752
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 17795
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInviteType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    .registers 2

    .prologue
    .line 18279
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    return-object v0
.end method

.method public getParticipantError(I)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 3
    .parameter "index"

    .prologue
    .line 18158
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method public getParticipantErrorCount()I
    .registers 2

    .prologue
    .line 18155
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantErrorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18152
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 18236
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getRecentMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 18303
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 18356
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 18353
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18350
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18111
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    .line 18112
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18113
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18114
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    .line 18117
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 18008
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasClientConversation()Z
    .registers 3

    .prologue
    .line 18065
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

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

.method public hasConversationClientId()Z
    .registers 3

    .prologue
    .line 18029
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

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

.method public hasInviteType()Z
    .registers 3

    .prologue
    .line 18276
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReceipt()Z
    .registers 3

    .prologue
    .line 18233
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRecentMessage()Z
    .registers 3

    .prologue
    .line 18300
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 18108
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18005
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18087
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 18089
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18095
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18096
    return-object p0

    .line 18092
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

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
    .line 17752
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

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
    .line 17752
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17918
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 17919
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_c2

    .line 17924
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 17926
    :sswitch_d
    return-object p0

    .line 17931
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 17932
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 17933
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 17934
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17935
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 17940
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17941
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 17945
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v1

    .line 17946
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->hasClientConversation()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 17947
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 17949
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17950
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->setClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    goto :goto_0

    .line 17954
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17955
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 17959
    :sswitch_57
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureRecipientIdIsMutable()V

    .line 17960
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 17964
    :sswitch_64
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v1

    .line 17965
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17966
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->addParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    goto :goto_0

    .line 17970
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    :sswitch_73
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v1

    .line 17971
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->hasReceipt()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 17972
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 17974
    :cond_84
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17975
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    goto/16 :goto_0

    .line 17979
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    :sswitch_90
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 17980
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    move-result-object v3

    .line 17981
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    if-eqz v3, :cond_0

    .line 17982
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17983
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    goto/16 :goto_0

    .line 17988
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    :sswitch_a4
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v1

    .line 17989
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->hasRecentMessage()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 17990
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->getRecentMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 17992
    :cond_b5
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17993
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->setRecentMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    goto/16 :goto_0

    .line 17919
    nop

    :sswitch_data_c2
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x1a -> :sswitch_21
        0x22 -> :sswitch_2e
        0x2a -> :sswitch_4a
        0x32 -> :sswitch_57
        0x42 -> :sswitch_64
        0x4a -> :sswitch_73
        0x50 -> :sswitch_90
        0x5a -> :sswitch_a4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 17864
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17906
    :cond_6
    :goto_6
    return-object p0

    .line 17865
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 17866
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 17868
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasConversationClientId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 17869
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 17871
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasClientConversation()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 17872
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 17874
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 17875
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 17877
    :cond_3b
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24100(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 17878
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 17879
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24100(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    .line 17880
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 17887
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 17888
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 17890
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasInviteType()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 17891
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getInviteType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->setInviteType(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 17893
    :cond_73
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasRecentMessage()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 17894
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getRecentMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeRecentMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 17896
    :cond_80
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24500(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17897
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 17898
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24500(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 17899
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 17882
    :cond_a0
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 17883
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24100(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_59

    .line 17901
    :cond_ad
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureRecipientIdIsMutable()V

    .line 17902
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->access$24500(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18255
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 18257
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 18263
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18264
    return-object p0

    .line 18260
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    goto :goto_20
.end method

.method public mergeRecentMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18322
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 18324
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 18330
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18331
    return-object p0

    .line 18327
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    goto :goto_20
.end method

.method public setClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18081
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18083
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18084
    return-object p0
.end method

.method public setClientConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18071
    if-nez p1, :cond_8

    .line 18072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18074
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 18076
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18077
    return-object p0
.end method

.method public setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18042
    if-nez p1, :cond_8

    .line 18043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18045
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18046
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 18048
    return-object p0
.end method

.method public setInviteType(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18282
    if-nez p1, :cond_8

    .line 18283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18285
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18286
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 18288
    return-object p0
.end method

.method public setParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18172
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 18173
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18175
    return-object p0
.end method

.method public setParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18162
    if-nez p2, :cond_8

    .line 18163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18165
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 18166
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18168
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18249
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 18251
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18252
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18239
    if-nez p1, :cond_8

    .line 18240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18242
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 18244
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18245
    return-object p0
.end method

.method public setRecentMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18316
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 18318
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18319
    return-object p0
.end method

.method public setRecentMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18306
    if-nez p1, :cond_8

    .line 18307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18309
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 18311
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18312
    return-object p0
.end method

.method public setRecipientId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18360
    if-nez p2, :cond_8

    .line 18361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18363
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->ensureRecipientIdIsMutable()V

    .line 18364
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18366
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18121
    if-nez p1, :cond_8

    .line 18122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18124
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18125
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->senderId_:Ljava/lang/Object;

    .line 18127
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18011
    if-nez p1, :cond_8

    .line 18012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18014
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->bitField0_:I

    .line 18015
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 18017
    return-object p0
.end method
