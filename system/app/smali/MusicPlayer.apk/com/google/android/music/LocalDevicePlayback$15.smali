.class Lcom/google/android/music/LocalDevicePlayback$15;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$fromUserAction:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$15;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-boolean p2, p0, Lcom/google/android/music/LocalDevicePlayback$15;->val$fromUserAction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1594
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$15;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-boolean v1, p0, Lcom/google/android/music/LocalDevicePlayback$15;->val$fromUserAction:Z

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPrepareToPlaySync(ZZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$5000(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V

    .line 1595
    return-void
.end method
