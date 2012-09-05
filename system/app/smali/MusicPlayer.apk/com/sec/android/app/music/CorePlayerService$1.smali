.class Lcom/sec/android/app/music/CorePlayerService$1;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$1;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 6
    .parameter "motionEvent"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 514
    .local v0, motion:I
    const-string v1, "CorePlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    packed-switch v0, :pswitch_data_3a

    .line 527
    :cond_1f
    :goto_1f
    return-void

    .line 517
    :pswitch_20
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$1;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$100(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$1;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$1;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    goto :goto_1f

    .line 515
    :pswitch_data_3a
    .packed-switch 0xa
        :pswitch_20
    .end packed-switch
.end method
