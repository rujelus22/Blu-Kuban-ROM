.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;
.source "AtHomeMediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 199
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnRouteAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 14
    .parameter "router"
    .parameter "routeInfo"
    .parameter "routeGroup"
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    .line 287
    const-string v5, "AtHomeMediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnRouteGrouped: routeInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " routeGroup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z
    invoke-static {v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 289
    const-string v5, "AtHomeMediaRouter"

    const-string v6, "Updating media router. Ignore updates."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_32
    :goto_32
    return-void

    .line 292
    :cond_33
    invoke-static {p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, groupId:Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 294
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->updateGroupMemberShip(Ljava/lang/Object;Ljava/lang/Object;Z)V
    invoke-static {v5, p2, p3, v8}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_32

    .line 296
    :cond_3f
    invoke-static {p3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v3

    .line 297
    .local v3, routeCount:I
    const/4 v5, 0x1

    if-le v3, v5, :cond_32

    .line 298
    const-string v5, "AtHomeMediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RouteCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " creating new group."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v4, rxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6a
    if-ge v1, v3, :cond_8a

    .line 302
    invoke-static {p3, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 303
    .local v2, route:Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v5}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 305
    .end local v2           #route:Ljava/lang/Object;
    :cond_8a
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->createNewTgsGroup(Ljava/util/List;Ljava/lang/Object;Z)V
    invoke-static {v5, v4, p3, v8}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/util/List;Ljava/lang/Object;Z)V

    goto :goto_32
.end method

.method public onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 205
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnRouteRemoved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hashCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {p2}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$300()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_60

    .line 208
    invoke-static {p2}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, routeGroup:Ljava/lang/Object;
    if-eqz v1, :cond_60

    .line 210
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, groupId:Ljava/lang/String;
    if-eqz v0, :cond_60

    .line 213
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMusicTxConnectors:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v0           #groupId:Ljava/lang/String;
    .end local v1           #routeGroup:Ljava/lang/Object;
    :cond_60
    return-void
.end method

.method public onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 16
    .parameter "router"
    .parameter "type"
    .parameter "routeInfo"

    .prologue
    .line 222
    const-string v9, "AtHomeMediaRouter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnRouteSelected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z
    invoke-static {v9}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 224
    const-string v9, "AtHomeMediaRouter"

    const-string v10, "Updating media router. Ignore updates."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_27
    return-void

    .line 227
    :cond_28
    invoke-static {p3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$300()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_86

    .line 228
    invoke-static {p3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 229
    .local v6, routeGroup:Ljava/lang/Object;
    if-eqz v6, :cond_6e

    .line 230
    invoke-static {v6}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, groupId:Ljava/lang/String;
    if-nez v1, :cond_74

    .line 232
    invoke-static {v6}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v5

    .line 234
    .local v5, routeCount:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v8, rxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_48
    if-ge v2, v5, :cond_68

    .line 236
    invoke-static {v6, v2}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 237
    .local v4, route:Ljava/lang/Object;
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v9}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 239
    .end local v4           #route:Ljava/lang/Object;
    :cond_68
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v10, 0x1

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->createNewTgsGroup(Ljava/util/List;Ljava/lang/Object;Z)V
    invoke-static {v9, v8, v6, v10}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/util/List;Ljava/lang/Object;Z)V

    .line 263
    .end local v1           #groupId:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #routeCount:I
    .end local v6           #routeGroup:Ljava/lang/Object;
    .end local v8           #rxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6e
    :goto_6e
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSelectedOutput:Ljava/lang/Object;
    invoke-static {v9, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1502(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 242
    .restart local v1       #groupId:Ljava/lang/String;
    .restart local v6       #routeGroup:Ljava/lang/Object;
    :cond_74
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;
    invoke-static {v9}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    move-result-object v9

    if-eqz v9, :cond_6e

    .line 243
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;
    invoke-static {v9}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;->onGroupSelected(Ljava/lang/Object;)V

    goto :goto_6e

    .line 247
    .end local v1           #groupId:Ljava/lang/String;
    .end local v6           #routeGroup:Ljava/lang/Object;
    :cond_86
    invoke-static {p3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$200()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_6e

    .line 250
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-virtual {v9, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getReceiver(Ljava/lang/Object;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    move-result-object v3

    .line 252
    .local v3, receiver:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mStarted:Z
    invoke-static {v9}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v9

    if-eqz v9, :cond_6e

    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getConnectors()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6e

    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6e

    .line 254
    invoke-virtual {v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getConnectors()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v9}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 255
    .local v0, endpoint:Landroid/support/place/rpc/EndpointInfo;
    invoke-virtual {v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6e

    .line 256
    new-instance v7, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    invoke-virtual {v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;-><init>(Ljava/lang/String;)V

    .line 259
    .local v7, routeId:Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    iget-object v9, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouteProviderClient:Landroid/support/place/picker/MediaRouteProviderClient;
    invoke-static {v9}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/picker/MediaRouteProviderClient;

    move-result-object v9

    iget-object v10, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Landroid/support/place/picker/MediaRouteProviderClient;->setRouteIdForApplication(Ljava/lang/String;Landroid/support/place/picker/MediaRouteProviderClient$RouteId;)V

    goto :goto_6e
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter "router"
    .parameter "routeInfo"
    .parameter "routeGroup"

    .prologue
    .line 312
    const-string v1, "AtHomeMediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnRouteUnGrouped: routeInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " routeGroup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 314
    const-string v1, "AtHomeMediaRouter"

    const-string v2, "Updating media router. Ignore updates."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_31
    :goto_31
    return-void

    .line 317
    :cond_32
    invoke-static {p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, groupId:Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 319
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v2, 0x1

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->updateGroupMemberShip(Ljava/lang/Object;Ljava/lang/Object;Z)V
    invoke-static {v1, p2, p3, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_31
.end method

.method public onRouteUnselected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 9
    .parameter "router"
    .parameter "type"
    .parameter "routeInfo"

    .prologue
    .line 268
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnRouteUnSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSelectedOutput:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_62

    .line 270
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v3, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSelectedOutput:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1502(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mStarted:Z
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 273
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouteProviderClient:Landroid/support/place/picker/MediaRouteProviderClient;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/picker/MediaRouteProviderClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/place/picker/MediaRouteProviderClient;->deleteRouteIdForApplication(Ljava/lang/String;)V

    .line 275
    :cond_45
    invoke-static {p3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    .local v1, routeGroup:Ljava/lang/Object;
    if-eqz v1, :cond_62

    .line 277
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, groupId:Ljava/lang/String;
    if-eqz v0, :cond_62

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 279
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;->onGroupUnselected(Ljava/lang/Object;)V

    .line 283
    .end local v0           #groupId:Ljava/lang/String;
    .end local v1           #routeGroup:Ljava/lang/Object;
    :cond_62
    return-void
.end method
