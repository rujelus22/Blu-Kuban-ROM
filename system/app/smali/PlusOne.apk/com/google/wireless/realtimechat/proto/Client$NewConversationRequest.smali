.class public final Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewConversationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private conversationClientId_:Ljava/lang/Object;

.field private conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

.field private displayName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17307
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 17308
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->initFields()V

    .line 17309
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16308
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16504
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedIsInitialized:B

    .line 16545
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedSerializedSize:I

    .line 16309
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16310
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16504
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedIsInitialized:B

    .line 16545
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedSerializedSize:I

    .line 16310
    return-void
.end method

.method static synthetic access$22402(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object p1
.end method

.method static synthetic access$22502(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22600(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16303
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$22602(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$22702(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22802(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22900(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16303
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22902(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23002(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object p1
.end method

.method static synthetic access$23102(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->retry_:Z

    return p1
.end method

.method static synthetic access$23202(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object p1
.end method

.method static synthetic access$23302(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16303
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    return p1
.end method

.method private getConversationClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16353
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationClientId_:Ljava/lang/Object;

    .line 16354
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16355
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16357
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationClientId_:Ljava/lang/Object;

    .line 16360
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 1

    .prologue
    .line 16314
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16431
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->displayName_:Ljava/lang/Object;

    .line 16432
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16433
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16435
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->displayName_:Ljava/lang/Object;

    .line 16438
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

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16399
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->senderId_:Ljava/lang/Object;

    .line 16400
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16401
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16403
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->senderId_:Ljava/lang/Object;

    .line 16406
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
    .line 16494
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    .line 16495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationClientId_:Ljava/lang/Object;

    .line 16496
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 16497
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->senderId_:Ljava/lang/Object;

    .line 16498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->displayName_:Ljava/lang/Object;

    .line 16499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    .line 16500
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 16501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->retry_:Z

    .line 16502
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 16503
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 1

    .prologue
    .line 16670
    #calls: Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->access$22200()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16673
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 16470
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getConversationClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16339
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationClientId_:Ljava/lang/Object;

    .line 16340
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16341
    check-cast v1, Ljava/lang/String;

    .line 16349
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16343
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16345
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16346
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16347
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16349
    goto :goto_8
.end method

.method public getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2

    .prologue
    .line 16490
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16303
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 16318
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16417
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->displayName_:Ljava/lang/Object;

    .line 16418
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16419
    check-cast v1, Ljava/lang/String;

    .line 16427
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16421
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16423
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16424
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16425
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->displayName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16427
    goto :goto_8
.end method

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 16456
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 16453
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 16375
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantIdCount()I
    .registers 2

    .prologue
    .line 16372
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

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
    .line 16369
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

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
    .line 16446
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getParticipantOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 16460
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

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
    .line 16450
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getRetry()Z
    .registers 2

    .prologue
    .line 16480
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->retry_:Z

    return v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16385
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->senderId_:Ljava/lang/Object;

    .line 16386
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16387
    check-cast v1, Ljava/lang/String;

    .line 16395
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16389
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16391
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16392
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16393
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16395
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 16547
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedSerializedSize:I

    .line 16548
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    move v3, v2

    .line 16593
    .end local v2           #size:I
    .local v3, size:I
    :goto_b
    return v3

    .line 16550
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_c
    const/4 v2, 0x0

    .line 16551
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1e

    .line 16552
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 16555
    :cond_1e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2d

    .line 16556
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16560
    :cond_2d
    const/4 v0, 0x0

    .line 16561
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_45

    .line 16562
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 16561
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 16565
    :cond_45
    add-int/2addr v2, v0

    .line 16566
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getParticipantIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 16568
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_60

    .line 16569
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16572
    :cond_60
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_70

    .line 16573
    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16576
    :cond_70
    const/4 v1, 0x0

    :goto_71
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8a

    .line 16577
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16576
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 16580
    :cond_8a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_9a

    .line 16581
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16584
    :cond_9a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a9

    .line 16585
    iget-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->retry_:Z

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16588
    :cond_a9
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_ba

    .line 16589
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16592
    :cond_ba
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 16593
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_b
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
    .registers 2

    .prologue
    .line 16329
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    .line 16467
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

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

.method public hasConversationClientId()Z
    .registers 3

    .prologue
    .line 16336
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

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
    .line 16487
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

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

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 16414
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

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

.method public hasRetry()Z
    .registers 3

    .prologue
    .line 16477
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 16382
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

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
    const/4 v0, 0x1

    .line 16326
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

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

    .line 16506
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedIsInitialized:B

    .line 16507
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 16510
    :goto_8
    return v1

    .line 16507
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 16509
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 16600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 16515
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getSerializedSize()I

    .line 16516
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 16517
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->type_:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16519
    :cond_17
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 16520
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16522
    :cond_24
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 16523
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16522
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 16525
    :cond_3a
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_47

    .line 16526
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16528
    :cond_47
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_55

    .line 16529
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16531
    :cond_55
    const/4 v0, 0x0

    :goto_56
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 16532
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->participant_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16531
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 16534
    :cond_6d
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7b

    .line 16535
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16537
    :cond_7b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_88

    .line 16538
    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->retry_:Z

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16540
    :cond_88
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_97

    .line 16541
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->conversationMetadata_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16543
    :cond_97
    return-void
.end method
