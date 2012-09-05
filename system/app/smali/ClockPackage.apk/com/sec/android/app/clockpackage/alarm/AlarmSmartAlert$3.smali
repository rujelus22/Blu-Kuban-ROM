.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;
.super Landroid/os/CountDownTimer;
.source "AlarmSmartAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    .line 265
    return-void
.end method

.method public onTick(J)V
    .registers 7
    .parameter "millisUntilFinished"

    .prologue
    const/high16 v3, 0x3f80

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$508(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->per:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolMax:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v2

    mul-float/2addr v1, v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->per:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v2

    div-float/2addr v1, v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$902(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolMax:F
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4d

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVolMax:F
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F

    .line 230
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5c

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F
    invoke-static {v0, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$902(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F

    .line 233
    :cond_5c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->updateDisplay()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_85

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-nez v0, :cond_85

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    .line 243
    :cond_85
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->isPlying()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-nez v0, :cond_aa

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setVolume(F)V

    .line 250
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1102(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 252
    const-string v0, "AlarmSmartAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f747ae147ae147bL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_ef

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    const v1, 0x3ba3d70a

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$902(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F

    .line 255
    :cond_ef
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mBrightness:F
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 259
    :cond_10c
    const-string v0, "AlarmSmartAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVol:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->per:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method
