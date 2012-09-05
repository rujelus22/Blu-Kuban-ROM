.class Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;
.super Ljava/lang/Object;
.source "VideoBrightnessDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .parameter "btn"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const-string v0, "VideoBrightnessDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNormalDialog() - isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz p2, :cond_51

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 95
    :goto_3b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkAutoBrighteness()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resetBrightness()V

    .line 99
    :goto_50
    return-void

    .line 90
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3b

    .line 98
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    goto :goto_50
.end method
