.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->registerListener()V
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
    .line 695
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "v"

    .prologue
    const/4 v12, 0x5

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 698
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, strCityName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14d

    .line 702
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V
    invoke-static {v5, v11}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V

    .line 703
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v4, templist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_52

    .line 707
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, mCity:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 710
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 714
    .end local v2           #mCity:Ljava/lang/String;
    :cond_52
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_127

    .line 716
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v5, v12}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$402(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    .line 717
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V
    invoke-static {v5, v11}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V

    .line 718
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v6, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 719
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    .line 721
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 722
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v8, v8, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v9, v9, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;I)V

    iput-object v6, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 723
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v6, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 725
    .local v1, info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->koids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_cd

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getZoomLevel()I

    move-result v5

    const/16 v6, 0x9

    if-le v5, v6, :cond_107

    .line 727
    :cond_cd
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getPoint(DD)Lcom/google/android/maps/GeoPoint;
    invoke-static {v6, v7, v8, v9, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 731
    :goto_f0
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 742
    .end local v1           #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :cond_fd
    :goto_fd
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 748
    .end local v0           #i:I
    .end local v4           #templist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :goto_106
    return-void

    .line 730
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .restart local v4       #templist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :cond_107
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v6, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->kolocation:[Lcom/google/android/maps/GeoPoint;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->koids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_f0

    .line 733
    .end local v1           #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :cond_127
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_141

    .line 735
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    .line 736
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v6, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showResult(Ljava/util/ArrayList;)V
    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1500(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V

    goto :goto_fd

    .line 738
    :cond_141
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_fd

    .line 740
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->performSearch()V
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    goto :goto_fd

    .line 746
    .end local v0           #i:I
    .end local v4           #templist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :cond_14d
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const v6, 0x7f090079

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_106
.end method
