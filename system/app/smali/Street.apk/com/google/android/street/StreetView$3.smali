.class Lcom/google/android/street/StreetView$3;
.super Ljava/lang/Object;
.source "StreetView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/street/StreetView;->initialize(Lcom/google/android/street/Street;Lcom/google/android/street/PanoramaManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/street/StreetView;


# direct methods
.method constructor <init>(Lcom/google/android/street/StreetView;)V
    .registers 2
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 582
    if-eqz p1, :cond_8

    .line 583
    iget-object v0, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    #calls: Lcom/google/android/street/StreetView;->updateButtonsEnabled()V
    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$1200(Lcom/google/android/street/StreetView;)V

    .line 588
    :goto_7
    return-void

    .line 586
    :cond_8
    iget-object v0, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    #getter for: Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$1300(Lcom/google/android/street/StreetView;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    goto :goto_7
.end method

.method public onZoom(Z)V
    .registers 4
    .parameter "zoomIn"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    if-eqz p1, :cond_a

    const/high16 v1, 0x3f80

    :goto_6
    #calls: Lcom/google/android/street/StreetView;->smoothZoom(F)V
    invoke-static {v0, v1}, Lcom/google/android/street/StreetView;->access$1400(Lcom/google/android/street/StreetView;F)V

    .line 592
    return-void

    .line 591
    :cond_a
    const/high16 v1, -0x4080

    goto :goto_6
.end method
