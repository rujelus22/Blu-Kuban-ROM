.class public Lcom/sec/android/app/voicerecorder/util/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const-string v0, "MediaButtonReceiver"

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/MediaButtonReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x5a

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 16
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 17
    .local v1, event:Landroid/view/KeyEvent;
    if-nez v1, :cond_f

    .line 75
    :cond_e
    :goto_e
    return-void

    .line 20
    :cond_f
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 21
    .local v2, keycode:I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 23
    .local v0, action:I
    if-nez v0, :cond_57

    .line 24
    sparse-switch v2, :sswitch_data_70

    goto :goto_e

    .line 27
    :sswitch_1d
    const/16 v3, 0x18

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-static {p1, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 32
    :sswitch_27
    const/16 v3, 0x19

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-static {p1, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 38
    :sswitch_31
    const/16 v3, 0x4f

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-static {p1, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 44
    :sswitch_3b
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-static {p1, v4, v3, v5}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 50
    :sswitch_43
    const/16 v3, 0x59

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-static {p1, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 57
    :sswitch_4d
    const/16 v3, 0x58

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-static {p1, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 61
    :cond_57
    if-ne v0, v5, :cond_e

    .line 62
    packed-switch v2, :pswitch_data_92

    :pswitch_5c
    goto :goto_e

    .line 64
    :pswitch_5d
    const/16 v3, 0x56

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-static {p1, v3, v4, v6}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 69
    :pswitch_67
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-static {p1, v4, v3, v6}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendMediaButtonReceived(Landroid/content/Context;IIZ)V

    goto :goto_e

    .line 24
    nop

    :sswitch_data_70
    .sparse-switch
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_27
        0x4f -> :sswitch_31
        0x55 -> :sswitch_31
        0x57 -> :sswitch_4d
        0x58 -> :sswitch_4d
        0x59 -> :sswitch_43
        0x5a -> :sswitch_3b
    .end sparse-switch

    .line 62
    :pswitch_data_92
    .packed-switch 0x56
        :pswitch_5d
        :pswitch_5c
        :pswitch_5c
        :pswitch_67
        :pswitch_67
    .end packed-switch
.end method
