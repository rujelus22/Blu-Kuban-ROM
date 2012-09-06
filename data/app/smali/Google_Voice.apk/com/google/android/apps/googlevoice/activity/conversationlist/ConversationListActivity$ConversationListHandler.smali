.class Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "ConversationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "message"

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 941
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1100(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/IdNumberHelper;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->getNameForValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 943
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1d8

    .line 1031
    :pswitch_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled event id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 1033
    :cond_55
    :goto_55
    return-void

    .line 945
    :pswitch_56
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatus()V

    goto :goto_55

    .line 949
    :pswitch_5c
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateView()V

    goto :goto_55

    .line 953
    :pswitch_62
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1300(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->refreshMenuItem:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V

    goto :goto_55

    .line 958
    :pswitch_74
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1300(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->refreshMenuItem:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v2, v3, v4, v7}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V

    goto :goto_55

    .line 963
    :pswitch_86
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1300(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->refreshMenuItem:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v2, v3, v4, v7}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V

    .line 965
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getStatusType()Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->NONE:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    if-eq v2, v3, :cond_55

    .line 966
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->ERROR:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_network_error:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->setStatus(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;Ljava/lang/String;)V

    goto :goto_55

    .line 972
    :pswitch_bd
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v1

    .line 973
    .local v1, label:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversationCount()I

    move-result v3

    if-le v2, v3, :cond_55

    .line 974
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_117

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label.getTotalCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter.getConversationCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversationCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 978
    :cond_117
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_55

    .line 984
    .end local v1           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :pswitch_11d
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1500(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto/16 :goto_55

    .line 990
    :pswitch_134
    invoke-virtual {p0, v8}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_55

    .line 994
    :pswitch_139
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->ERROR:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_network_error:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->setStatus(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryScroll:Z
    invoke-static {v2, v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1602(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Z)Z

    .line 997
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1500(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    invoke-virtual {p0, v9}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v9}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V

    goto/16 :goto_55

    .line 1004
    :pswitch_168
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversationCount()I

    move-result v4

    invoke-interface {v2, v3, v4, v8}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->reloadConversationList(Landroid/os/Message;II)V

    goto/16 :goto_55

    .line 1009
    :pswitch_183
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->processResponse()V

    .line 1010
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateView()V

    goto/16 :goto_55

    .line 1014
    :pswitch_193
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->authenticating:Z
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1700(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 1015
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #setter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->authenticating:Z
    invoke-static {v2, v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1702(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Z)Z

    .line 1016
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1500(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    const/16 v4, 0x15

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->authenticate(Landroid/app/Activity;I)V

    goto/16 :goto_55

    .line 1022
    :pswitch_1af
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1900(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/DndBarView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1800(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    goto/16 :goto_55

    .line 1026
    :pswitch_1c0
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$1800(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    .line 1027
    .local v0, forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->access$2000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;->placeClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;)V

    goto/16 :goto_55

    .line 943
    nop

    :pswitch_data_1d8
    .packed-switch 0x1
        :pswitch_56
        :pswitch_5c
        :pswitch_62
        :pswitch_74
        :pswitch_86
        :pswitch_bd
        :pswitch_11d
        :pswitch_134
        :pswitch_139
        :pswitch_168
        :pswitch_183
        :pswitch_1c0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_193
        :pswitch_3d
        :pswitch_1af
    .end packed-switch
.end method
