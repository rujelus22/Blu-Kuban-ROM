.class Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;


# direct methods
.method constructor <init>(Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 1106
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    iget-object v1, v1, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 1116
    .local v0, point:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    #getter for: Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->access$1200(Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1118
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    const-string v4, "here"

    #calls: Lcom/android/calendar/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/SelectMapActivity;->access$600(Lcom/android/calendar/SelectMapActivity;IILjava/lang/String;)Z

    .line 1120
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    #calls: Lcom/android/calendar/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    invoke-static {v1, v0}, Lcom/android/calendar/SelectMapActivity;->access$1100(Lcom/android/calendar/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z

    .line 1122
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/calendar/SelectMapActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/calendar/SelectMapActivity;->mResearch:Z
    invoke-static {v1, v2}, Lcom/android/calendar/SelectMapActivity;->access$1302(Lcom/android/calendar/SelectMapActivity;Z)Z

    .line 1124
    return-void
.end method
