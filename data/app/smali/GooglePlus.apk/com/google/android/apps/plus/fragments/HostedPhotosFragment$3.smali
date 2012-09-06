.class Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;
.super Ljava/lang/Object;
.source "HostedPhotosFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDeselected(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "position"

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz p1, :cond_9

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 475
    .restart local v0       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_9
    if-nez v0, :cond_15

    .line 476
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getMediaRefForItem(I)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v0

    .line 479
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$500(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 480
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->invalidateContextualActionBar()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V

    .line 481
    return-void
.end method

.method public onItemSelected(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "position"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz p1, :cond_9

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 456
    .restart local v0       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_9
    if-nez v0, :cond_1a

    .line 457
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getMediaRefForItem(I)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v0

    .line 458
    if-eqz p1, :cond_1a

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 463
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$500(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->invalidateContextualActionBar()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V

    .line 465
    return-void
.end method
