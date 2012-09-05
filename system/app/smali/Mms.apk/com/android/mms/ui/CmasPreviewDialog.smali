.class public Lcom/android/mms/ui/CmasPreviewDialog;
.super Landroid/app/AlertDialog;
.source "CmasPreviewDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;

.field private mplayer:Landroid/media/MediaPlayer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 47
    const-string v3, "CmasPreview/Dialog"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const v3, 0x7f0902f7

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CmasPreviewDialog;->setTitle(I)V

    .line 50
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0902f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CmasPreviewDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v4, -0x2

    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0902f9

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/mms/ui/CmasPreviewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/CmasPreviewDialog;->setCancelable(Z)V

    .line 54
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 55
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 57
    .local v2, ringerMode:I
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 58
    .local v1, mStatusbarManager:Landroid/app/StatusBarManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 60
    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    .line 61
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasPreviewDialog;->playCmasAlert()V

    .line 67
    :cond_50
    :goto_50
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void

    .line 62
    :cond_54
    if-eqz v2, :cond_58

    if-ne v2, v6, :cond_50

    .line 64
    :cond_58
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasPreviewDialog;->playCmasVibrator()V

    goto :goto_50
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 127
    const-string v1, "CmasPreview/Dialog"

    const-string v2, "Onstop"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 129
    .local v0, mStatusbarManager:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasPreviewDialog;->stopCmasAlert()V

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasPreviewDialog;->stopCmasVibrator()V

    .line 132
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 133
    return-void
.end method

.method protected playCmasAlert()V
    .registers 6

    .prologue
    .line 71
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cmas_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, ringtoneStr:Ljava/lang/String;
    if-eqz v2, :cond_53

    .line 74
    :try_start_e
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_20

    .line 75
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 76
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 77
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    .line 96
    :goto_1f
    return-void

    .line 80
    :cond_20
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    .line 81
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, mediaURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 83
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 84
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 85
    iget-object v3, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 87
    const-string v3, "CmasPreview/Dialog"

    const-string v4, "Am now in playing"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_49} :catch_4a

    goto :goto_1f

    .line 89
    .end local v1           #mediaURI:Landroid/net/Uri;
    :catch_4a
    move-exception v0

    .line 90
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "CmasPreview/Dialog"

    const-string v4, "Exception in tree click"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 93
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_53
    const-string v3, "CmasPreview/Dialog"

    const-string v4, "Ringtone str not found"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method protected playCmasVibrator()V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_19

    .line 110
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xc

    new-array v1, v1, [J

    fill-array-data v1, :array_22

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 116
    :goto_18
    return-void

    .line 113
    :cond_19
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    goto :goto_18

    .line 111
    :array_22
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected stopCmasAlert()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    .line 106
    :goto_5
    return-void

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    goto :goto_5
.end method

.method protected stopCmasVibrator()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/CmasPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_4
.end method
