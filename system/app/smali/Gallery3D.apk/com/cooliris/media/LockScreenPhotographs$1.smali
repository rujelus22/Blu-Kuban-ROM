.class Lcom/cooliris/media/LockScreenPhotographs$1;
.super Landroid/os/Handler;
.source "LockScreenPhotographs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/LockScreenPhotographs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/LockScreenPhotographs;


# direct methods
.method constructor <init>(Lcom/cooliris/media/LockScreenPhotographs;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 68
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_58

    .line 105
    :goto_6
    return-void

    .line 71
    :pswitch_7
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    #getter for: Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cooliris/media/LockScreenPhotographs;->access$000(Lcom/cooliris/media/LockScreenPhotographs;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 72
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    #getter for: Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cooliris/media/LockScreenPhotographs;->access$000(Lcom/cooliris/media/LockScreenPhotographs;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    const/4 v3, 0x0

    #setter for: Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/cooliris/media/LockScreenPhotographs;->access$002(Lcom/cooliris/media/LockScreenPhotographs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 77
    :cond_1e
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Lcom/cooliris/media/LockScreenPhotographs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    .local v0, c:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    iget-object v3, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    #setter for: Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/cooliris/media/LockScreenPhotographs;->access$002(Lcom/cooliris/media/LockScreenPhotographs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_6

    .line 84
    .end local v0           #c:Ljava/lang/CharSequence;
    :pswitch_36
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.lockscreenwallpaper.CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "isChanged"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    invoke-virtual {v2, v1}, Lcom/cooliris/media/LockScreenPhotographs;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    #calls: Lcom/cooliris/media/LockScreenPhotographs;->closeProgressDialog()V
    invoke-static {v2}, Lcom/cooliris/media/LockScreenPhotographs;->access$100(Lcom/cooliris/media/LockScreenPhotographs;)V

    .line 97
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/cooliris/media/LockScreenPhotographs;->setResult(I)V

    .line 98
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs$1;->this$0:Lcom/cooliris/media/LockScreenPhotographs;

    invoke-virtual {v2}, Lcom/cooliris/media/LockScreenPhotographs;->finish()V

    goto :goto_6

    .line 68
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_7
        :pswitch_36
    .end packed-switch
.end method
