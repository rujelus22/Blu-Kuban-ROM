.class Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$2;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 228
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$2;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 231
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$2;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    .line 232
    .local v0, label:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v0, :cond_1f

    .line 233
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$2;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/UnreadNotifier;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$2;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$300(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/UnreadNotifier;->onLabelOpenedByUser(Ljava/lang/String;Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    .line 235
    :cond_1f
    return-void
.end method
