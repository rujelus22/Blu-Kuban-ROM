.class public Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;
.super Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.source "VideoOutdoorDialog.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .parameter "dialogBuilder"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, nSelectedID:I
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getOutdoorVisibility()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 29
    const/4 v0, 0x0

    .line 33
    :goto_c
    const/high16 v1, 0x7f05

    new-instance v2, Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    return-void

    .line 31
    :cond_17
    const/4 v0, 0x1

    goto :goto_c
.end method

.method protected setDialogId()V
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dialogId:I

    .line 19
    return-void
.end method

.method protected setDialogTitle(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "dialogBuilder"

    .prologue
    .line 22
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 23
    return-void
.end method
