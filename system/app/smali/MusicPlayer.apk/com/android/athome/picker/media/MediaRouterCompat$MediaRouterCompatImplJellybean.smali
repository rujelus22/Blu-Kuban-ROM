.class Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplJellybean;
.super Ljava/lang/Object;
.source "MediaRouterCompat.java"

# interfaces
.implements Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaRouterCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RouteCategory_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "category"

    .prologue
    .line 542
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteCategory_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public RouteCategory_getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter "category"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteCategory_getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public RouteCategory_isGroupable(Ljava/lang/Object;)Z
    .registers 3
    .parameter "category"

    .prologue
    .line 557
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteCategory_isGroupable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public RouteGroup_addRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 512
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteGroup_addRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method public RouteGroup_getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "groupInfo"
    .parameter "index"

    .prologue
    .line 537
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteGroup_getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RouteGroup_getRouteCount(Ljava/lang/Object;)I
    .registers 3
    .parameter "groupInfo"

    .prologue
    .line 532
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteGroup_getRouteCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public RouteGroup_removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 522
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteGroup_removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public RouteGroup_removeRouteAt(Ljava/lang/Object;I)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeIndex"

    .prologue
    .line 527
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteGroup_removeRouteAt(Ljava/lang/Object;I)V

    .line 528
    return-void
.end method

.method public RouteInfo_getCategory(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "info"

    .prologue
    .line 497
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "info"

    .prologue
    .line 492
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 579
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "info"

    .prologue
    .line 477
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getPlaybackType(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 624
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getPlaybackType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public RouteInfo_getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "info"

    .prologue
    .line 482
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 599
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getVolume(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 604
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getVolume(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public RouteInfo_getVolumeHandling(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 619
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getVolumeHandling(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public RouteInfo_getVolumeMax(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 609
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_getVolumeMax(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public RouteInfo_requestSetVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "routeInfo"
    .parameter "volume"

    .prologue
    .line 614
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_requestSetVolume(Ljava/lang/Object;I)V

    .line 615
    return-void
.end method

.method public RouteInfo_requestUpdateVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "routeInfo"
    .parameter "direction"

    .prologue
    .line 665
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_requestUpdateVolume(Ljava/lang/Object;I)V

    .line 666
    return-void
.end method

.method public RouteInfo_setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "routeInfo"
    .parameter "tag"

    .prologue
    .line 594
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->RouteInfo_setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    return-void
.end method

.method public UserRouteInfo_setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "info"
    .parameter "name"

    .prologue
    .line 502
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->UserRouteInfo_setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method

.method public UserRouteInfo_setPlaybackType(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "type"

    .prologue
    .line 644
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->UserRouteInfo_setPlaybackType(Ljava/lang/Object;I)V

    .line 645
    return-void
.end method

.method public UserRouteInfo_setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "info"
    .parameter "status"

    .prologue
    .line 507
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->UserRouteInfo_setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public UserRouteInfo_setVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "volume"

    .prologue
    .line 634
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->UserRouteInfo_setVolume(Ljava/lang/Object;I)V

    .line 635
    return-void
.end method

.method public UserRouteInfo_setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "cb"

    .prologue
    .line 660
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->UserRouteInfo_setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V

    .line 661
    return-void
.end method

.method public UserRouteInfo_setVolumeHandling(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "volumeHandling"

    .prologue
    .line 649
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->UserRouteInfo_setVolumeHandling(Ljava/lang/Object;I)V

    .line 651
    return-void
.end method

.method public UserRouteInfo_setVolumeMax(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "volumeMax"

    .prologue
    .line 639
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->UserRouteInfo_setVolumeMax(Ljava/lang/Object;I)V

    .line 640
    return-void
.end method

.method public addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 4
    .parameter "router"
    .parameter "types"
    .parameter "cb"

    .prologue
    .line 422
    invoke-static {p1, p2, p3}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 423
    return-void
.end method

.method public addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 442
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    return-void
.end method

.method public createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 5
    .parameter "router"
    .parameter "name"
    .parameter "isGroupable"

    .prologue
    .line 472
    invoke-static {p1, p2, p3}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "routeCategory"

    .prologue
    .line 467
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forApplication(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .parameter "context"

    .prologue
    .line 402
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "index"

    .prologue
    .line 462
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryCount(Ljava/lang/Object;)I
    .registers 3
    .parameter "router"

    .prologue
    .line 457
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->getCategoryCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "index"

    .prologue
    .line 412
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRouteCount(Ljava/lang/Object;)I
    .registers 3
    .parameter "router"

    .prologue
    .line 407
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->getRouteCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "type"

    .prologue
    .line 417
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isRouteCategory(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 685
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->isRouteCateory(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRouteInfo(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 670
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->isRouteInfo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 3
    .parameter "router"
    .parameter "cb"

    .prologue
    .line 427
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 428
    return-void
.end method

.method public removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 447
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "types"
    .parameter "route"

    .prologue
    .line 437
    invoke-static {p1, p2, p3}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 438
    return-void
.end method
