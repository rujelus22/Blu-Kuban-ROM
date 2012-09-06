.class public Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;
.source "AbsMediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/AbsMediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 180
    return-void
.end method

.method public onRouteChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 190
    return-void
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5
    .parameter "router"
    .parameter "routeInfo"
    .parameter "routeGroup"
    .parameter "index"

    .prologue
    .line 195
    return-void
.end method

.method public onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "routeInfo"

    .prologue
    .line 185
    return-void
.end method

.method public onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "type"
    .parameter "routeInfo"

    .prologue
    .line 170
    return-void
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "routeInfo"
    .parameter "routeGroup"

    .prologue
    .line 200
    return-void
.end method

.method public onRouteUnselected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "type"
    .parameter "routeInfo"

    .prologue
    .line 175
    return-void
.end method

.method public onRouteVolumeChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "info"

    .prologue
    .line 205
    return-void
.end method
