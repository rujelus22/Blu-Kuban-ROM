.class Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;
.super Ljava/lang/Object;
.source "SelectVideoList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    iput-object p2, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->val$className:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkingCount(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    .line 98
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->mContext:Landroid/content/Context;

    const v1, 0x7f08000f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    :goto_1a
    return-void

    .line 100
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->val$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->val$className:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->finish()V

    goto :goto_1a
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "arg0"

    .prologue
    .line 65
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->makeSelecedItemUri()V
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$000(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)V

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 68
    const-string v3, "SelectVideoList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectedItemUri ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 71
    :cond_37
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    :try_start_41
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_73

    .line 76
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v4, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    :goto_65
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->val$className:Ljava/lang/String;

    #calls: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->checkAbleToSendMultiple(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$200(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 84
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->checkingCount(Landroid/content/Intent;)V

    .line 94
    :goto_72
    return-void

    .line 79
    :cond_73
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->selectedItemUri:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$100(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_83} :catch_84

    goto :goto_65

    .line 91
    :catch_84
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->finish()V

    goto :goto_72

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8b
    :try_start_8b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->val$className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->finish()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9c} :catch_84

    goto :goto_72
.end method
