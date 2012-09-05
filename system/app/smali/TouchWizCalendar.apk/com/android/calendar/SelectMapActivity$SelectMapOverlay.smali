.class Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectMapOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/SelectMapActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "defaultMarker"

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    .line 958
    invoke-static {p3}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 960
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;-><init>(Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 966
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 968
    return-void
.end method

.method static synthetic access$1200(Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .registers 3
    .parameter "overlay"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 978
    return-void
.end method

.method public clearOverlay()V
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 986
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 988
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .registers 3
    .parameter "i"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .registers 5
    .parameter "c"
    .parameter "v"
    .parameter "b"

    .prologue
    .line 996
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 998
    return-void
.end method

.method protected onTap(I)Z
    .registers 6
    .parameter "index"

    .prologue
    .line 1026
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    .line 1030
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v2}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 1032
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    iget-object v2, v2, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 1034
    .local v0, center:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_37

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_37

    .line 1038
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    invoke-virtual {v2}, Lcom/android/calendar/SelectMapActivity;->captureMap()Z

    .line 1040
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    invoke-virtual {v2}, Lcom/android/calendar/SelectMapActivity;->doFinish()V

    .line 1048
    :goto_35
    const/4 v2, 0x1

    return v2

    .line 1044
    :cond_37
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    #calls: Lcom/android/calendar/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    invoke-static {v2, v1}, Lcom/android/calendar/SelectMapActivity;->access$1100(Lcom/android/calendar/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z

    goto :goto_35
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .registers 6
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 1058
    const/4 v1, 0x0

    .line 1064
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 1070
    :try_start_9
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_c} :catch_e

    move-result v1

    .line 1082
    :cond_d
    :goto_d
    return v1

    .line 1072
    :catch_e
    move-exception v0

    .line 1074
    .local v0, oobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 4
    .parameter "ev"
    .parameter "mapView"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
