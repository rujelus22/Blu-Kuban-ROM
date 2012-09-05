.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$7;
.super Landroid/os/Handler;
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
    .line 1289
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1292
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 1305
    :cond_8
    :goto_8
    return-void

    .line 1296
    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initProgress()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1700(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1800(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->changeMode(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1900(Lcom/sec/android/app/voicerecorder/VoiceListActivity;I)V

    goto :goto_8

    .line 1294
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
