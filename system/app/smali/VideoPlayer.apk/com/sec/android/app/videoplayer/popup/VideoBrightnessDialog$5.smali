.class Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;
.super Ljava/lang/Object;
.source "VideoBrightnessDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;
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
    .line 196
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .parameter "seek"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 198
    if-eqz p3, :cond_50

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 201
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-nez p2, :cond_51

    .line 202
    const v1, 0x3df5c28f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 206
    :goto_17
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I
    invoke-static {v1, p2}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$202(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;I)I

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setBrightnessLevel(I)V

    .line 210
    const-string v1, "VideoBrightnessDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressChanged - brightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_50
    return-void

    .line 204
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_51
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_17
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seek"

    .prologue
    .line 215
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seek"

    .prologue
    .line 218
    return-void
.end method
