.class Lcom/sec/android/app/videoplayer/view/VideoListView$12;
.super Landroid/os/Handler;
.source "VideoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1083
    monitor-enter p0

    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_67

    packed-switch v1, :pswitch_data_c6

    .line 1120
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 1085
    :pswitch_8
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "VideoListView"

    const-string v2, "mProgressHandler - SHOW_PROGRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1702(Lcom/sec/android/app/videoplayer/view/VideoListView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1088
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1090
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1091
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView$12$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$12$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView$12;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1097
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_66
    .catchall {:try_start_8 .. :try_end_66} :catchall_67

    goto :goto_6

    .line 1083
    :catchall_67
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1102
    :pswitch_6a
    :try_start_6a
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "VideoListView"

    const-string v2, "mProgressHandler - FINISH_PROGRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_77
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08003b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1104
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    .line 1105
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6

    .line 1110
    :pswitch_9a
    const-string v1, "VideoListView"

    const-string v2, "mProgressHandler - ABORT_PROGRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    .line 1113
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, errorMsg:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 1116
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_c3
    .catchall {:try_start_6a .. :try_end_c3} :catchall_67

    goto/16 :goto_6

    .line 1083
    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6a
        :pswitch_9a
    .end packed-switch
.end method
