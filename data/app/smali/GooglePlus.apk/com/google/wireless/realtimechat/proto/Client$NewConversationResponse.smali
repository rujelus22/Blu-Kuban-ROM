.class public final Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewConversationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field private conversationClientId_:Ljava/lang/Object;

.field private inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18400
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 18401
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->initFields()V

    .line 18402
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17361
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17579
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedIsInitialized:B

    .line 17620
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedSerializedSize:I

    .line 17362
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17363
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17579
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedIsInitialized:B

    .line 17620
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedSerializedSize:I

    .line 17363
    return-void
.end method

.method static synthetic access$23702(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$23802(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->conversationClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23902(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object p1
.end method

.method static synthetic access$24002(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24100(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17356
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24102(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$24202(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object p1
.end method

.method static synthetic access$24302(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    return-object p1
.end method

.method static synthetic access$24402(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object p1
.end method

.method static synthetic access$24500(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17356
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$24502(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17356
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    return p1
.end method

.method private getConversationClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17450
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->conversationClientId_:Ljava/lang/Object;

    .line 17451
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17452
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17454
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->conversationClientId_:Ljava/lang/Object;

    .line 17457
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 1

    .prologue
    .line 17367
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17492
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->senderId_:Ljava/lang/Object;

    .line 17493
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17494
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17496
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->senderId_:Ljava/lang/Object;

    .line 17499
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
    .registers 2

    .prologue
    .line 17569
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 17570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->conversationClientId_:Ljava/lang/Object;

    .line 17571
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 17572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->senderId_:Ljava/lang/Object;

    .line 17573
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    .line 17574
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 17575
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 17576
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 17577
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 17578
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 1

    .prologue
    .line 17745
    #calls: Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->access$23500()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17748
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 17468
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public getConversationClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17436
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->conversationClientId_:Ljava/lang/Object;

    .line 17437
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17438
    check-cast v1, Ljava/lang/String;

    .line 17446
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17440
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17442
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17443
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17444
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->conversationClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17446
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17356
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 17371
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method public getInviteType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    .registers 2

    .prologue
    .line 17541
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    return-object v0
.end method

.method public getParticipantError(I)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 3
    .parameter "index"

    .prologue
    .line 17517
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method public getParticipantErrorCount()I
    .registers 2

    .prologue
    .line 17514
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

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
    .line 17507
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    return-object v0
.end method

.method public getParticipantErrorOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 17521
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;

    return-object v0
.end method

.method public getParticipantErrorOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17511
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 17531
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getRecentMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 17565
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 17562
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

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
    .line 17559
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17478
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->senderId_:Ljava/lang/Object;

    .line 17479
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17480
    check-cast v1, Ljava/lang/String;

    .line 17488
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17482
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17484
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17485
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17486
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17488
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 17622
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedSerializedSize:I

    .line 17623
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    move v3, v2

    .line 17668
    .end local v2           #size:I
    .local v3, size:I
    :goto_a
    return v3

    .line 17625
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_b
    const/4 v2, 0x0

    .line 17626
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1d

    .line 17627
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17630
    :cond_1d
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2e

    .line 17631
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17634
    :cond_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v6, :cond_3b

    .line 17635
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17638
    :cond_3b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v7, :cond_4b

    .line 17639
    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17643
    :cond_4b
    const/4 v0, 0x0

    .line 17644
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4d
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_63

    .line 17645
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 17644
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 17648
    :cond_63
    add-int/2addr v2, v0

    .line 17649
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getRecipientIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 17651
    const/4 v1, 0x0

    :goto_70
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_88

    .line 17652
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17651
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 17655
    :cond_88
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_99

    .line 17656
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17659
    :cond_99
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_ae

    .line 17660
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17663
    :cond_ae
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_bf

    .line 17664
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17667
    :cond_bf
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 17668
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_a
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 17426
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasClientConversation()Z
    .registers 3

    .prologue
    .line 17465
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

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
    .line 17433
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

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
    .line 17538
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

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

.method public hasReceipt()Z
    .registers 3

    .prologue
    .line 17528
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

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

.method public hasRecentMessage()Z
    .registers 3

    .prologue
    .line 17548
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 17475
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

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

    .line 17423
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 17581
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedIsInitialized:B

    .line 17582
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 17585
    :goto_8
    return v1

    .line 17582
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 17584
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17356
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 17746
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17356
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    .registers 2

    .prologue
    .line 17750
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

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
    .line 17675
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 17590
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getSerializedSize()I

    .line 17591
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 17592
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17594
    :cond_16
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 17595
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17597
    :cond_25
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_30

    .line 17598
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->clientConversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17600
    :cond_30
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_3e

    .line 17601
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17603
    :cond_3e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 17604
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17603
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 17606
    :cond_54
    const/4 v0, 0x0

    :goto_55
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 17607
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->participantError_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17606
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 17609
    :cond_6b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7a

    .line 17610
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17612
    :cond_7a
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8d

    .line 17613
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->inviteType_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17615
    :cond_8d
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9c

    .line 17616
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->recentMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17618
    :cond_9c
    return-void
.end method
