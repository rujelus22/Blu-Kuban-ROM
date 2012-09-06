.class public final Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4221
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 4222
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->initFields()V

    .line 4223
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2605
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2911
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedIsInitialized:B

    .line 2979
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedSerializedSize:I

    .line 2606
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2607
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2911
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedIsInitialized:B

    .line 2979
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedSerializedSize:I

    .line 2607
    return-void
.end method

.method static synthetic access$3502(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->offTheRecord_:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->muted_:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->unreadCount_:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->needsAccept_:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->createdAt_:J

    return-wide p1
.end method

.method static synthetic access$4602(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hidden_:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->firstEventTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$5202(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2600
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    return p1
.end method

.method private getConversationClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2840
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationClientId_:Ljava/lang/Object;

    .line 2841
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2842
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2844
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationClientId_:Ljava/lang/Object;

    .line 2847
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 1

    .prologue
    .line 2611
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->id_:Ljava/lang/Object;

    .line 2641
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2642
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2644
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->id_:Ljava/lang/Object;

    .line 2647
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2706
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->name_:Ljava/lang/Object;

    .line 2707
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2708
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2710
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->name_:Ljava/lang/Object;

    .line 2713
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
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->id_:Ljava/lang/Object;

    .line 2893
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 2894
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->offTheRecord_:Z

    .line 2895
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 2896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->name_:Ljava/lang/Object;

    .line 2897
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->muted_:Z

    .line 2898
    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->unreadCount_:J

    .line 2899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    .line 2900
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->needsAccept_:Z

    .line 2901
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    .line 2902
    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->createdAt_:J

    .line 2903
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hidden_:Z

    .line 2904
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 2905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationClientId_:Ljava/lang/Object;

    .line 2906
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 2907
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 2908
    iput-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->firstEventTimestamp_:J

    .line 2909
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 2910
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 1

    .prologue
    .line 3140
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->access$3300()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3143
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2826
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationClientId_:Ljava/lang/Object;

    .line 2827
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2828
    check-cast v1, Ljava/lang/String;

    .line 2836
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2830
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2832
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2833
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2834
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2836
    goto :goto_8
.end method

.method public getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method public getCreatedAt()J
    .registers 3

    .prologue
    .line 2796
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 2615
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public getFirstEventTimestamp()J
    .registers 3

    .prologue
    .line 2878
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->firstEventTimestamp_:J

    return-wide v0
.end method

.method public getHidden()Z
    .registers 2

    .prologue
    .line 2806
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hidden_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2626
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->id_:Ljava/lang/Object;

    .line 2627
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2628
    check-cast v1, Ljava/lang/String;

    .line 2636
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2630
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2632
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2633
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2634
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2636
    goto :goto_8
.end method

.method public getInactiveParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getInactiveParticipantCount()I
    .registers 2

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

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
    .line 2772
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    return-object v0
.end method

.method public getInactiveParticipantOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;

    return-object v0
.end method

.method public getInactiveParticipantOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    return-object v0
.end method

.method public getInviter()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getLastMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 2

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method public getMuted()Z
    .registers 2

    .prologue
    .line 2724
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->muted_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2692
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->name_:Ljava/lang/Object;

    .line 2693
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2694
    check-cast v1, Ljava/lang/String;

    .line 2702
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2696
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2698
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2699
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2700
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2702
    goto :goto_8
.end method

.method public getNeedsAccept()Z
    .registers 2

    .prologue
    .line 2765
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->needsAccept_:Z

    return v0
.end method

.method public getOffTheRecord()Z
    .registers 2

    .prologue
    .line 2668
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->offTheRecord_:Z

    return v0
.end method

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantIdCount()I
    .registers 2

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

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
    .line 2676
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

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
    .line 2741
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getParticipantOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;

    return-object v0
.end method

.method public getParticipantOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 11

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2981
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedSerializedSize:I

    .line 2982
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_e

    move v3, v2

    .line 3063
    .end local v2           #size:I
    .local v3, size:I
    :goto_d
    return v3

    .line 2984
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_e
    const/4 v2, 0x0

    .line 2985
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1e

    .line 2986
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2989
    :cond_1e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2f

    .line 2990
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->getNumber()I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2993
    :cond_2f
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3c

    .line 2994
    iget-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->offTheRecord_:Z

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2998
    :cond_3c
    const/4 v0, 0x0

    .line 2999
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3e
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_54

    .line 3000
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2999
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 3003
    :cond_54
    add-int/2addr v2, v0

    .line 3004
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 3006
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_70

    .line 3007
    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3010
    :cond_70
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_80

    .line 3011
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3014
    :cond_80
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v9, :cond_8d

    .line 3015
    iget-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->muted_:Z

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3018
    :cond_8d
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_9e

    .line 3019
    const/16 v4, 0x9

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->unreadCount_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3022
    :cond_9e
    const/4 v1, 0x0

    :goto_9f
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b9

    .line 3023
    const/16 v5, 0xa

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3022
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    .line 3026
    :cond_b9
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_ca

    .line 3027
    const/16 v4, 0xb

    iget-boolean v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->needsAccept_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3030
    :cond_ca
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_db

    .line 3031
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3034
    :cond_db
    const/4 v1, 0x0

    :goto_dc
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f6

    .line 3035
    const/16 v5, 0xd

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3034
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 3038
    :cond_f6
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_107

    .line 3039
    const/16 v4, 0xe

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->createdAt_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3042
    :cond_107
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_118

    .line 3043
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hidden_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3046
    :cond_118
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_129

    .line 3047
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3050
    :cond_129
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_13a

    .line 3051
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3054
    :cond_13a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_14b

    .line 3055
    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3058
    :cond_14b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_15c

    .line 3059
    const/16 v4, 0x13

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->firstEventTimestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3062
    :cond_15c
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedSerializedSize:I

    move v3, v2

    .line 3063
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_d
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object v0
.end method

.method public getUnreadCount()J
    .registers 3

    .prologue
    .line 2734
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->unreadCount_:J

    return-wide v0
.end method

.method public hasConversationClientId()Z
    .registers 3

    .prologue
    .line 2823
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasConversationMetadata()Z
    .registers 3

    .prologue
    .line 2855
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasCreatedAt()Z
    .registers 3

    .prologue
    .line 2793
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasFirstEventTimestamp()Z
    .registers 3

    .prologue
    .line 2875
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasHidden()Z
    .registers 3

    .prologue
    .line 2803
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2623
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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
    .line 2813
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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
    .line 2885
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasLastPreviewEvent()Z
    .registers 3

    .prologue
    .line 2865
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasMuted()Z
    .registers 3

    .prologue
    .line 2721
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 2689
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasNeedsAccept()Z
    .registers 3

    .prologue
    .line 2762
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public hasOffTheRecord()Z
    .registers 3

    .prologue
    .line 2665
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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
    .line 2655
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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
    .line 2731
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2913
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedIsInitialized:B

    .line 2914
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2917
    :goto_8
    return v1

    .line 2914
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2916
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3141
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .registers 2

    .prologue
    .line 3145
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3070
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2922
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getSerializedSize()I

    .line 2923
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 2924
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2926
    :cond_17
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 2927
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2929
    :cond_26
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_31

    .line 2930
    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->offTheRecord_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2932
    :cond_31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 2933
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2932
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 2935
    :cond_47
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_55

    .line 2936
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2938
    :cond_55
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_63

    .line 2939
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2941
    :cond_63
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_6e

    .line 2942
    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->muted_:Z

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2944
    :cond_6e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7d

    .line 2945
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->unreadCount_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2947
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_96

    .line 2948
    const/16 v2, 0xa

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->participant_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2947
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 2950
    :cond_96
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_a5

    .line 2951
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->needsAccept_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2953
    :cond_a5
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_b4

    .line 2954
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inviter_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2956
    :cond_b4
    const/4 v0, 0x0

    :goto_b5
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_cd

    .line 2957
    const/16 v2, 0xd

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->inactiveParticipant_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2956
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 2959
    :cond_cd
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_dc

    .line 2960
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->createdAt_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2962
    :cond_dc
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_eb

    .line 2963
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hidden_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2965
    :cond_eb
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_fa

    .line 2966
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2968
    :cond_fa
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_109

    .line 2969
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2971
    :cond_109
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_118

    .line 2972
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->lastPreviewEvent_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2974
    :cond_118
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_127

    .line 2975
    const/16 v1, 0x13

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->firstEventTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2977
    :cond_127
    return-void
.end method
