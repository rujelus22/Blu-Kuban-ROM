.class Lcom/sec/android/app/voicerecorder/SettingsActivity$2;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_10

    .line 143
    :goto_5
    :sswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    return-void

    .line 134
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->finish()V

    goto :goto_5

    .line 128
    nop

    :sswitch_data_10
    .sparse-switch
        0xfb4 -> :sswitch_5
        0xfd2 -> :sswitch_9
        0xfd3 -> :sswitch_9
        0xfd4 -> :sswitch_9
        0xfe6 -> :sswitch_9
        0xff0 -> :sswitch_9
    .end sparse-switch
.end method
