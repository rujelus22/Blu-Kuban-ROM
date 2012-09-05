.class Lcom/android/server/FMRadioService$13;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 6
    .parameter "motionEvent"

    .prologue
    const/4 v3, 0x1

    .line 586
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 587
    .local v0, motion:I
    packed-switch v0, :pswitch_data_26

    .line 596
    :cond_8
    :goto_8
    return-void

    .line 589
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 590
    iget-object v1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    const/16 v2, 0x15

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v1, v3, v2, v3}, Lcom/android/server/FMRadioService;->access$600(Lcom/android/server/FMRadioService;ZIZ)Z

    goto :goto_8

    .line 587
    nop

    :pswitch_data_26
    .packed-switch 0xa
        :pswitch_9
    .end packed-switch
.end method
