.class Lcom/google/android/music/lockscreen/WaveScene$3;
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
    .line 182
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene$3;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 185
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v8, v1, :cond_90

    .line 186
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$3;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$1200(Lcom/google/android/music/lockscreen/WaveScene;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 187
    .local v0, wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    .line 188
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 189
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    .line 190
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$3;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$400(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 191
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$3;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$600(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 194
    const-wide/16 v1, 0x7d0

    mul-int/lit8 v3, v8, 0x64

    int-to-long v3, v3

    const-string v5, "x"

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene$3;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F
    invoke-static {v6}, Lcom/google/android/music/lockscreen/WaveScene;->access$500(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 195
    const-wide/16 v1, 0x7d0

    mul-int/lit8 v3, v8, 0x64

    int-to-long v3, v3

    const-string v5, "y"

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene$3;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F
    invoke-static {v6}, Lcom/google/android/music/lockscreen/WaveScene;->access$700(Lcom/google/android/music/lockscreen/WaveScene;)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 196
    const-wide/16 v1, 0x12c

    mul-int/lit8 v3, v8, 0x64

    int-to-long v3, v3

    const-string v5, "scaleX"

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 197
    const-wide/16 v1, 0x12c

    mul-int/lit8 v3, v8, 0x64

    int-to-long v3, v3

    const-string v5, "scaleY"

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 198
    const-wide/16 v1, 0x64

    mul-int/lit8 v3, v8, 0x64

    int-to-long v3, v3

    const-string v5, "alpha"

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 200
    move v9, v8

    .line 202
    .local v9, index:I
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$3;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$200(Lcom/google/android/music/lockscreen/WaveScene;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/lockscreen/WaveScene$3$1;

    invoke-direct {v2, p0, v0, v9}, Lcom/google/android/music/lockscreen/WaveScene$3$1;-><init>(Lcom/google/android/music/lockscreen/WaveScene$3;Lcom/google/android/music/lockscreen/DrawableTexture;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 209
    .end local v0           #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    .end local v9           #index:I
    :cond_90
    return-void
.end method
