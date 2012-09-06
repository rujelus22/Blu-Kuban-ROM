.class public Lcom/google/android/apps/googlevoice/UpdateTaskLite;
.super Ljava/lang/Object;
.source "UpdateTaskLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/UpdateTaskLite$1;,
        Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;
    }
.end annotation


# static fields
.field private static final ID_INBOX_FETCH:I = 0x64

.field private static final LABELS_TO_FETCH:[Ljava/lang/String; = null

.field private static final NUM_CONVERSATIONS_TO_FETCH:I = 0xa


# instance fields
.field private final handler:Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "inbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->LABELS_TO_FETCH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;)V
    .registers 5
    .parameter "voiceModel"
    .parameter "voiceService"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 33
    new-instance v0, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;-><init>(Lcom/google/android/apps/googlevoice/UpdateTaskLite;Lcom/google/android/apps/googlevoice/UpdateTaskLite$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->handler:Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/UpdateTaskLite;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->notifyOnFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/UpdateTaskLite;[Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->updateModel([Lcom/google/android/apps/googlevoice/core/Conversation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/UpdateTaskLite;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->notifyOnSuccess()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->logCheckinMessage(Ljava/lang/String;)V

    return-void
.end method

.method private fetchNewConversations()V
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createListConversationsRpc()Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-result-object v0

    .line 46
    .local v0, listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;
    sget-object v1, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->LABELS_TO_FETCH:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLabels([Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setOffset(I)V

    .line 48
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLimit(I)V

    .line 49
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setWantTranscript(Z)V

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->handler:Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->submit(Landroid/os/Message;)V

    .line 51
    return-void
.end method

.method private static logCheckinMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 117
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private notifyOnFailure(Ljava/lang/Exception;)V
    .registers 6
    .parameter "exception"

    .prologue
    .line 78
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 79
    const-string v0, "UpdateTaskLite: ListConversationRequest failed."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 81
    :cond_9
    const-string v0, "UTL: Inbox fetch failed %s. (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->logCheckinMessage(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateException(Ljava/lang/Exception;)V

    .line 84
    return-void
.end method

.method private notifyOnSuccess()V
    .registers 2

    .prologue
    .line 70
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 71
    const-string v0, "UpdateTaskLite: ListConversationRequest Successful."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 73
    :cond_9
    const-string v0, "UTL: Inbox fetch succesful."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->logCheckinMessage(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateCompleted()V

    .line 75
    return-void
.end method

.method private notifyStarted()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateStarted()V

    .line 67
    return-void
.end method

.method private updateModel([Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 11
    .parameter "conversations"

    .prologue
    .line 54
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, p1

    if-ge v4, v7, :cond_27

    .line 55
    aget-object v3, p1, v4

    .line 56
    .local v3, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    .line 57
    .local v2, calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    move-object v0, v2

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_d
    if-ge v5, v6, :cond_21

    aget-object v1, v0, v5

    .line 58
    .local v1, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 60
    .end local v1           #call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_21
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->refreshContactInfo()V

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v2           #calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v3           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_27
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v7, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 63
    return-void
.end method


# virtual methods
.method public schedule()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->notifyStarted()V

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->fetchNewConversations()V

    .line 42
    return-void
.end method
