.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;
.super Landroid/os/Handler;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1455
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_70

    .line 1489
    :cond_6
    :goto_6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1490
    return-void

    .line 1460
    :sswitch_a
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-class v3, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1461
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->finish()V

    goto :goto_6

    .line 1465
    :sswitch_1e
    :try_start_1e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->saveRecording()Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2f} :catch_43

    .line 1471
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-class v3, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1472
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->finish()V

    goto :goto_6

    .line 1468
    :catch_43
    move-exception v0

    .line 1469
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f

    .line 1475
    :sswitch_48
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_59

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iput-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    .line 1479
    :cond_59
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1302(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_6

    .line 1455
    :sswitch_data_70
    .sparse-switch
        0xfb4 -> :sswitch_48
        0xfd2 -> :sswitch_a
        0xfd3 -> :sswitch_a
        0xfd4 -> :sswitch_a
        0xfe6 -> :sswitch_a
        0xff0 -> :sswitch_1e
    .end sparse-switch
.end method
