.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/NullConversationListProvider;
.super Ljava/lang/Object;
.source "NullConversationListProvider.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;


# instance fields
.field private final label:Lcom/google/android/apps/googlevoice/core/Label;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Label;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/Label;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/NullConversationListProvider;->label:Lcom/google/android/apps/googlevoice/core/Label;

    .line 22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/NullConversationListProvider;->label:Lcom/google/android/apps/googlevoice/core/Label;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Label;->setLabel(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getEmptyMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, ""

    return-object v0
.end method

.method public getLabel()Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/NullConversationListProvider;->label:Lcom/google/android/apps/googlevoice/core/Label;

    return-object v0
.end method

.method public getProgressMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, ""

    return-object v0
.end method

.method public getRequestStarted()J
    .registers 3

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    return-object v0
.end method

.method public markConversationAsRead(Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 4
    .parameter "localModelView"
    .parameter "conversation"
    .parameter "markRead"

    .prologue
    .line 43
    return-void
.end method

.method public noteUpdateStateFailedShown()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public processResponse()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public reloadConversationList(Landroid/os/Message;II)V
    .registers 4
    .parameter "onComplete"
    .parameter "offset"
    .parameter "limit"

    .prologue
    .line 56
    return-void
.end method
