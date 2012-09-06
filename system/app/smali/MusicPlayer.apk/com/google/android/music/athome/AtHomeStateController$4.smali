.class Lcom/google/android/music/athome/AtHomeStateController$4;
.super Ljava/lang/Object;
.source "AtHomeStateController.java"

# interfaces
.implements Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeStateController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController$4;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupSelected(Ljava/lang/Object;)V
    .registers 5
    .parameter "route"

    .prologue
    .line 248
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGroupSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$4;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$4;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackForSelectedRouteTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$1000(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public onGroupUnselected(Ljava/lang/Object;)V
    .registers 5
    .parameter "route"

    .prologue
    .line 254
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGroupUnselected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$4;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$4;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackForSelectedRouteTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$1000(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method
