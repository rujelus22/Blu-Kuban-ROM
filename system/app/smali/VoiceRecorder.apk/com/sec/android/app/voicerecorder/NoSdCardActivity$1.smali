.class Lcom/sec/android/app/voicerecorder/NoSdCardActivity$1;
.super Landroid/os/Handler;
.source "NoSdCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/NoSdCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/NoSdCardActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/NoSdCardActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/NoSdCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1a

    .line 77
    :goto_5
    :sswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    return-void

    .line 62
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/NoSdCardActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->finish()V

    goto :goto_5

    .line 69
    :sswitch_f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/NoSdCardActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->StartMainActivty()V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/NoSdCardActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->finish()V

    goto :goto_5

    .line 56
    :sswitch_data_1a
    .sparse-switch
        0xfb4 -> :sswitch_5
        0xfd2 -> :sswitch_9
        0xfd4 -> :sswitch_9
        0xfd5 -> :sswitch_f
        0xfe6 -> :sswitch_9
        0xff0 -> :sswitch_9
    .end sparse-switch
.end method
