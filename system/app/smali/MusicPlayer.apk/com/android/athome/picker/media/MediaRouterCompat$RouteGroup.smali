.class public Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;
.super Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;
.source "MediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteGroup"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;-><init>()V

    return-void
.end method

.method public static addRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 1125
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteGroup_addRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    return-void
.end method

.method public static getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "groupInfo"
    .parameter "index"

    .prologue
    .line 1175
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteGroup_getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getRouteCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "groupInfo"

    .prologue
    .line 1164
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteGroup_getRouteCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "groupInfo"
    .parameter "routeInfo"

    .prologue
    .line 1146
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteGroup_removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1147
    return-void
.end method

.method public static removeRouteAt(Ljava/lang/Object;I)V
    .registers 3
    .parameter "groupInfo"
    .parameter "index"

    .prologue
    .line 1156
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteGroup_removeRouteAt(Ljava/lang/Object;I)V

    .line 1157
    return-void
.end method
