.class Lcom/google/android/music/LocalDevicePlayback$8$1;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/LocalDevicePlayback$8;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback$8;)V
    .registers 2
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$8$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$8$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$8;

    iget-object v0, v0, Lcom/google/android/music/LocalDevicePlayback$8;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->reloadQueue()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$3100(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1137
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$8$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$8;

    iget-object v0, v0, Lcom/google/android/music/LocalDevicePlayback$8;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mQueueIsSaveable:Z
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3402(Lcom/google/android/music/LocalDevicePlayback;Z)Z

    .line 1138
    return-void
.end method
