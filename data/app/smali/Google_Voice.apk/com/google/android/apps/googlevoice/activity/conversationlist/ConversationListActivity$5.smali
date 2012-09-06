.class Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;


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
    .line 283
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 6
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 286
    if-nez p1, :cond_4

    .line 288
    const/4 v1, 0x0

    .line 300
    :goto_3
    return v1

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_17

    .line 292
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startLabelListActivity()V
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$700(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    .line 300
    :cond_15
    :goto_15
    const/4 v1, 0x1

    goto :goto_3

    .line 293
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$800(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_15

    .line 295
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, selectedLabelName:Ljava/lang/String;
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$800(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 297
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startConversationListActivity(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$900(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Ljava/lang/String;)V

    goto :goto_15
.end method
