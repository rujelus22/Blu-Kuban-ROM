.class Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;
.source "MediaRouteChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 589
    return-void
.end method

.method public onRouteChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->notifyDataSetChanged()V

    .line 602
    return-void
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .parameter "router"
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 608
    return-void
.end method

.method public onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$500(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_15

    .line 594
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->finishGrouping()V

    .line 596
    :cond_15
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 597
    return-void
.end method

.method public onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 578
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->updateVolume()V

    .line 579
    return-void
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "info"
    .parameter "group"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 613
    return-void
.end method

.method public onRouteUnselected(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 584
    return-void
.end method

.method public onRouteVolumeChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "info"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$800(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 618
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->updateVolume()V

    .line 620
    :cond_d
    return-void
.end method
