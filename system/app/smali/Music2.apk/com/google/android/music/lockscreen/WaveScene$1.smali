.class Lcom/google/android/music/lockscreen/WaveScene$1;
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
    .line 117
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveScene;->access$000(Lcom/google/android/music/lockscreen/WaveScene;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 123
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveScene;->access$200(Lcom/google/android/music/lockscreen/WaveScene;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mAddFinalWaves:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveScene;->access$100(Lcom/google/android/music/lockscreen/WaveScene;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #setter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I
    invoke-static {v0, v4}, Lcom/google/android/music/lockscreen/WaveScene;->access$002(Lcom/google/android/music/lockscreen/WaveScene;I)I

    .line 127
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveScene;->access$000(Lcom/google/android/music/lockscreen/WaveScene;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2e

    .line 129
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #setter for: Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I
    invoke-static {v0, v4}, Lcom/google/android/music/lockscreen/WaveScene;->access$002(Lcom/google/android/music/lockscreen/WaveScene;I)I

    .line 132
    :cond_2e
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene$1;->this$0:Lcom/google/android/music/lockscreen/WaveScene;

    #getter for: Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveScene;->access$300(Lcom/google/android/music/lockscreen/WaveScene;)Lcom/google/android/music/lockscreen/WaveRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/lockscreen/WaveRenderer;->requestRender()V

    .line 133
    return-void
.end method
