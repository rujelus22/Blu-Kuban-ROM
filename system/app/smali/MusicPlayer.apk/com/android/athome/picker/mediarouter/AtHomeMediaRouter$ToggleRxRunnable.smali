.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnAssignRxToGroup;
.implements Landroid/support/place/music/TungstenGroupingService$OnRemoveRxFromGroup;
.implements Landroid/support/place/rpc/RpcErrorHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleRxRunnable"
.end annotation


# instance fields
.field private mGroupId:Ljava/lang/String;

.field private mReceiverId:Ljava/lang/String;

.field private mRemove:Z

.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter "receiverId"
    .parameter "groupId"
    .parameter "remove"

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mReceiverId:Ljava/lang/String;

    .line 1345
    iput-object p3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mGroupId:Ljava/lang/String;

    .line 1346
    iput-boolean p4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mRemove:Z

    .line 1347
    return-void
.end method


# virtual methods
.method public onAssignRxToGroup(Z)V
    .registers 5
    .parameter "unused"

    .prologue
    .line 1368
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assigned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mReceiverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v1, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAssigningRxToGroup:Z
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4102(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 1370
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getLatestTgsState()V
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    .line 1371
    return-void
.end method

.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 6
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 1382
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssignRxRunnable error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAssigningRxToGroup:Z
    invoke-static {v0, v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4102(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 1385
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRemovingFromGroup:Z
    invoke-static {v0, v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4002(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 1386
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getLatestTgsState()V
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    .line 1387
    return-void
.end method

.method public onRemoveRxFromGroup(Z)V
    .registers 5
    .parameter "unused"

    .prologue
    .line 1375
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed Rx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mReceiverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v1, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRemovingFromGroup:Z
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4002(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 1377
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getLatestTgsState()V
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    .line 1378
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1351
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1352
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_10
    return-void

    .line 1355
    :cond_11
    iget-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mRemove:Z

    if-eqz v0, :cond_40

    .line 1356
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRemovingFromGroup:Z
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4002(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 1357
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Rx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mReceiverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mReceiverId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p0}, Landroid/support/place/music/TungstenGroupingService;->removeRxFromGroup(Ljava/lang/String;Landroid/support/place/music/TungstenGroupingService$OnRemoveRxFromGroup;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_10

    .line 1360
    :cond_40
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAssigningRxToGroup:Z
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$4102(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 1361
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assigning Rx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mReceiverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mGroupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;->mReceiverId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, p0}, Landroid/support/place/music/TungstenGroupingService;->assignRxToGroup(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/music/TungstenGroupingService$OnAssignRxToGroup;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_10
.end method
