.class Lcom/android/athome/picker/media/MediaRouteButtonCompatJellybean;
.super Ljava/lang/Object;
.source "MediaRouteButtonCompatJellybean.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setRouteTypes(Landroid/view/View;I)V
    .registers 2
    .parameter "mediaButton"
    .parameter "types"

    .prologue
    .line 38
    check-cast p0, Landroid/app/MediaRouteButton;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 39
    return-void
.end method
