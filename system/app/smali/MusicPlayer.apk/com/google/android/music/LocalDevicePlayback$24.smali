.class Lcom/google/android/music/LocalDevicePlayback$24;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->disableGroupPlay()V
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
    .line 2988
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$24;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2990
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$24;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1900(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 2991
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$24;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v0, v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1902(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 2992
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$24;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 2993
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$24;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3300(Lcom/google/android/music/LocalDevicePlayback;Z)V

    .line 2995
    :cond_1d
    return-void
.end method
