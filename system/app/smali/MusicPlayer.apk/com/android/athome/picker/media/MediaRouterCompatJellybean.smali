.class Lcom/android/athome/picker/media/MediaRouterCompatJellybean;
.super Ljava/lang/Object;
.source "MediaRouterCompatJellybean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;,
        Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method public static RouteCategory_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "category"

    .prologue
    .line 149
    check-cast p0, Landroid/media/MediaRouter$RouteCategory;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static RouteCategory_getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
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
    .line 153
    .local p1, out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    check-cast p0, Landroid/media/MediaRouter$RouteCategory;

    .end local p0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$RouteCategory;->getRoutes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    if-nez p1, :cond_e

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local p1       #out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_e
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    return-object p1
.end method

.method public static RouteCategory_isGroupable(Ljava/lang/Object;)Z
    .registers 2
    .parameter "category"

    .prologue
    .line 166
    check-cast p0, Landroid/media/MediaRouter$RouteCategory;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v0

    return v0
.end method

.method public static RouteGroup_addRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 125
    check-cast p0, Landroid/media/MediaRouter$RouteGroup;

    .end local p0
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 126
    return-void
.end method

.method public static RouteGroup_getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "groupInfo"
    .parameter "index"

    .prologue
    .line 145
    check-cast p0, Landroid/media/MediaRouter$RouteGroup;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static RouteGroup_getRouteCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "groupInfo"

    .prologue
    .line 141
    check-cast p0, Landroid/media/MediaRouter$RouteGroup;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v0

    return v0
.end method

.method public static RouteGroup_removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 133
    check-cast p0, Landroid/media/MediaRouter$RouteGroup;

    .end local p0
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteGroup;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 134
    return-void
.end method

.method public static RouteGroup_removeRouteAt(Ljava/lang/Object;I)V
    .registers 2
    .parameter "groupInfo"
    .parameter "routeIndex"

    .prologue
    .line 137
    check-cast p0, Landroid/media/MediaRouter$RouteGroup;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteGroup;->removeRoute(I)V

    .line 138
    return-void
.end method

.method public static RouteInfo_getCategory(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "info"

    .prologue
    .line 113
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static RouteInfo_getGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "info"

    .prologue
    .line 109
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    return-object v0
.end method

.method public static RouteInfo_getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "routeInfo"

    .prologue
    .line 184
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static RouteInfo_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "info"

    .prologue
    .line 97
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static RouteInfo_getPlaybackType(Ljava/lang/Object;)I
    .registers 2
    .parameter "routeInfo"

    .prologue
    .line 224
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static RouteInfo_getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "info"

    .prologue
    .line 101
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static RouteInfo_getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "routeInfo"

    .prologue
    .line 200
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static RouteInfo_getVolume(Ljava/lang/Object;)I
    .registers 2
    .parameter "routeInfo"

    .prologue
    .line 204
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    return v0
.end method

.method public static RouteInfo_getVolumeHandling(Ljava/lang/Object;)I
    .registers 2
    .parameter "routeInfo"

    .prologue
    .line 220
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    return v0
.end method

.method public static RouteInfo_getVolumeMax(Ljava/lang/Object;)I
    .registers 2
    .parameter "routeInfo"

    .prologue
    .line 208
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    return v0
.end method

.method public static RouteInfo_requestSetVolume(Ljava/lang/Object;I)V
    .registers 2
    .parameter "routeInfo"
    .parameter "volume"

    .prologue
    .line 212
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 213
    return-void
.end method

.method public static RouteInfo_requestUpdateVolume(Ljava/lang/Object;I)V
    .registers 2
    .parameter "routeInfo"
    .parameter "direction"

    .prologue
    .line 216
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 217
    return-void
.end method

.method public static RouteInfo_setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .parameter "routeInfo"
    .parameter "tag"

    .prologue
    .line 196
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public static UserRouteInfo_setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "info"
    .parameter "name"

    .prologue
    .line 117
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public static UserRouteInfo_setPlaybackType(Ljava/lang/Object;I)V
    .registers 2
    .parameter "userRouteInfo"
    .parameter "type"

    .prologue
    .line 240
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 241
    return-void
.end method

.method public static UserRouteInfo_setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "info"
    .parameter "status"

    .prologue
    .line 121
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatus(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public static UserRouteInfo_setVolume(Ljava/lang/Object;I)V
    .registers 2
    .parameter "userRouteInfo"
    .parameter "volume"

    .prologue
    .line 232
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 233
    return-void
.end method

.method public static UserRouteInfo_setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V
    .registers 3
    .parameter "userRouteInfo"
    .parameter "cb"

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, shim:Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;
    if-eqz p1, :cond_8

    .line 255
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;

    .end local v0           #shim:Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;
    invoke-direct {v0, p1}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;-><init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V

    .line 257
    .restart local v0       #shim:Lcom/android/athome/picker/media/MediaRouterCompatJellybean$VolumeCallbackShim;
    :cond_8
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 258
    return-void
.end method

.method public static UserRouteInfo_setVolumeHandling(Ljava/lang/Object;I)V
    .registers 2
    .parameter "userRouteInfo"
    .parameter "volumeHandling"

    .prologue
    .line 244
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 245
    return-void
.end method

.method public static UserRouteInfo_setVolumeMax(Ljava/lang/Object;I)V
    .registers 2
    .parameter "userRouteInfo"
    .parameter "volumeMax"

    .prologue
    .line 236
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 237
    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 5
    .parameter "router"
    .parameter "types"
    .parameter "cb"

    .prologue
    .line 50
    iget-object v1, p2, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->mCallbackShim:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 51
    iget-object v0, p2, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->mCallbackShim:Ljava/lang/Object;

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;

    .line 56
    .local v0, shim:Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;
    :goto_8
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 57
    return-void

    .line 53
    .end local v0           #shim:Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;
    .restart local p0
    :cond_e
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;

    invoke-direct {v0, p2}, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;-><init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 54
    .restart local v0       #shim:Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;
    iput-object v0, p2, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->mCallbackShim:Ljava/lang/Object;

    goto :goto_8
.end method

.method public static addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 69
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 70
    return-void
.end method

.method public static createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "name"
    .parameter "isGroupable"

    .prologue
    .line 93
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "routeCategory"

    .prologue
    .line 89
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static forApplication(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "index"

    .prologue
    .line 85
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "router"

    .prologue
    .line 81
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getCategoryCount()I

    move-result v0

    return v0
.end method

.method public static getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "index"

    .prologue
    .line 41
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getRouteCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "router"

    .prologue
    .line 37
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    return v0
.end method

.method public static getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "type"

    .prologue
    .line 45
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isRouteCateory(Ljava/lang/Object;)Z
    .registers 2
    .parameter "obj"

    .prologue
    .line 273
    instance-of v0, p0, Landroid/media/MediaRouter$RouteCategory;

    return v0
.end method

.method public static isRouteInfo(Ljava/lang/Object;)Z
    .registers 2
    .parameter "obj"

    .prologue
    .line 261
    instance-of v0, p0, Landroid/media/MediaRouter$RouteInfo;

    return v0
.end method

.method public static removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 3
    .parameter "router"
    .parameter "cb"

    .prologue
    .line 60
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    iget-object v0, p1, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->mCallbackShim:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->mCallbackShim:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 73
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 74
    return-void
.end method

.method public static selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "types"
    .parameter "route"

    .prologue
    .line 65
    check-cast p0, Landroid/media/MediaRouter;

    .end local p0
    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 66
    return-void
.end method
