.class Lcom/google/android/music/LocalDevicePlayback$4;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$4;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5
    .parameter "focusChange"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$4;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 957
    return-void
.end method
