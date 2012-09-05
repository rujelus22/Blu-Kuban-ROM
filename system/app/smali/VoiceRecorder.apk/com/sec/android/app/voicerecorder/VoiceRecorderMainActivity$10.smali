.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->registerRecordStateListener()V
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
    .line 1419
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1423
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.notification.voicerecordcommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1424
    const-string v2, "command"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1425
    .local v0, command:I
    const/16 v2, 0xb

    if-eq v0, v2, :cond_1b

    const/16 v2, 0xc

    if-ne v0, v2, :cond_39

    .line 1426
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v2, v2, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_28

    .line 1427
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v2, v2, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1429
    :cond_28
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1430
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1438
    .end local v0           #command:I
    :cond_39
    :goto_39
    return-void

    .line 1435
    :catch_3a
    move-exception v1

    .line 1436
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "VoiceRecorderMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method
