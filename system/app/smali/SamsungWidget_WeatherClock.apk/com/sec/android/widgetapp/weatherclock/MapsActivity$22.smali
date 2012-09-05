.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;
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
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    .line 978
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "RESPONSE_BODY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, body:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "RESPONSE_CODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 981
    .local v3, result:I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_db

    .line 983
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather_LocCities(ILjava/lang/String;Lorg/xml/sax/InputSource;)Ljava/util/ArrayList;

    move-result-object v2

    .line 984
    .local v2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    if-eqz v2, :cond_3f

    .line 986
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_40

    .line 1022
    .end local v2           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :cond_3f
    :goto_3f
    return-void

    .line 991
    .restart local v2       #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :cond_40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    .line 993
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 994
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V
    invoke-static {v4, v9}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V

    .line 995
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 997
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 998
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v7, v7, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-direct {v5, v6, v2, v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;I)V

    iput-object v5, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 999
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    if-eqz v4, :cond_d1

    .line 1000
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1004
    :goto_83
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iput-object v2, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    .line 1005
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1007
    .local v0, a:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getPoint(DD)Lcom/google/android/maps/GeoPoint;
    invoke-static {v5, v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 1008
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapController;->setZoom(I)I

    goto/16 :goto_3f

    .line 1002
    .end local v0           #a:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :cond_d1
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    goto :goto_83

    .line 1019
    .end local v2           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :cond_db
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 1020
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const v5, 0x7f09001d

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto/16 :goto_3f
.end method
