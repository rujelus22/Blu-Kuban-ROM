.class Lcom/sec/android/app/music/MusicBrowserTabActivity$3;
.super Landroid/os/Handler;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 242
    :cond_5
    :goto_5
    return-void

    .line 227
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$602(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5

    .line 234
    :pswitch_36
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_5

    .line 225
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_6
        :pswitch_36
    .end packed-switch
.end method
