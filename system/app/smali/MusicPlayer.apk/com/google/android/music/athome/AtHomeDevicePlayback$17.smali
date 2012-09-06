.class Lcom/google/android/music/athome/AtHomeDevicePlayback$17;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 2801
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$17;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$17;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailure:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2804
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$17;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    .line 2806
    :cond_d
    return-void
.end method
