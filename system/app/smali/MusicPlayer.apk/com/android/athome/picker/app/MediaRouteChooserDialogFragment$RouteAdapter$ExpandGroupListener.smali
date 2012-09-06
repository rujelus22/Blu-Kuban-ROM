.class Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandGroupListener"
.end annotation


# instance fields
.field position:I

.field final synthetic this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iget v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->position:I

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 562
    .local v0, group:Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    #setter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$502(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #setter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$602(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iget-object v1, v1, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v1, v1, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iget-object v2, v2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v2}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$500(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 569
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->scrollToEditingGroup()V

    .line 570
    return-void
.end method
