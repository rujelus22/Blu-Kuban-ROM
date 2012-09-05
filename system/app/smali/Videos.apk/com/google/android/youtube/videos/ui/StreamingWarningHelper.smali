.class public Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;
.super Landroid/content/BroadcastReceiver;
.source "StreamingWarningHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private final listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

.field private final mobileStreamingEnabled:Z

.field private playing:Z

.field private final preferences:Landroid/content/SharedPreferences;

.field private registered:Z

.field private warningAccepted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;Z)V
    .registers 8
    .parameter "activity"
    .parameter "preferences"
    .parameter "listener"
    .parameter "mobileStreamingEnabled"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    const-string v1, "activity can\'t be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    .line 51
    const-string v1, "preferences can\'t be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->preferences:Landroid/content/SharedPreferences;

    .line 52
    const-string v1, "listener can\'t be null"

    invoke-static {p3, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    .line 53
    iput-boolean p4, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->mobileStreamingEnabled:Z

    .line 55
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0100

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p4, :cond_55

    .line 60
    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    :goto_4e
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    .line 68
    return-void

    .line 64
    :cond_55
    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 65
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4e
.end method

.method private isDialogNeeded()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 87
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isWiFiNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->mobileStreamingEnabled:Z

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->warningAccepted:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "warning_streaming_bandwidth"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_23
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private showDialog()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 98
    :cond_d
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingDeclined()V

    .line 127
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 101
    packed-switch p2, :pswitch_data_3c

    .line 122
    :goto_5
    return-void

    .line 103
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "warning_streaming_bandwidth"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 105
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->warningAccepted:Z

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingAccepted()V

    goto :goto_5

    .line 109
    :pswitch_1f
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->mobileStreamingEnabled:Z

    if-eqz v0, :cond_2d

    .line 110
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 111
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->warningAccepted:Z

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingAccepted()V

    goto :goto_5

    .line 114
    :cond_2d
    iput-boolean v3, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingDeclined()V

    goto :goto_5

    .line 119
    :pswitch_35
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startWifiSettingsActivity(Landroid/content/Context;)V

    goto :goto_5

    .line 101
    nop

    :pswitch_data_3c
    .packed-switch -0x3
        :pswitch_6
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method

.method public onPlaybackStarted()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->isDialogNeeded()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 79
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    if-eqz v0, :cond_15

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingAccepted()V

    .line 84
    :goto_12
    return-void

    .line 78
    :cond_13
    const/4 v0, 0x0

    goto :goto_7

    .line 82
    :cond_15
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->showDialog()V

    goto :goto_12
.end method

.method public onPlaybackStopped()V
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 131
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    :cond_7
    :goto_7
    return-void

    .line 149
    :cond_8
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->warningAccepted:Z

    .line 150
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->isDialogNeeded()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 151
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onWifiDisconnected()V

    .line 153
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->showDialog()V

    goto :goto_7

    .line 154
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->playing:Z

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onWifiConnected()V

    goto :goto_7
.end method

.method public register()V
    .registers 4

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->registered:Z

    if-nez v0, :cond_13

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->registered:Z

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    :cond_13
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->registered:Z

    if-eqz v0, :cond_c

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->registered:Z

    .line 138
    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 141
    :cond_19
    return-void
.end method
