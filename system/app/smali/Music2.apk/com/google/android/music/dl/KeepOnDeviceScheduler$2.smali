.class Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;
.super Ljava/lang/Object;
.source "KeepOnDeviceScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

.field final synthetic val$highSpeedOn:Z

.field final synthetic val$mobileOn:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    iput-boolean p2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->val$highSpeedOn:Z

    iput-boolean p3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->val$mobileOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    #getter for: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mHighSpeedAvailable:Z
    invoke-static {v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$100(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->val$highSpeedOn:Z

    if-nez v3, :cond_2a

    move v0, v1

    .line 128
    .local v0, notifyHighSpeedLost:Z
    :goto_f
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    iget-boolean v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->val$highSpeedOn:Z

    #setter for: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mHighSpeedAvailable:Z
    invoke-static {v3, v4}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$102(Lcom/google/android/music/dl/KeepOnDeviceScheduler;Z)Z

    .line 129
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    #getter for: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$200(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineDLOnlyOnWifi()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 130
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    iget-boolean v2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->val$highSpeedOn:Z

    #calls: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->setEnabled(ZZ)V
    invoke-static {v1, v2, v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$300(Lcom/google/android/music/dl/KeepOnDeviceScheduler;ZZ)V

    .line 134
    :goto_29
    return-void

    .end local v0           #notifyHighSpeedLost:Z
    :cond_2a
    move v0, v2

    .line 127
    goto :goto_f

    .line 132
    .restart local v0       #notifyHighSpeedLost:Z
    :cond_2c
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    iget-boolean v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->val$mobileOn:Z

    if-nez v4, :cond_36

    iget-boolean v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->val$highSpeedOn:Z

    if-eqz v4, :cond_3a

    :cond_36
    :goto_36
    #calls: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->setEnabled(ZZ)V
    invoke-static {v3, v1, v2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$300(Lcom/google/android/music/dl/KeepOnDeviceScheduler;ZZ)V

    goto :goto_29

    :cond_3a
    move v1, v2

    goto :goto_36
.end method
