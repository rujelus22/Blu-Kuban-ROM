.class Lcom/samsung/dmp/layout/DMPAudioActivity$33;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1973
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 7
    .parameter "motionEvent"

    .prologue
    .line 1975
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    .line 1976
    .local v1, motion:I
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMPAudioActivity.onMotionListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    packed-switch v1, :pswitch_data_4a

    .line 1993
    :cond_1f
    :goto_1f
    return-void

    .line 1980
    :pswitch_20
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1982
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 1986
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handlePlayOrPause()V

    goto :goto_1f

    .line 1978
    nop

    :pswitch_data_4a
    .packed-switch 0xa
        :pswitch_20
    .end packed-switch
.end method
