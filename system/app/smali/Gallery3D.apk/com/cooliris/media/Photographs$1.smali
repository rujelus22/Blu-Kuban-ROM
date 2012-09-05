.class Lcom/cooliris/media/Photographs$1;
.super Landroid/os/Handler;
.source "Photographs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Photographs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Photographs;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Photographs;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 76
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_60

    .line 100
    :goto_6
    return-void

    .line 78
    :pswitch_7
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    #getter for: Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cooliris/media/Photographs;->access$000(Lcom/cooliris/media/Photographs;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 79
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    #getter for: Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cooliris/media/Photographs;->access$000(Lcom/cooliris/media/Photographs;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 80
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    const/4 v3, 0x0

    #setter for: Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/cooliris/media/Photographs;->access$002(Lcom/cooliris/media/Photographs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 82
    :cond_1e
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    sget-object v3, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Lcom/cooliris/media/Photographs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 83
    .local v0, c:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    iget-object v3, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    #setter for: Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/cooliris/media/Photographs;->access$002(Lcom/cooliris/media/Photographs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_6

    .line 87
    .end local v0           #c:Ljava/lang/CharSequence;
    :pswitch_38
    invoke-static {}, Lcom/cooliris/media/Photographs;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.lockscreenwallpaper.CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "isChanged"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    invoke-virtual {v2, v1}, Lcom/cooliris/media/Photographs;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4f
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    #calls: Lcom/cooliris/media/Photographs;->closeProgressDialog()V
    invoke-static {v2}, Lcom/cooliris/media/Photographs;->access$200(Lcom/cooliris/media/Photographs;)V

    .line 93
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/cooliris/media/Photographs;->setResult(I)V

    .line 94
    iget-object v2, p0, Lcom/cooliris/media/Photographs$1;->this$0:Lcom/cooliris/media/Photographs;

    invoke-virtual {v2}, Lcom/cooliris/media/Photographs;->finish()V

    goto :goto_6

    .line 76
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_7
        :pswitch_38
    .end packed-switch
.end method
