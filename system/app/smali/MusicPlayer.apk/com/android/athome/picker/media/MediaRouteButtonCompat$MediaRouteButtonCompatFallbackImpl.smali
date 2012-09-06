.class Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatFallbackImpl;
.super Ljava/lang/Object;
.source "MediaRouteButtonCompat.java"

# interfaces
.implements Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouteButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaRouteButtonCompatFallbackImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRouteTypes(Landroid/view/View;I)V
    .registers 3
    .parameter "mediaButton"
    .parameter "types"

    .prologue
    .line 47
    check-cast p1, Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setRouteTypes(I)V

    .line 48
    return-void
.end method
