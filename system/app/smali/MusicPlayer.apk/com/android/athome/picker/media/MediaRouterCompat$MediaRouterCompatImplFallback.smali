.class Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplFallback;
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
    name = "MediaRouterCompatImplFallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RouteCategory_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "category"

    .prologue
    .line 251
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->getName()Ljava/lang/CharSequence;

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
    .line 256
    .local p2, out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->getRoutes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public RouteCategory_isGroupable(Ljava/lang/Object;)Z
    .registers 3
    .parameter "category"

    .prologue
    .line 266
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->isGroupable()Z

    move-result v0

    return v0
.end method

.method public RouteGroup_addRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 218
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .end local p1
    check-cast p2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p2
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->addRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 220
    return-void
.end method

.method public RouteGroup_getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "groupInfo"
    .parameter "index"

    .prologue
    .line 246
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public RouteGroup_getRouteCount(Ljava/lang/Object;)I
    .registers 3
    .parameter "groupInfo"

    .prologue
    .line 241
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteCount()I

    move-result v0

    return v0
.end method

.method public RouteGroup_removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 230
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .end local p1
    check-cast p2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p2
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->removeRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 232
    return-void
.end method

.method public RouteGroup_removeRouteAt(Ljava/lang/Object;I)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeIndex"

    .prologue
    .line 236
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->removeRoute(I)V

    .line 237
    return-void
.end method

.method public RouteInfo_getCategory(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "info"

    .prologue
    .line 203
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "info"

    .prologue
    .line 198
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getGroup()Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 288
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "info"

    .prologue
    .line 183
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getPlaybackType(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 333
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public RouteInfo_getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "info"

    .prologue
    .line 188
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 308
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RouteInfo_getVolume(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 313
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolume()I

    move-result v0

    return v0
.end method

.method public RouteInfo_getVolumeHandling(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 328
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolumeHandling()I

    move-result v0

    return v0
.end method

.method public RouteInfo_getVolumeMax(Ljava/lang/Object;)I
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 318
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolumeMax()I

    move-result v0

    return v0
.end method

.method public RouteInfo_requestSetVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "routeInfo"
    .parameter "volume"

    .prologue
    .line 323
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->requestSetVolume(I)V

    .line 324
    return-void
.end method

.method public RouteInfo_requestUpdateVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "routeInfo"
    .parameter "direction"

    .prologue
    .line 373
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->requestUpdateVolume(I)V

    .line 374
    return-void
.end method

.method public RouteInfo_setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "routeInfo"
    .parameter "tag"

    .prologue
    .line 303
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public UserRouteInfo_setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "info"
    .parameter "name"

    .prologue
    .line 208
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public UserRouteInfo_setPlaybackType(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "type"

    .prologue
    .line 353
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setPlaybackType(I)V

    .line 354
    return-void
.end method

.method public UserRouteInfo_setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "info"
    .parameter "status"

    .prologue
    .line 213
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setStatus(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public UserRouteInfo_setVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "volume"

    .prologue
    .line 343
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setVolume(I)V

    .line 344
    return-void
.end method

.method public UserRouteInfo_setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "cb"

    .prologue
    .line 368
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setVolumeCallback(Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V

    .line 369
    return-void
.end method

.method public UserRouteInfo_setVolumeHandling(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "volumeHandling"

    .prologue
    .line 358
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setVolumeHandling(I)V

    .line 359
    return-void
.end method

.method public UserRouteInfo_setVolumeMax(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "volumeMax"

    .prologue
    .line 348
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setVolumeMax(I)V

    .line 349
    return-void
.end method

.method public addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 4
    .parameter "router"
    .parameter "types"
    .parameter "cb"

    .prologue
    .line 124
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/android/athome/picker/media/MediaRouterFallback;->addCallback(ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 125
    return-void
.end method

.method public addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 145
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    check-cast p2, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p2
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->addUserRoute(Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;)V

    .line 147
    return-void
.end method

.method public createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 5
    .parameter "router"
    .parameter "name"
    .parameter "isGroupable"

    .prologue
    .line 178
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/android/athome/picker/media/MediaRouterFallback;->createRouteCategory(Ljava/lang/CharSequence;Z)Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "routeCategory"

    .prologue
    .line 172
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    check-cast p2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    .end local p2
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->createUserRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public forApplication(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->forApplication(Landroid/content/Context;)Lcom/android/athome/picker/media/MediaRouterFallback;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "index"

    .prologue
    .line 167
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getCategoryAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryCount(Ljava/lang/Object;)I
    .registers 3
    .parameter "router"

    .prologue
    .line 162
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->getCategoryCount()I

    move-result v0

    return v0
.end method

.method public getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "index"

    .prologue
    .line 114
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRouteCount(Ljava/lang/Object;)I
    .registers 3
    .parameter "router"

    .prologue
    .line 109
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteCount()I

    move-result v0

    return v0
.end method

.method public getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "type"

    .prologue
    .line 119
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getSelectedRoute(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public isRouteCategory(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 393
    instance-of v0, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    return v0
.end method

.method public isRouteInfo(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 378
    instance-of v0, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    return v0
.end method

.method public removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 3
    .parameter "router"
    .parameter "cb"

    .prologue
    .line 129
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->removeCallback(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 130
    return-void
.end method

.method public removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 151
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    check-cast p2, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    .end local p2
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->removeUserRoute(Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;)V

    .line 153
    return-void
.end method

.method public selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "types"
    .parameter "route"

    .prologue
    .line 139
    check-cast p1, Lcom/android/athome/picker/media/MediaRouterFallback;

    .end local p1
    check-cast p3, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .end local p3
    invoke-virtual {p1, p2, p3}, Lcom/android/athome/picker/media/MediaRouterFallback;->selectRoute(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 141
    return-void
.end method
