.class Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;
.super Ljava/lang/Object;
.source "ConversationArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->initializeConversationView(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

.field final synthetic val$conversation:Lcom/google/android/apps/googlevoice/core/Conversation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->val$conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->val$conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isStarred()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->access$000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->val$conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 209
    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->access$100(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;)Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->notifyDataSetChanged()V

    .line 211
    return-void

    .line 207
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->access$000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;->val$conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    goto :goto_14
.end method
