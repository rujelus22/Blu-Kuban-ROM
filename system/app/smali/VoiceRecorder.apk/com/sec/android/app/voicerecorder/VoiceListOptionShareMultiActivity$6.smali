.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;
.super Landroid/os/Handler;
.source "VoiceListOptionShareMultiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5d

    packed-switch v0, :pswitch_data_80

    .line 440
    :goto_6
    monitor-exit p0

    return-void

    .line 409
    :pswitch_8
    :try_start_8
    const-string v0, "VoiceListOptionShareMultiActivity"

    const-string v1, "ShareFiles : handleMessage - SHOW_PROGRESS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$802(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5d

    goto :goto_6

    .line 407
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :pswitch_60
    :try_start_60
    const-string v0, "VoiceListOptionShareMultiActivity"

    const-string v1, "ShareFiles : handleMessage - FINISH_PROGRESS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->closeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    goto :goto_6

    .line 432
    :pswitch_72
    const-string v0, "VoiceListOptionShareMultiActivity"

    const-string v1, "ShareFiles : handleMessage - ABORT_PROGRESS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->closeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_5d

    goto :goto_6

    .line 407
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_8
        :pswitch_60
        :pswitch_72
    .end packed-switch
.end method
