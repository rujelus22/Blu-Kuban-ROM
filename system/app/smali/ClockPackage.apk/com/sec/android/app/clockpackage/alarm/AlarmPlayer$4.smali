.class Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCompleteListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 6
    .parameter "utteranceId"

    .prologue
    const/4 v3, 0x0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 538
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UtteranceCompleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)I

    move-result v0

    and-int/lit16 v0, v0, 0x1100

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_33

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Z)Z

    .line 543
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$702(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Z)Z

    .line 549
    :cond_50
    return-void
.end method
