.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "VoiceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1721
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1723
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1724
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolumeEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2400(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 1725
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolumeEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2400(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolume:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1726
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolumeEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2400(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolume:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1729
    :cond_34
    return-void
.end method
