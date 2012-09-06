.class Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;
.super Landroid/media/MediaRouter$Callback;
.source "MediaRouterCompatJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompatJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackShim"
.end annotation


# instance fields
.field private mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    .line 281
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .registers 6
    .parameter "router"
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 311
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 286
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .registers 5
    .parameter "router"
    .parameter "info"
    .parameter "group"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteUnselected(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterCompatJellybean$CallbackShim;->mAppCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteVolumeChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    return-void
.end method
