.class Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->access$000(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 102
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "LongClick"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    .local v1, fromLongclick:Z
    const-string v6, "SendAppListDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mShareListener fromLongclick "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz v1, :cond_a0

    .line 106
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 107
    .local v5, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string v6, "video/*"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->access$100(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 111
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 118
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_58

    .line 121
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_91
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->access$200(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->finish()V

    .line 141
    .end local v5           #uri:Landroid/net/Uri;
    :goto_9f
    return-void

    .line 124
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_a0
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->access$200(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v6, "bucket_id"

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "bucket_id"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->access$100(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_c9
    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_104

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 127
    .restart local v3       #info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 134
    const-string v6, "name"

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v6, "packageName"

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c9

    .line 138
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_104
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->access$200(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->finish()V

    goto :goto_9f
.end method
