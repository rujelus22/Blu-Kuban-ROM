.class final Lcom/android/athome/picker/media/t;
.super Landroid/media/MediaRouter$Callback;
.source "SourceFile"


# instance fields
.field private a:Lcom/android/athome/picker/media/b;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/b;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    .line 281
    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p2}, Lcom/android/athome/picker/media/b;->a(Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public final onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p2}, Lcom/android/athome/picker/media/b;->c(Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public final onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p2, p3}, Lcom/android/athome/picker/media/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public final onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p2}, Lcom/android/athome/picker/media/b;->b(Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public final onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/athome/picker/media/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 286
    return-void
.end method

.method public final onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p2, p3}, Lcom/android/athome/picker/media/b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method public final onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p2, p3}, Lcom/android/athome/picker/media/b;->a(ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public final onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/athome/picker/media/t;->a:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/b;->a()V

    .line 321
    return-void
.end method
