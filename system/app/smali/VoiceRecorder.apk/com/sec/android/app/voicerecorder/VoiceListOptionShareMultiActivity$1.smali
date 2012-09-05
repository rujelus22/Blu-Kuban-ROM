.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$1;
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
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_14

    .line 172
    :goto_5
    :sswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 173
    return-void

    .line 162
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->closeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    goto :goto_5

    .line 153
    :sswitch_data_14
    .sparse-switch
        0xfb4 -> :sswitch_5
        0xfd2 -> :sswitch_9
        0xfd3 -> :sswitch_9
        0xfd4 -> :sswitch_9
        0xfe6 -> :sswitch_9
        0xff0 -> :sswitch_9
        0xff5 -> :sswitch_9
        0xff6 -> :sswitch_9
        0xfff -> :sswitch_9
    .end sparse-switch
.end method
