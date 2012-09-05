.class Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;
.super Ljava/lang/Object;
.source "VideoBrightnessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mWasAuto:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$400(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    :goto_16
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkAutoBrighteness()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resetBrightness()V

    .line 132
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setBrightnessLevel(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 134
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->returnToPrevDialog()V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;I)I

    .line 136
    return-void

    .line 128
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_16
.end method
