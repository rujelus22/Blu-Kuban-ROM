.class Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;
.super Landroid/os/Handler;
.source "LabelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/LabelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/LabelListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/LabelListActivity;Lcom/google/android/apps/googlevoice/LabelListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;-><init>(Lcom/google/android/apps/googlevoice/LabelListActivity;)V

    return-void
.end method

.method private refreshView()V
    .registers 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    new-instance v1, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LabelListActivity;->labels:[Lcom/google/android/apps/googlevoice/core/Label;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LabelListActivity;->access$100(Lcom/google/android/apps/googlevoice/LabelListActivity;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;-><init>(Landroid/content/Context;[Lcom/google/android/apps/googlevoice/core/Label;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/LabelListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LabelListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->access$300(Lcom/google/android/apps/googlevoice/LabelListActivity;)Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->gv_title_bar_icon:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setLeftIconDrawableResource(Landroid/app/Activity;I)V

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LabelListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->access$300(Lcom/google/android/apps/googlevoice/LabelListActivity;)Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/LabelListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 218
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "message"

    .prologue
    const/high16 v4, 0x400

    .line 168
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_1e

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 172
    :cond_1e
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_a0

    .line 208
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

    .line 210
    :goto_3b
    return-void

    .line 174
    :sswitch_3c
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    const-class v3, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v3, "inbox"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3b

    .line 182
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_55
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->refreshView()V

    goto :goto_3b

    .line 186
    :sswitch_59
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LabelListActivity;->labels:[Lcom/google/android/apps/googlevoice/core/Label;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LabelListActivity;->access$100(Lcom/google/android/apps/googlevoice/LabelListActivity;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, label:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    const-class v3, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/LabelListActivity;->finish()V

    goto :goto_3b

    .line 196
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #label:Ljava/lang/String;
    :sswitch_83
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LabelListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LabelListActivity;->access$200(Lcom/google/android/apps/googlevoice/LabelListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    goto :goto_3b

    .line 200
    :sswitch_91
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/LabelListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_3b

    .line 204
    :sswitch_98
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;->this$0:Lcom/google/android/apps/googlevoice/LabelListActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/LabelListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_3b

    .line 172
    nop

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_55
        0x1 -> :sswitch_59
        0x2 -> :sswitch_91
        0x3 -> :sswitch_98
        0xa -> :sswitch_83
        0x102002c -> :sswitch_3c
    .end sparse-switch
.end method
