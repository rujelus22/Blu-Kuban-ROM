.class Lcom/google/android/music/lockscreen/WaveLockActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "WaveLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/lockscreen/WaveLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveLockActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$3;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 197
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$3;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->updateTrackInfo()V
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$500(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    .line 198
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$3;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$400(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    .line 202
    :cond_16
    :goto_16
    return-void

    .line 199
    :cond_17
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 200
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$3;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$400(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    goto :goto_16
.end method
