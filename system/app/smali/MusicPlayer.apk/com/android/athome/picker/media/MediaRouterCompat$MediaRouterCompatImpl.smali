.class interface abstract Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;
.super Ljava/lang/Object;
.source "MediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaRouterCompatImpl"
.end annotation


# virtual methods
.method public abstract RouteCategory_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract RouteCategory_getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract RouteCategory_isGroupable(Ljava/lang/Object;)Z
.end method

.method public abstract RouteGroup_addRoute(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract RouteGroup_getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract RouteGroup_getRouteCount(Ljava/lang/Object;)I
.end method

.method public abstract RouteGroup_removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract RouteGroup_removeRouteAt(Ljava/lang/Object;I)V
.end method

.method public abstract RouteInfo_getCategory(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract RouteInfo_getGroup(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract RouteInfo_getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract RouteInfo_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract RouteInfo_getPlaybackType(Ljava/lang/Object;)I
.end method

.method public abstract RouteInfo_getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract RouteInfo_getTag(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract RouteInfo_getVolume(Ljava/lang/Object;)I
.end method

.method public abstract RouteInfo_getVolumeHandling(Ljava/lang/Object;)I
.end method

.method public abstract RouteInfo_getVolumeMax(Ljava/lang/Object;)I
.end method

.method public abstract RouteInfo_requestSetVolume(Ljava/lang/Object;I)V
.end method

.method public abstract RouteInfo_requestUpdateVolume(Ljava/lang/Object;I)V
.end method

.method public abstract RouteInfo_setTag(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract UserRouteInfo_setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract UserRouteInfo_setPlaybackType(Ljava/lang/Object;I)V
.end method

.method public abstract UserRouteInfo_setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract UserRouteInfo_setVolume(Ljava/lang/Object;I)V
.end method

.method public abstract UserRouteInfo_setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V
.end method

.method public abstract UserRouteInfo_setVolumeHandling(Ljava/lang/Object;I)V
.end method

.method public abstract UserRouteInfo_setVolumeMax(Ljava/lang/Object;I)V
.end method

.method public abstract addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
.end method

.method public abstract addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
.end method

.method public abstract createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract forApplication(Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public abstract getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract getCategoryCount(Ljava/lang/Object;)I
.end method

.method public abstract getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract getRouteCount(Ljava/lang/Object;)I
.end method

.method public abstract getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract isRouteCategory(Ljava/lang/Object;)Z
.end method

.method public abstract isRouteInfo(Ljava/lang/Object;)Z
.end method

.method public abstract removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
.end method

.method public abstract removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
.end method
