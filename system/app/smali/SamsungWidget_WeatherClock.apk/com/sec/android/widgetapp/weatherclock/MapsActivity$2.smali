.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$2;
.super Lcom/google/android/maps/Overlay;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x3

    .line 331
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 332
    .local v0, gp:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v1

    if-ge v1, v2, :cond_1d

    .line 333
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 334
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 338
    :goto_19
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 339
    return-void

    .line 336
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_19
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .registers 11
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x3

    .line 317
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 318
    .local v0, gp:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v1

    if-ge v1, v2, :cond_1e

    .line 319
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 320
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 324
    :goto_19
    invoke-super/range {p0 .. p5}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    move-result v1

    return v1

    .line 322
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_19
.end method
