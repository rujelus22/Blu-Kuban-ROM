.class Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;
.super Ljava/lang/Object;
.source "SelectVideoFolderList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    iput-object p2, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->val$className:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkingCount(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    .line 130
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->mContext:Landroid/content/Context;

    const v1, 0x7f08000f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    :goto_1a
    return-void

    .line 134
    :cond_1b
    const-string v0, "com.sec.android.app.dlna"

    const-string v1, "com.sec.android.app.dlna.ui.AddinActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->startActivity(Landroid/content/Intent;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    goto :goto_1a
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "arg0"

    .prologue
    .line 78
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #calls: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->makeSelecedItemUri()V
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$000(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)V

    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 81
    const-string v3, "SelectVideoList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectedItemUri ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    :cond_37
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :try_start_41
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_85

    .line 90
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v4, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    :goto_65
    const-string v3, "Bluetooth"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->from:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 99
    const-string v3, "com.android.bluetooth"

    const-string v4, "com.broadcom.bt.app.opp.OppLauncherActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    .line 125
    :cond_84
    :goto_84
    return-void

    .line 93
    :cond_85
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_95} :catch_96

    goto :goto_65

    .line 122
    :catch_96
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    goto :goto_84

    .line 102
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9d
    :try_start_9d
    const-string v3, "Email"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->from:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 103
    const-string v3, "com.android.email"

    const-string v4, "com.android.email.activity.MessageCompose"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    goto :goto_84

    .line 106
    :cond_bd
    const-string v3, "YouTube"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->from:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 107
    const-string v3, "com.google.android.apps.uploader"

    const-string v4, "com.google.android.apps.uploader.clients.youtube.YouTubeSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    goto :goto_84

    .line 110
    :cond_dd
    const-string v3, "Gmail"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->from:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 111
    const-string v3, "com.google.android.gm"

    const-string v4, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    goto :goto_84

    .line 114
    :cond_fd
    const-string v3, "MMS"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->from:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 115
    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationList"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->finish()V

    goto/16 :goto_84

    .line 119
    :cond_11e
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->val$className:Ljava/lang/String;

    #calls: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->checkAbleToSendMultiple(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$300(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 120
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$1;->checkingCount(Landroid/content/Intent;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_12b} :catch_96

    goto/16 :goto_84
.end method
