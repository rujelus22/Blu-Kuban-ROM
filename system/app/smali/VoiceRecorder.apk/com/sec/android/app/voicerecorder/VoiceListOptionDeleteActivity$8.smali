.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;
.super Landroid/os/Handler;
.source "VoiceListOptionDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5d

    packed-switch v0, :pswitch_data_8a

    .line 394
    :goto_6
    monitor-exit p0

    return-void

    .line 361
    :pswitch_8
    :try_start_8
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "DeleteFiles : handleMessage - SHOW_PROGRESS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$802(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5d

    goto :goto_6

    .line 359
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :pswitch_60
    :try_start_60
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "DeleteFiles : handleMessage - FINISH_PROGRESS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->closeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    goto :goto_6

    .line 385
    :pswitch_72
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "DeleteFiles : handleMessage - ABORT_PROGRESS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->closeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    const v1, 0x7f060036

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V
    :try_end_87
    .catchall {:try_start_60 .. :try_end_87} :catchall_5d

    goto/16 :goto_6

    .line 359
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_60
        :pswitch_72
    .end packed-switch
.end method
