.class public final Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
        "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationClientId_:Ljava/lang/Object;

.field private conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

.field private createdAt_:J

.field private firstEventTimestamp_:J

.field private hidden_:Z

.field private id_:Ljava/lang/Object;

.field private inactiveParticipant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

.field private muted_:Z

.field private name_:Ljava/lang/Object;

.field private needsAccept_:Z

.field private offTheRecord_:Z

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

.field private type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

.field private unreadCount_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    .line 3569
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 3614
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 3670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    .line 3748
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    .line 3858
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    .line 3989
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 4068
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 4111
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 4175
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 3153
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->maybeForceBuilderInitialization()V

    .line 3154
    return-void
.end method

.method static synthetic access$3300()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 1

    .prologue
    .line 3147
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 1

    .prologue
    .line 3159
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInactiveParticipantIsMutable()V
    .registers 3

    .prologue
    .line 3861
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 3862
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    .line 3863
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3865
    :cond_17
    return-void
.end method

.method private ensureParticipantIdIsMutable()V
    .registers 3

    .prologue
    .line 3616
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 3617
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 3618
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3620
    :cond_17
    return-void
.end method

.method private ensureParticipantIsMutable()V
    .registers 3

    .prologue
    .line 3751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 3752
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    .line 3753
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3755
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3157
    return-void
.end method


# virtual methods
.method public addAllInactiveParticipant(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;"
        }
    .end annotation

    .prologue
    .line 3928
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3929
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3931
    return-object p0
.end method

.method public addAllParticipant(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;"
        }
    .end annotation

    .prologue
    .line 3818
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3819
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3821
    return-object p0
.end method

.method public addAllParticipantId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;"
        }
    .end annotation

    .prologue
    .line 3652
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIdIsMutable()V

    .line 3653
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3655
    return-object p0
.end method

.method public addInactiveParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3921
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3922
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3924
    return-object p0
.end method

.method public addInactiveParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3904
    if-nez p2, :cond_8

    .line 3905
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3907
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3908
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3910
    return-object p0
.end method

.method public addInactiveParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3914
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3915
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3917
    return-object p0
.end method

.method public addInactiveParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3894
    if-nez p1, :cond_8

    .line 3895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3897
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3898
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3900
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3811
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3812
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3814
    return-object p0
.end method

.method public addParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3794
    if-nez p2, :cond_8

    .line 3795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3797
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3798
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3800
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3804
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3805
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3807
    return-object p0
.end method

.method public addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3784
    if-nez p1, :cond_8

    .line 3785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3787
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3788
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3790
    return-object p0
.end method

.method public addParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3642
    if-nez p1, :cond_8

    .line 3643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3645
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIdIsMutable()V

    .line 3646
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3648
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 3

    .prologue
    .line 3212
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    .line 3213
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3214
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3216
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 9

    .prologue
    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 3230
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 3231
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3232
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3233
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 3234
    or-int/lit8 v2, v2, 0x1

    .line 3236
    :cond_17
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3502(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3237
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    .line 3238
    or-int/lit8 v2, v2, 0x2

    .line 3240
    :cond_23
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3602(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 3241
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    .line 3242
    or-int/lit8 v2, v2, 0x4

    .line 3244
    :cond_2f
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->offTheRecord_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->offTheRecord_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3702(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z

    .line 3245
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4b

    .line 3246
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 3248
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3250
    :cond_4b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3802(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3251
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_58

    .line 3252
    or-int/lit8 v2, v2, 0x8

    .line 3254
    :cond_58
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3902(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_65

    .line 3256
    or-int/lit8 v2, v2, 0x10

    .line 3258
    :cond_65
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->muted_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->muted_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4002(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z

    .line 3259
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_72

    .line 3260
    or-int/lit8 v2, v2, 0x20

    .line 3262
    :cond_72
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->unreadCount_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->unreadCount_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4102(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J

    .line 3263
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8d

    .line 3264
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    .line 3265
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3267
    :cond_8d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4202(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/util/List;)Ljava/util/List;

    .line 3268
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9a

    .line 3269
    or-int/lit8 v2, v2, 0x40

    .line 3271
    :cond_9a
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->needsAccept_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->needsAccept_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4302(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z

    .line 3272
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b5

    .line 3273
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    .line 3274
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3276
    :cond_b5
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4402(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/util/List;)Ljava/util/List;

    .line 3277
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c2

    .line 3278
    or-int/lit16 v2, v2, 0x80

    .line 3280
    :cond_c2
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->createdAt_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->createdAt_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4502(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J

    .line 3281
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_cf

    .line 3282
    or-int/lit16 v2, v2, 0x100

    .line 3284
    :cond_cf
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hidden_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hidden_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4602(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z

    .line 3285
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_dc

    .line 3286
    or-int/lit16 v2, v2, 0x200

    .line 3288
    :cond_dc
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4702(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 3289
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_e9

    .line 3290
    or-int/lit16 v2, v2, 0x400

    .line 3292
    :cond_e9
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4802(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3293
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_f6

    .line 3294
    or-int/lit16 v2, v2, 0x800

    .line 3296
    :cond_f6
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4902(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 3297
    and-int v3, v0, v5

    if-ne v3, v5, :cond_101

    .line 3298
    or-int/lit16 v2, v2, 0x1000

    .line 3300
    :cond_101
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$5002(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 3301
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10c

    .line 3302
    or-int/lit16 v2, v2, 0x2000

    .line 3304
    :cond_10c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->firstEventTimestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->firstEventTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$5102(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J

    .line 3305
    and-int v3, v0, v7

    if-ne v3, v7, :cond_117

    .line 3306
    or-int/lit16 v2, v2, 0x4000

    .line 3308
    :cond_117
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$5202(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 3309
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$5302(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;I)I

    .line 3310
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3163
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    .line 3165
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3166
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 3167
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3168
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->offTheRecord_:Z

    .line 3169
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3170
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 3171
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    .line 3173
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3174
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->muted_:Z

    .line 3175
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3176
    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->unreadCount_:J

    .line 3177
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    .line 3179
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3180
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->needsAccept_:Z

    .line 3181
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    .line 3183
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3184
    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->createdAt_:J

    .line 3185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3186
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hidden_:Z

    .line 3187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3188
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 3189
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 3191
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3192
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 3193
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3194
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 3195
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3196
    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->firstEventTimestamp_:J

    .line 3197
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3198
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 3199
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3200
    return-object p0
.end method

.method public clearConversationClientId()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 4056
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4057
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 4059
    return-object p0
.end method

.method public clearConversationMetadata()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 4104
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 4106
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4107
    return-object p0
.end method

.method public clearCreatedAt()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3

    .prologue
    .line 3961
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3962
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->createdAt_:J

    .line 3964
    return-object p0
.end method

.method public clearFirstEventTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3

    .prologue
    .line 4168
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->firstEventTimestamp_:J

    .line 4171
    return-object p0
.end method

.method public clearHidden()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3982
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hidden_:Z

    .line 3985
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3557
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3558
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    .line 3560
    return-object p0
.end method

.method public clearInactiveParticipant()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3934
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    .line 3935
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3937
    return-object p0
.end method

.method public clearInviter()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 4025
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4027
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4028
    return-object p0
.end method

.method public clearLastMessage()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3

    .prologue
    .line 4211
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 4213
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4214
    return-object p0
.end method

.method public clearLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3

    .prologue
    .line 4147
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 4149
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4150
    return-object p0
.end method

.method public clearMuted()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3720
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->muted_:Z

    .line 3723
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3694
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3695
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    .line 3697
    return-object p0
.end method

.method public clearNeedsAccept()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3851
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->needsAccept_:Z

    .line 3854
    return-object p0
.end method

.method public clearOffTheRecord()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3607
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->offTheRecord_:Z

    .line 3610
    return-object p0
.end method

.method public clearParticipant()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3824
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    .line 3825
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3827
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3658
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 3659
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3661
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3586
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3587
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 3589
    return-object p0
.end method

.method public clearUnreadCount()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3

    .prologue
    .line 3741
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3742
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->unreadCount_:J

    .line 3744
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3

    .prologue
    .line 3204
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

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
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4037
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 4038
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4039
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4040
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 4043
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
    .line 4073
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method public getCreatedAt()J
    .registers 3

    .prologue
    .line 3952
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 3208
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    return-object v0
.end method

.method public getFirstEventTimestamp()J
    .registers 3

    .prologue
    .line 4159
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->firstEventTimestamp_:J

    return-wide v0
.end method

.method public getHidden()Z
    .registers 2

    .prologue
    .line 3973
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hidden_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    .line 3539
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3540
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3541
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    .line 3544
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

.method public getInactiveParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 3874
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getInactiveParticipantCount()I
    .registers 2

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInactiveParticipantList()Ljava/util/List;
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
    .line 3868
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInviter()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 3994
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getLastMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 2

    .prologue
    .line 4116
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method public getMuted()Z
    .registers 2

    .prologue
    .line 3711
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->muted_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    .line 3676
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3677
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3678
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    .line 3681
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

.method public getNeedsAccept()Z
    .registers 2

    .prologue
    .line 3842
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->needsAccept_:Z

    return v0
.end method

.method public getOffTheRecord()Z
    .registers 2

    .prologue
    .line 3598
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->offTheRecord_:Z

    return v0
.end method

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 3761
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantIdCount()I
    .registers 2

    .prologue
    .line 3626
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

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
    .line 3623
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

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
    .line 3758
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object v0
.end method

.method public getUnreadCount()J
    .registers 3

    .prologue
    .line 3732
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->unreadCount_:J

    return-wide v0
.end method

.method public hasConversationClientId()Z
    .registers 3

    .prologue
    .line 4034
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConversationMetadata()Z
    .registers 3

    .prologue
    .line 4070
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCreatedAt()Z
    .registers 3

    .prologue
    .line 3949
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFirstEventTimestamp()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 4156
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHidden()Z
    .registers 3

    .prologue
    .line 3970
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3535
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviter()Z
    .registers 3

    .prologue
    .line 3991
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLastMessage()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 4177
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLastPreviewEvent()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 4113
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMuted()Z
    .registers 3

    .prologue
    .line 3708
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 3672
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

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

.method public hasNeedsAccept()Z
    .registers 3

    .prologue
    .line 3839
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

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

.method public hasOffTheRecord()Z
    .registers 3

    .prologue
    .line 3595
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 3571
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

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

.method public hasUnreadCount()Z
    .registers 3

    .prologue
    .line 3729
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3394
    const/4 v0, 0x1

    return v0
.end method

.method public mergeConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4092
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4094
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 4100
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4101
    return-object p0

    .line 4097
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

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
    .line 3147
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3147
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

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
    .line 3147
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3402
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3403
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_14a

    .line 3408
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3410
    :sswitch_d
    return-object p0

    .line 3415
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3416
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 3420
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3421
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v3

    .line 3422
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    if-eqz v3, :cond_0

    .line 3423
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3424
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    goto :goto_0

    .line 3429
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3430
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->offTheRecord_:Z

    goto :goto_0

    .line 3434
    :sswitch_3b
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIdIsMutable()V

    .line 3435
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 3439
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3444
    :sswitch_55
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v1

    .line 3445
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hasLastMessage()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 3446
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->getLastMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 3448
    :cond_66
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3449
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setLastMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto :goto_0

    .line 3453
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    :sswitch_71
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3454
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->muted_:Z

    goto :goto_0

    .line 3458
    :sswitch_7e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3459
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->unreadCount_:J

    goto/16 :goto_0

    .line 3463
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 3464
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3465
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto/16 :goto_0

    .line 3469
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :sswitch_9c
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3470
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->needsAccept_:Z

    goto/16 :goto_0

    .line 3474
    :sswitch_aa
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 3475
    .restart local v1       #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hasInviter()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 3476
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->getInviter()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 3478
    :cond_bb
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3479
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setInviter(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto/16 :goto_0

    .line 3483
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :sswitch_c7
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 3484
    .restart local v1       #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3485
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->addInactiveParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto/16 :goto_0

    .line 3489
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :sswitch_d7
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3490
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->createdAt_:J

    goto/16 :goto_0

    .line 3494
    :sswitch_e5
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hidden_:Z

    goto/16 :goto_0

    .line 3499
    :sswitch_f3
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3500
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3504
    :sswitch_101
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v1

    .line 3505
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hasConversationMetadata()Z

    move-result v4

    if-eqz v4, :cond_112

    .line 3506
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    .line 3508
    :cond_112
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3509
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto/16 :goto_0

    .line 3513
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    :sswitch_11e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v1

    .line 3514
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hasLastPreviewEvent()Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 3515
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 3517
    :cond_12f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3518
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setLastPreviewEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto/16 :goto_0

    .line 3522
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    :sswitch_13b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3523
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->firstEventTimestamp_:J

    goto/16 :goto_0

    .line 3403
    :sswitch_data_14a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x20 -> :sswitch_2e
        0x2a -> :sswitch_3b
        0x32 -> :sswitch_48
        0x3a -> :sswitch_55
        0x40 -> :sswitch_71
        0x48 -> :sswitch_7e
        0x52 -> :sswitch_8c
        0x58 -> :sswitch_9c
        0x62 -> :sswitch_aa
        0x6a -> :sswitch_c7
        0x70 -> :sswitch_d7
        0x78 -> :sswitch_e5
        0x82 -> :sswitch_f3
        0x8a -> :sswitch_101
        0x92 -> :sswitch_11e
        0x98 -> :sswitch_13b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3314
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3390
    :cond_6
    :goto_6
    return-object p0

    .line 3315
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3316
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3318
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3319
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3321
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3322
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getOffTheRecord()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setOffTheRecord(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3324
    :cond_2e
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3800(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 3325
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 3326
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3800(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 3327
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3334
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasName()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3335
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3337
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasMuted()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3338
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getMuted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setMuted(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3340
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasUnreadCount()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3341
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setUnreadCount(J)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3343
    :cond_73
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4200(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 3344
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 3345
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4200(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    .line 3346
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3353
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasNeedsAccept()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 3354
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getNeedsAccept()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setNeedsAccept(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3356
    :cond_9e
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4400(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 3357
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_142

    .line 3358
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4400(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    .line 3359
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3366
    :cond_bc
    :goto_bc
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasCreatedAt()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 3367
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setCreatedAt(J)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3369
    :cond_c9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasHidden()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 3370
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getHidden()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setHidden(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3372
    :cond_d6
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasInviter()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 3373
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getInviter()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeInviter(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3375
    :cond_e3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasConversationClientId()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 3376
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3378
    :cond_f0
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasConversationMetadata()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 3379
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3381
    :cond_fd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasLastPreviewEvent()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 3382
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeLastPreviewEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3384
    :cond_10a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasFirstEventTimestamp()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 3385
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setFirstEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3387
    :cond_117
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasLastMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3388
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeLastMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto/16 :goto_6

    .line 3329
    :cond_126
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIdIsMutable()V

    .line 3330
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$3800(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4c

    .line 3348
    :cond_134
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3349
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4200(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_91

    .line 3361
    :cond_142
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3362
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->access$4400(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_bc
.end method

.method public mergeInviter(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4013
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4015
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4021
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4022
    return-object p0

    .line 4018
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    goto :goto_20
.end method

.method public mergeLastMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 4199
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 4201
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 4207
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4208
    return-object p0

    .line 4204
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    goto :goto_1f
.end method

.method public mergeLastPreviewEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 4135
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4137
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 4143
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4144
    return-object p0

    .line 4140
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    goto :goto_20
.end method

.method public setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4047
    if-nez p1, :cond_8

    .line 4048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4050
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4051
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationClientId_:Ljava/lang/Object;

    .line 4053
    return-object p0
.end method

.method public setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4086
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 4088
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4089
    return-object p0
.end method

.method public setConversationMetadata(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4076
    if-nez p1, :cond_8

    .line 4077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4079
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 4081
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4082
    return-object p0
.end method

.method public setCreatedAt(J)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3955
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3956
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->createdAt_:J

    .line 3958
    return-object p0
.end method

.method public setFirstEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 4162
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4163
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->firstEventTimestamp_:J

    .line 4165
    return-object p0
.end method

.method public setHidden(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3977
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->hidden_:Z

    .line 3979
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3548
    if-nez p1, :cond_8

    .line 3549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3551
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3552
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->id_:Ljava/lang/Object;

    .line 3554
    return-object p0
.end method

.method public setInactiveParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3888
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3889
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3891
    return-object p0
.end method

.method public setInactiveParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3878
    if-nez p2, :cond_8

    .line 3879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3881
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureInactiveParticipantIsMutable()V

    .line 3882
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3884
    return-object p0
.end method

.method public setInviter(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4007
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4009
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4010
    return-object p0
.end method

.method public setInviter(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3997
    if-nez p1, :cond_8

    .line 3998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4000
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4002
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4003
    return-object p0
.end method

.method public setLastMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4193
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 4195
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4196
    return-object p0
.end method

.method public setLastMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4183
    if-nez p1, :cond_8

    .line 4184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4186
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 4188
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4189
    return-object p0
.end method

.method public setLastPreviewEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4129
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 4131
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4132
    return-object p0
.end method

.method public setLastPreviewEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4119
    if-nez p1, :cond_8

    .line 4120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4122
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 4124
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 4125
    return-object p0
.end method

.method public setMuted(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3714
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3715
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->muted_:Z

    .line 3717
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3685
    if-nez p1, :cond_8

    .line 3686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3688
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3689
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->name_:Ljava/lang/Object;

    .line 3691
    return-object p0
.end method

.method public setNeedsAccept(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3845
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3846
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->needsAccept_:Z

    .line 3848
    return-object p0
.end method

.method public setOffTheRecord(Z)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3601
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3602
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->offTheRecord_:Z

    .line 3604
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3778
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3779
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3781
    return-object p0
.end method

.method public setParticipant(ILcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3768
    if-nez p2, :cond_8

    .line 3769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3771
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIsMutable()V

    .line 3772
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participant_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3774
    return-object p0
.end method

.method public setParticipantId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3633
    if-nez p2, :cond_8

    .line 3634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3636
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->ensureParticipantIdIsMutable()V

    .line 3637
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3639
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3577
    if-nez p1, :cond_8

    .line 3578
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3580
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3581
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 3583
    return-object p0
.end method

.method public setUnreadCount(J)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3735
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->bitField0_:I

    .line 3736
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->unreadCount_:J

    .line 3738
    return-object p0
.end method
