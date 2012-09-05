.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;
.super Landroid/os/Handler;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field running:Z

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->running:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x0

    .line 405
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->running:Z

    if-eqz v2, :cond_b

    .line 406
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v7, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->sendEmptyMessageDelayed(IJ)Z

    .line 408
    :cond_b
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_ec

    .line 410
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->running:Z

    .line 411
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    if-nez v2, :cond_52

    .line 413
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    .line 414
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v2, v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$402(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    .line 415
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 417
    .local v0, c:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getZoomlevel()I

    move-result v2

    if-ne v2, v4, :cond_38

    .line 419
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 425
    .end local v0           #c:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_52
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getZoomLevel()I

    move-result v3

    if-eq v2, v3, :cond_ec

    .line 427
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getZoomLevel()I

    move-result v3

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$402(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    .line 429
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_82
    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 431
    .restart local v0       #c:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getZoomlevel()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v3

    if-gt v2, v3, :cond_82

    .line 433
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 436
    .end local v0           #c:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :cond_a2
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->clonelist:Ljava/util/ArrayList;

    .line 443
    :cond_b0
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 446
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v6, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;I)V

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 447
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;->running:Z

    .line 450
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_ec
    return-void
.end method
