.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showResult(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

.field final synthetic val$citylist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->val$citylist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 1071
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V

    .line 1072
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->val$citylist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog_selected:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1073
    .local v0, i:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->val$citylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1074
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->val$citylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1077
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    if-eqz v2, :cond_93

    .line 1078
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->val$citylist:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v6, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->getCurrentUint()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;I)V

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 1083
    :goto_48
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->val$citylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1085
    .local v1, info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getPoint(DD)Lcom/google/android/maps/GeoPoint;
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 1086
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 1087
    return-void

    .line 1080
    .end local v1           #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :cond_93
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->val$citylist:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v6, v6, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;I)V

    iput-object v3, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    goto :goto_48
.end method
