.class Lcom/sec/android/app/music/TrackListView$2;
.super Landroid/os/Handler;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackListView;)V
    .registers 2
    .parameter

    .prologue
    .line 899
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0900e9

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 902
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHandler.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e8

    .line 942
    :cond_2d
    :goto_2d
    return-void

    .line 905
    :pswitch_2e
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$300(Lcom/sec/android/app/music/TrackListView;)I

    move-result v0

    if-le v0, v4, :cond_2d

    .line 906
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrmErrorListener aquiring pop up is dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iput-object v6, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    goto :goto_2d

    .line 915
    :pswitch_5b
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #setter for: Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I
    invoke-static {v0, v3}, Lcom/sec/android/app/music/TrackListView;->access$302(Lcom/sec/android/app/music/TrackListView;I)I

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mWmDrmPosition:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$400(Lcom/sec/android/app/music/TrackListView;)I

    move-result v1

    #calls: Lcom/sec/android/app/music/TrackListView;->startMusicActivity(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/music/TrackListView;->access$500(Lcom/sec/android/app/music/TrackListView;I)V

    .line 917
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrmEventListener aquiring pop up is dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iput-object v6, v0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    goto :goto_2d

    .line 925
    :pswitch_90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$300(Lcom/sec/android/app/music/TrackListView;)I

    move-result v0

    if-gt v0, v4, :cond_a4

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mWmDrmPosition:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$400(Lcom/sec/android/app/music/TrackListView;)I

    move-result v1

    #calls: Lcom/sec/android/app/music/TrackListView;->startMusicActivity(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/music/TrackListView;->access$500(Lcom/sec/android/app/music/TrackListView;I)V

    goto :goto_2d

    .line 928
    :cond_a4
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #setter for: Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I
    invoke-static {v0, v3}, Lcom/sec/android/app/music/TrackListView;->access$302(Lcom/sec/android/app/music/TrackListView;I)I

    .line 930
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACQUIRE_RIGHT_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$600(Lcom/sec/android/app/music/TrackListView;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$600(Lcom/sec/android/app/music/TrackListView;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setText(I)V

    .line 938
    :goto_c3
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$600(Lcom/sec/android/app/music/TrackListView;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d

    .line 934
    :cond_ce
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$700(Lcom/sec/android/app/music/TrackListView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView$2;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$800(Lcom/sec/android/app/music/TrackListView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/TrackListView;->access$602(Lcom/sec/android/app/music/TrackListView;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_c3

    .line 903
    :pswitch_data_e8
    .packed-switch 0x28
        :pswitch_2e
        :pswitch_5b
        :pswitch_90
    .end packed-switch
.end method
