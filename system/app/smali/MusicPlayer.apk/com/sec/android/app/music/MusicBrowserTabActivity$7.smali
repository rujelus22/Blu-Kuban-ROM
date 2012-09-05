.class Lcom/sec/android/app/music/MusicBrowserTabActivity$7;
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
    .line 347
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 350
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentChangedListenHandler what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_da

    .line 395
    :goto_23
    return-void

    .line 353
    :pswitch_24
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1008(Lcom/sec/android/app/music/MusicBrowserTabActivity;)I

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNumberOfContentChangedCalled:I
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1000(Lcom/sec/android/app/music/MusicBrowserTabActivity;)I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_5e

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mStart:Z
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_73

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const-string v3, ""

    iget-object v4, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const v5, 0x7f090081

    invoke-virtual {v4, v5}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    #setter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$602(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 370
    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->setAutoReQuery(Z)V
    invoke-static {v1, v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1200(Lcom/sec/android/app/music/MusicBrowserTabActivity;Z)V

    .line 372
    :cond_5e
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mContentChangedListenHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mContentChangedListenHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_23

    .line 363
    :cond_73
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mStart:Z
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_59

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_59

    .line 377
    :pswitch_91
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 380
    :try_start_a5
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a5 .. :try_end_ae} :catch_ba

    .line 389
    :cond_ae
    :goto_ae
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->setAutoReQuery(Z)V
    invoke-static {v1, v6}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1200(Lcom/sec/android/app/music/MusicBrowserTabActivity;Z)V

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #setter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNumberOfContentChangedCalled:I
    invoke-static {v1, v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1002(Lcom/sec/android/app/music/MusicBrowserTabActivity;I)I

    goto/16 :goto_23

    .line 381
    :catch_ba
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentChangedListenHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 351
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_24
        :pswitch_91
    .end packed-switch
.end method
