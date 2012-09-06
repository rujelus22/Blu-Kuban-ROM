.class Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$1;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateStateChanged(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 195
    return-void
.end method
