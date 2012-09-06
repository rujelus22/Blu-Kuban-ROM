.class public final Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private conversationClientId_:Ljava/lang/Object;

.field private conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

.field private displayName_:Ljava/lang/Object;

.field private participantId_:Lcom/google/protobuf/LazyStringList;

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

.field private retry_:Z

.field private senderId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16920
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 16944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 16980
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 17036
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 17072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    .line 17108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    .line 17197
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17261
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 16683
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 16684
    return-void
.end method

.method static synthetic access$22200()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 1

    .prologue
    .line 16677
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 1

    .prologue
    .line 16689
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureParticipantIdIsMutable()V
    .registers 3

    .prologue
    .line 16982
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 16983
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 16984
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16986
    :cond_16
    return-void
.end method

.method private ensureParticipantIsMutable()V
    .registers 3

    .prologue
    .line 17111
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 17112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    .line 17113
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17115
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16687
    return-void
.end method


# virtual methods
.method public addAllParticipant(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 17178
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 17179
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17181
    return-object p0
.end method

.method public addAllParticipantId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 17018
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 17019
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17021
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17171
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 17172
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17174
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17154
    if-nez p2, :cond_8

    .line 17155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17157
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 17158
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17160
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 17164
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 17165
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17167
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17144
    if-nez p1, :cond_8

    .line 17145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17147
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 17148
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17150
    return-object p0
.end method

.method public addParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17008
    if-nez p1, :cond_8

    .line 17009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17011
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 17012
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 17014
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 3

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    .line 16725
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16726
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16728
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 6

    .prologue
    .line 16742
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 16743
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16744
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16745
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16746
    or-int/lit8 v2, v2, 0x1

    .line 16748
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22402(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 16749
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 16750
    or-int/lit8 v2, v2, 0x2

    .line 16752
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22502(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16753
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 16754
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 16756
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16758
    :cond_37
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22602(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 16759
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 16760
    or-int/lit8 v2, v2, 0x4

    .line 16762
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22702(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16763
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 16764
    or-int/lit8 v2, v2, 0x8

    .line 16766
    :cond_51
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22802(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16767
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6c

    .line 16768
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    .line 16769
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16771
    :cond_6c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22902(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/util/List;)Ljava/util/List;

    .line 16772
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_79

    .line 16773
    or-int/lit8 v2, v2, 0x10

    .line 16775
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$23002(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 16776
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_86

    .line 16777
    or-int/lit8 v2, v2, 0x20

    .line 16779
    :cond_86
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->retry_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->retry_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$23102(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Z)Z

    .line 16780
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_93

    .line 16781
    or-int/lit8 v2, v2, 0x40

    .line 16783
    :cond_93
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$23202(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 16784
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$23302(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;I)I

    .line 16785
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 16693
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16694
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 16695
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16696
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 16697
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16698
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 16699
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 16701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    .line 16703
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16704
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    .line 16705
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16706
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 16707
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->retry_:Z

    .line 16709
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16710
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 16711
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16712
    return-object p0
.end method

.method public clearChatMessage()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 17233
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17235
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17236
    return-object p0
.end method

.method public clearConversationClientId()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 16968
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16969
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 16971
    return-object p0
.end method

.method public clearConversationMetadata()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 17297
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 17299
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17300
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 17096
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17097
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    .line 17099
    return-object p0
.end method

.method public clearParticipant()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 17184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    .line 17185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17187
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 17024
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 17025
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17027
    return-object p0
.end method

.method public clearRetry()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 17254
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->retry_:Z

    .line 17257
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 17060
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17061
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 17063
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2

    .prologue
    .line 16937
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16938
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 16940
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3

    .prologue
    .line 16716
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

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
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 17202
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getConversationClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16949
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 16950
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16951
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16952
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 16955
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

.method public getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2

    .prologue
    .line 17266
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 16720
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17077
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    .line 17078
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17079
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17080
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    .line 17083
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

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 17124
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 17121
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 16995
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantIdCount()I
    .registers 2

    .prologue
    .line 16992
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantIdList()Ljava/util/List;
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
    .line 16989
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 17118
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetry()Z
    .registers 2

    .prologue
    .line 17245
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->retry_:Z

    return v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17041
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 17042
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17043
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17044
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 17047
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

.method public getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2

    .prologue
    .line 16925
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    .line 17199
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

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

.method public hasConversationClientId()Z
    .registers 3

    .prologue
    .line 16946
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

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

.method public hasConversationMetadata()Z
    .registers 3

    .prologue
    .line 17263
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 17074
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

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

.method public hasRetry()Z
    .registers 3

    .prologue
    .line 17242
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

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
    .line 17038
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

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

    .line 16922
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

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
    .line 16835
    const/4 v0, 0x1

    return v0
.end method

.method public mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17221
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 17223
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17229
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17230
    return-object p0

    .line 17226
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    goto :goto_20
.end method

.method public mergeConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17285
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 17287
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 17293
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17294
    return-object p0

    .line 17290
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    goto :goto_20
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
    .line 16677
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16677
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

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
    .line 16677
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16843
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 16844
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_ac

    .line 16849
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 16851
    :sswitch_d
    return-object p0

    .line 16856
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 16857
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v3

    .line 16858
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    if-eqz v3, :cond_0

    .line 16859
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16860
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    goto :goto_0

    .line 16865
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16866
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 16870
    :sswitch_2e
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 16871
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 16875
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16876
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 16880
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16881
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 16885
    :sswitch_55
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 16886
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16887
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    goto :goto_0

    .line 16891
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :sswitch_64
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v1

    .line 16892
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->hasChatMessage()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 16893
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 16895
    :cond_75
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16896
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    goto :goto_0

    .line 16900
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    :sswitch_80
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16901
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->retry_:Z

    goto/16 :goto_0

    .line 16905
    :sswitch_8e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v1

    .line 16906
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->hasConversationMetadata()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 16907
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    .line 16909
    :cond_9f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16910
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    goto/16 :goto_0

    .line 16844
    nop

    :sswitch_data_ac
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x32 -> :sswitch_55
        0x3a -> :sswitch_64
        0x40 -> :sswitch_80
        0x4a -> :sswitch_8e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 16789
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16831
    :cond_6
    :goto_6
    return-object p0

    .line 16790
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16791
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 16793
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasConversationClientId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 16794
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 16796
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22600(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 16797
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 16798
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22600(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 16799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16806
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 16807
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 16809
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 16810
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 16812
    :cond_59
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22900(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 16813
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 16814
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22900(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    .line 16815
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16822
    :cond_77
    :goto_77
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 16823
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 16825
    :cond_84
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasRetry()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 16826
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getRetry()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 16828
    :cond_91
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasConversationMetadata()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16829
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    goto/16 :goto_6

    .line 16801
    :cond_a0
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 16802
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22600(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    .line 16817
    :cond_ad
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 16818
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->access$22900(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_77
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 17215
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17217
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17218
    return-object p0
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17205
    if-nez p1, :cond_8

    .line 17206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17208
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17210
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17211
    return-object p0
.end method

.method public setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16959
    if-nez p1, :cond_8

    .line 16960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16962
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 16965
    return-object p0
.end method

.method public setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 17279
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 17281
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17282
    return-object p0
.end method

.method public setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17269
    if-nez p1, :cond_8

    .line 17270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17272
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 17274
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17275
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17087
    if-nez p1, :cond_8

    .line 17088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17090
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17091
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->displayName_:Ljava/lang/Object;

    .line 17093
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17138
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 17139
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17141
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17128
    if-nez p2, :cond_8

    .line 17129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17131
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIsMutable()V

    .line 17132
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17134
    return-object p0
.end method

.method public setParticipantId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16999
    if-nez p2, :cond_8

    .line 17000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17002
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->ensureParticipantIdIsMutable()V

    .line 17003
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17005
    return-object p0
.end method

.method public setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17248
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17249
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->retry_:Z

    .line 17251
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17051
    if-nez p1, :cond_8

    .line 17052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17054
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 17055
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 17057
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16928
    if-nez p1, :cond_8

    .line 16929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16931
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->bitField0_:I

    .line 16932
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 16934
    return-object p0
.end method
