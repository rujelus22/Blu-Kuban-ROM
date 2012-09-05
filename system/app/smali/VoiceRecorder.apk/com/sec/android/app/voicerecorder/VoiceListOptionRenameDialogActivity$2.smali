.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$2;
.super Landroid/os/Handler;
.source "VoiceListOptionRenameDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_10

    .line 150
    :goto_5
    :sswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 151
    return-void

    .line 141
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->finish()V

    goto :goto_5

    .line 134
    nop

    :sswitch_data_10
    .sparse-switch
        0xfb4 -> :sswitch_5
        0xfd2 -> :sswitch_9
        0xfd3 -> :sswitch_9
        0xfd4 -> :sswitch_9
        0xfe6 -> :sswitch_9
        0xff0 -> :sswitch_9
        0xfff -> :sswitch_9
    .end sparse-switch
.end method
