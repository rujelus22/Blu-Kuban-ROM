.class Lcom/sec/android/app/music/TrackBrowserActivity$31;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2194
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 2197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_84

    .line 2220
    :cond_5
    :goto_5
    return-void

    .line 2199
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 2200
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2002(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2201
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2203
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5

    .line 2206
    :pswitch_36
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2207
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_5

    .line 2211
    :pswitch_54
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_7a

    .line 2212
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2002(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2213
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2215
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$31;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5

    .line 2197
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6
        :pswitch_36
        :pswitch_54
    .end packed-switch
.end method
