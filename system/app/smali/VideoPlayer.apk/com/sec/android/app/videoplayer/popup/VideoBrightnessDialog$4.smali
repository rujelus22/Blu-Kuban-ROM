.class Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;
.super Ljava/lang/Object;
.source "VideoBrightnessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 141
    sparse-switch p2, :sswitch_data_ae

    .line 180
    :goto_6
    return v0

    .line 143
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5b

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mWasAuto:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$400(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    :goto_22
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkAutoBrighteness()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resetBrightness()V

    .line 152
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setBrightnessLevel(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 154
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->returnToPrevDialog()V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I
    invoke-static {v0, v4}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;I)I

    :cond_5b
    move v0, v1

    .line 157
    goto :goto_6

    .line 147
    :cond_5d
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_22

    .line 160
    :sswitch_6b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_96

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_96

    .line 162
    invoke-static {v0, v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->notifySettingChanged(II)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 165
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 166
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->resumePlay()V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I
    invoke-static {v0, v4}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;I)I

    :cond_96
    move v0, v1

    .line 169
    goto/16 :goto_6

    .line 172
    :sswitch_99
    const-string v0, "VideoBrightnessDialog"

    const-string v2, "mKeyListener() - KEYCODE_MENU , just hook and drop it"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 173
    goto/16 :goto_6

    .line 176
    :sswitch_a3
    const-string v0, "VideoBrightnessDialog"

    const-string v2, "mKeyListener() - KEYCODE_SEARCH , just hook and drop it"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 177
    goto/16 :goto_6

    .line 141
    nop

    :sswitch_data_ae
    .sparse-switch
        0x4 -> :sswitch_7
        0x1a -> :sswitch_6b
        0x52 -> :sswitch_99
        0x54 -> :sswitch_a3
    .end sparse-switch
.end method
