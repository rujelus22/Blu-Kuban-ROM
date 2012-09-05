.class Lcom/google/android/music/lockscreen/WaveScene$2;
.super Ljava/lang/Object;
.source "WaveScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/lockscreen/WaveScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/WaveScene;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveScene;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$400(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F
    invoke-static {v2}, Lcom/google/android/music/lockscreen/WaveScene;->access$500(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v8, v1

    .line 139
    .local v8, distX:D
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$600(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F
    invoke-static {v2}, Lcom/google/android/music/lockscreen/WaveScene;->access$700(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v10, v1

    .line 140
    .local v10, distY:D
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v12, v1

    .line 141
    .local v12, dragDistance:I
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$000(Lcom/google/android/music/lockscreen/WaveScene;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_105

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mSnapRadius:I
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$800(Lcom/google/android/music/lockscreen/WaveScene;)I

    move-result v1

    if-ge v12, v1, :cond_105

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$900(Lcom/google/android/music/lockscreen/WaveScene;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->WAVE_DELAY:J
    invoke-static {v3}, Lcom/google/android/music/lockscreen/WaveScene;->access$1000(Lcom/google/android/music/lockscreen/WaveScene;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_105

    .line 143
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    const-wide/16 v2, 0x7d0

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J
    invoke-static {v4}, Lcom/google/android/music/lockscreen/WaveScene;->access$900(Lcom/google/android/music/lockscreen/WaveScene;)J

    move-result-wide v4

    const-wide/16 v6, 0xf

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    #setter for: Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J
    invoke-static {v1, v2, v3}, Lcom/google/android/music/lockscreen/WaveScene;->access$902(Lcom/google/android/music/lockscreen/WaveScene;J)J

    .line 145
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$1200(Lcom/google/android/music/lockscreen/WaveScene;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mCurrentWave:I
    invoke-static {v2}, Lcom/google/android/music/lockscreen/WaveScene;->access$1100(Lcom/google/android/music/lockscreen/WaveScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 146
    .local v0, wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    .line 147
    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 148
    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    .line 149
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$400(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 150
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$600(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 152
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "x"

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F
    invoke-static {v6}, Lcom/google/android/music/lockscreen/WaveScene;->access$500(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 153
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "y"

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F
    invoke-static {v6}, Lcom/google/android/music/lockscreen/WaveScene;->access$700(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 154
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "scaleX"

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 155
    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x0

    const-string v5, "scaleY"

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 157
    const-wide/16 v1, 0x514

    const-wide/16 v3, 0x0

    const-string v5, "alpha"

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 159
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$200(Lcom/google/android/music/lockscreen/WaveScene;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/lockscreen/WaveScene$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/lockscreen/WaveScene$2$1;-><init>(Lcom/google/android/music/lockscreen/WaveScene$2;Lcom/google/android/music/lockscreen/DrawableTexture;)V

    const-wide/16 v3, 0x514

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mCurrentWave:I
    invoke-static {v2}, Lcom/google/android/music/lockscreen/WaveScene;->access$1100(Lcom/google/android/music/lockscreen/WaveScene;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I
    invoke-static {v3}, Lcom/google/android/music/lockscreen/WaveScene;->access$1300(Lcom/google/android/music/lockscreen/WaveScene;)I

    move-result v3

    rem-int/2addr v2, v3

    #setter for: Lcom/google/android/music/lockscreen/WaveScene;->mCurrentWave:I
    invoke-static {v1, v2}, Lcom/google/android/music/lockscreen/WaveScene;->access$1102(Lcom/google/android/music/lockscreen/WaveScene;I)I

    .line 170
    .end local v0           #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    :goto_f6
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mFinishWaves:Z
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$1400(Lcom/google/android/music/lockscreen/WaveScene;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 172
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/lockscreen/WaveScene;->mWavesRunning:Z
    invoke-static {v1, v2}, Lcom/google/android/music/lockscreen/WaveScene;->access$1502(Lcom/google/android/music/lockscreen/WaveScene;Z)Z

    .line 176
    :goto_104
    return-void

    .line 168
    :cond_105
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    const-wide/16 v2, 0xc

    invoke-static {v1, v2, v3}, Lcom/google/android/music/lockscreen/WaveScene;->access$914(Lcom/google/android/music/lockscreen/WaveScene;J)J

    goto :goto_f6

    .line 174
    :cond_10d
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$200(Lcom/google/android/music/lockscreen/WaveScene;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mAddWaveAction:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/music/lockscreen/WaveScene;->access$1600(Lcom/google/android/music/lockscreen/WaveScene;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene$2;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J
    invoke-static {v3}, Lcom/google/android/music/lockscreen/WaveScene;->access$900(Lcom/google/android/music/lockscreen/WaveScene;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_104
.end method
