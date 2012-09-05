.class public Lcom/sec/android/app/videoplayer/popup/VideoDialog;
.super Ljava/lang/Object;
.source "VideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_DIALOG:I = 0x4

.field public static final COLORTONE_DIALOG:I = 0x5

.field private static final DEBUG:Z = true

.field public static final DETAILS_DIALOG:I = 0x2

.field public static final MAX_DIALOG_SIZE:I = 0x6

.field public static final OUTDOOR_DIALOG:I = 0x6

.field public static final SETTINGS_DIALOG:I = 0x3

.field public static final SHARE_VIA_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoDialog"

.field private static mUniqueInstance:Lcom/sec/android/app/videoplayer/popup/VideoDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    .line 29
    return-void
.end method

.method private getDialogInstance(I)Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    .registers 4
    .parameter "dialogIdToCreate"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->getCurrentDialog()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v0

    .line 63
    .local v0, dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->getDialogId()I

    move-result v1

    if-ne v1, p1, :cond_10

    .line 64
    const/4 v1, 0x0

    .line 93
    :goto_f
    return-object v1

    .line 66
    :cond_10
    packed-switch p1, :pswitch_data_4e

    .line 86
    const/4 v0, 0x0

    .line 90
    :goto_14
    if-eqz v0, :cond_1b

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->push(Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;)V

    :cond_1b
    move-object v1, v0

    .line 93
    goto :goto_f

    .line 68
    :pswitch_1d
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    .end local v0           #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v0       #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    goto :goto_14

    .line 71
    :pswitch_25
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    .end local v0           #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v0       #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    goto :goto_14

    .line 74
    :pswitch_2d
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    .end local v0           #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;-><init>(Landroid/content/Context;)V

    .line 75
    .restart local v0       #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    goto :goto_14

    .line 77
    :pswitch_35
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    .end local v0           #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v0       #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    goto :goto_14

    .line 80
    :pswitch_3d
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;

    .end local v0           #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v0       #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    goto :goto_14

    .line 83
    :pswitch_45
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;

    .end local v0           #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;-><init>(Landroid/content/Context;)V

    .line 84
    .restart local v0       #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    goto :goto_14

    .line 66
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
        :pswitch_35
        :pswitch_3d
        :pswitch_45
    .end packed-switch
.end method

.method public static getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    .registers 2

    .prologue
    .line 33
    const-class v1, Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    monitor-enter v1

    .line 34
    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mUniqueInstance:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    if-nez v0, :cond_e

    .line 35
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mUniqueInstance:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    .line 37
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 39
    sget-object v0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mUniqueInstance:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    return-object v0

    .line 37
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public clearAllDialog()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->clearAll()V

    .line 118
    return-void
.end method

.method public dismissAllDialog()V
    .registers 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 106
    const-string v1, "VideoDialog"

    const-string v2, "dismissAllDialog() - no dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_f
    return-void

    .line 110
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->getDialogByIndex(I)Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->getDialogByIndex(I)Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dismissOnly()V

    .line 110
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public getEmpty()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected resumePlay()V
    .registers 5

    .prologue
    .line 142
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 144
    :try_start_6
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_f

    .line 145
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 150
    :cond_f
    :goto_f
    return-void

    .line 146
    :catch_10
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VideoDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumePlay() RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method protected returnToPrevDialog()V
    .registers 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->pop()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->clear()Z

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->getCurrentDialog()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v0

    .line 134
    .local v0, dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    if-eqz v0, :cond_1d

    .line 135
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->show()V

    .line 139
    .end local v0           #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    :cond_1c
    :goto_1c
    return-void

    .line 137
    .restart local v0       #dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->resumePlay()V

    goto :goto_1c
.end method

.method public setActivityContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public show(I)V
    .registers 5
    .parameter "dialogId"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getDialogInstance(I)Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v0

    .line 51
    .local v0, dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->show()V

    .line 56
    :goto_9
    return-void

    .line 54
    :cond_a
    const-string v1, "VideoDialog"

    const-string v2, "show() - failed to create dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public showLastDialog()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->getCurrentDialog()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->getCurrentDialog()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->mStack:Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->getCurrentDialog()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->show()V

    .line 102
    :goto_1d
    return-void

    .line 100
    :cond_1e
    const-string v0, "VideoDialog"

    const-string v1, "showLastDialog() - last dialog is empty. no need to show."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
