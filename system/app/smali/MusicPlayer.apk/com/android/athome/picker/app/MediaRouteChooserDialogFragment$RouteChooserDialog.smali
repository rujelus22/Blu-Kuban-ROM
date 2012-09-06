.class Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;
.super Landroid/app/Dialog;
.source "MediaRouteChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RouteChooserDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    .line 633
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->setCanceledOnTouchOutside(Z)V

    .line 635
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->isGrouping()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 640
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->finishGrouping()V

    .line 644
    :goto_1d
    return-void

    .line 642
    :cond_1e
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_1d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 647
    const/16 v1, 0x19

    if-ne p1, v1, :cond_24

    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$900(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 648
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v1, v1, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v2}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->requestUpdateVolume(Ljava/lang/Object;I)V

    .line 656
    :goto_23
    return v0

    .line 651
    :cond_24
    const/16 v1, 0x18

    if-ne p1, v1, :cond_46

    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$900(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 652
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v1, v1, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v2}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->requestUpdateVolume(Ljava/lang/Object;I)V

    goto :goto_23

    .line 656
    :cond_46
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 661
    const/16 v1, 0x19

    if-ne p1, v1, :cond_12

    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$900(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 666
    :cond_11
    :goto_11
    return v0

    .line 663
    :cond_12
    const/16 v1, 0x18

    if-ne p1, v1, :cond_22

    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$900(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 666
    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method
