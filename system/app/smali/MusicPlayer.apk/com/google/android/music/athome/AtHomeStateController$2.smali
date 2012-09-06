.class Lcom/google/android/music/athome/AtHomeStateController$2;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;
.source "AtHomeStateController.java"


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
    .line 177
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mUpdateAtHomeStateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$700(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public onRouteChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$400(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 196
    :cond_8
    :goto_8
    return-void

    .line 189
    :cond_9
    invoke-static {p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, routeGroupId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$400(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/music/MusicUtils;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 194
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mSelectRouteIfAvailableTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$500(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .parameter "router"
    .parameter "routeInfo"
    .parameter "routeGroup"
    .parameter "index"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mUpdateAtHomeStateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$700(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mUpdateAtHomeStateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$700(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 6
    .parameter "router"
    .parameter "type"
    .parameter "routeInfo"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeStateController;->mSelectMediaRouteWhenAvailable:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$402(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    return-void
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter "router"
    .parameter "routeInfo"
    .parameter "routeGroup"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$600(Lcom/google/android/music/athome/AtHomeStateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeStateController$2;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mUpdateAtHomeStateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeStateController;->access$700(Lcom/google/android/music/athome/AtHomeStateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method
