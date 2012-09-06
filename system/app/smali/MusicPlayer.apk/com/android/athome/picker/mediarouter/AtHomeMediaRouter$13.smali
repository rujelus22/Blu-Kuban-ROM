.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->createNewTgsGroup(Ljava/util/List;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

.field final synthetic val$dispatchGroupCallback:Z

.field final synthetic val$existingGroup:Ljava/lang/Object;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$routeGroup:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$existingGroup:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$dispatchGroupCallback:Z

    iput-object p5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$routeGroup:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateGroup(Landroid/support/place/music/TgsGroup;)V
    .registers 9
    .parameter "group"

    .prologue
    .line 1306
    const-string v4, "AtHomeMediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$groupId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z
    invoke-static {v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz p1, :cond_2a

    .line 1308
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v5, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z
    invoke-static {v4, v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3802(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 1311
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v0, connectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/connector/ConnectorInfo;>;"
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$existingGroup:Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v3

    .line 1313
    .local v3, routeCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_36
    if-ge v1, v3, :cond_4e

    .line 1314
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$existingGroup:Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1315
    .local v2, route:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1318
    .end local v2           #route:Ljava/lang/Object;
    :cond_4e
    const-string v4, "AtHomeMediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connector size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$existingGroup:Ljava/lang/Object;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addRouteGroup(Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V
    invoke-static {v4, p1, v0, v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 1320
    iget-boolean v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$dispatchGroupCallback:Z

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;
    invoke-static {v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    move-result-object v4

    if-eqz v4, :cond_88

    .line 1321
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;
    invoke-static {v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;->val$routeGroup:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;->onGroupSelected(Ljava/lang/Object;)V

    .line 1323
    :cond_88
    return-void
.end method
