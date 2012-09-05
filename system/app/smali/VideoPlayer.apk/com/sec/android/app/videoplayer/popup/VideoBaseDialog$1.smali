.class Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog$1;
.super Ljava/lang/Object;
.source "VideoBaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 112
    sparse-switch p2, :sswitch_data_50

    .line 138
    :goto_5
    return v0

    .line 114
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 115
    invoke-static {v0, v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->notifySettingChanged(II)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 118
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 119
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->resumePlay()V

    :cond_2c
    move v0, v1

    .line 121
    goto :goto_5

    .line 124
    :sswitch_2e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3b

    .line 125
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->returnToPrevDialog()V

    :cond_3b
    move v0, v1

    .line 127
    goto :goto_5

    .line 130
    :sswitch_3d
    const-string v0, "VideoBaseDialog"

    const-string v2, "mKeyListener() - KEYCODE_MENU , just hook and drop it"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 131
    goto :goto_5

    .line 134
    :sswitch_46
    const-string v0, "VideoBaseDialog"

    const-string v2, "mKeyListener() - KEYCODE_SEARCH , just hook and drop it"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 135
    goto :goto_5

    .line 112
    nop

    :sswitch_data_50
    .sparse-switch
        0x4 -> :sswitch_2e
        0x1a -> :sswitch_6
        0x52 -> :sswitch_3d
        0x54 -> :sswitch_46
    .end sparse-switch
.end method
