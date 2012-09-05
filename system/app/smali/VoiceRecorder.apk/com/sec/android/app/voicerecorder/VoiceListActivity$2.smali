.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$2;
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
    .line 207
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_16

    .line 228
    :goto_5
    :sswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 229
    return-void

    .line 216
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    goto :goto_5

    .line 221
    :sswitch_f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolume()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    goto :goto_5

    .line 210
    nop

    :sswitch_data_16
    .sparse-switch
        0xfb4 -> :sswitch_5
        0xfd2 -> :sswitch_9
        0xfd3 -> :sswitch_9
        0xfd4 -> :sswitch_9
        0xfe6 -> :sswitch_9
        0xff0 -> :sswitch_9
        0xffa -> :sswitch_f
    .end sparse-switch
.end method
