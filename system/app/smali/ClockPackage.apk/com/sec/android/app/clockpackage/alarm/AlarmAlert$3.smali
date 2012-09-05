.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;
.super Landroid/os/CountDownTimer;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 390
    const-string v0, "AlarmAlert"

    const-string v1, "mAlertTimer onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    .line 393
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$508(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateDisplay()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    .line 363
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVoiceCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     mCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->isPause()Z

    move-result v0

    if-nez v0, :cond_e2

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->GetEndAlertOnVoice()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Resume(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "AlarmAlert"

    const-string v1, "..player.GetEndAlertOnVoice() mVoiceCount != 0.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_85
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v0

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ge v0, v1, :cond_e2

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    const/16 v1, 0x3e8

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "AlarmAlert"

    const-string v1, "..mVoiceCount != 0 && mVoiceCount < mCount-3.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    .line 385
    :cond_e2
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    .line 386
    return-void
.end method
