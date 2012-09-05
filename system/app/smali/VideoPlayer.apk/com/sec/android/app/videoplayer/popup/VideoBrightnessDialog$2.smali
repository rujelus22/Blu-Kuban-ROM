.class Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;
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
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkAutoBrighteness()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resetBrightness()V

    .line 116
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setBrightnessLevel(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 118
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->returnToPrevDialog()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;I)I

    .line 120
    return-void
.end method
