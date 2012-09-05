.class public Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;
.super Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.source "VideoColortoneDialog.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .parameter "dialogBuilder"

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, nSelectedID:I
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getColorTone()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 46
    :goto_c
    const v1, 0x7f050001

    new-instance v2, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    return-void

    .line 31
    :pswitch_18
    const/4 v0, 0x0

    .line 32
    goto :goto_c

    .line 35
    :pswitch_1a
    const/4 v0, 0x1

    .line 36
    goto :goto_c

    .line 39
    :pswitch_1c
    const/4 v0, 0x2

    .line 40
    goto :goto_c

    .line 29
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1a
        :pswitch_1c
    .end packed-switch
.end method

.method protected setDialogId()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dialogId:I

    .line 20
    return-void
.end method

.method protected setDialogTitle(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "dialogBuilder"

    .prologue
    .line 23
    const v0, 0x7f080014

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 24
    return-void
.end method
