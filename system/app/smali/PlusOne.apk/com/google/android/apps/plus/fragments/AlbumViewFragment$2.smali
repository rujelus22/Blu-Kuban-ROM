.class Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;
.super Ljava/lang/Object;
.source "AlbumViewFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

.field final synthetic val$emptyProgressView:Landroid/view/View;

.field final synthetic val$hasResults:Z

.field final synthetic val$refreshInProgress:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;ZZLandroid/view/View;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->val$refreshInProgress:Z

    iput-boolean p3, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->val$hasResults:Z

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->val$emptyProgressView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 549
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const v5, 0x7f0d0024

    invoke-virtual {v4, v5}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    .local v1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    move-object v0, v1

    .line 551
    check-cast v0, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    .line 552
    .local v0, albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    if-nez v0, :cond_28

    move v2, v3

    .line 554
    .local v2, loadingMore:Z
    :goto_14
    if-eqz v2, :cond_2d

    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->val$refreshInProgress:Z

    if-eqz v4, :cond_1e

    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->val$hasResults:Z

    if-eqz v4, :cond_2d

    .line 556
    .local v3, shouldBeVisible:Z
    :cond_1e
    :goto_1e
    if-nez v3, :cond_27

    .line 557
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;->val$emptyProgressView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 559
    :cond_27
    return-void

    .line 552
    .end local v2           #loadingMore:Z
    .end local v3           #shouldBeVisible:Z
    :cond_28
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->isLoadingMore()Z

    move-result v2

    goto :goto_14

    .line 554
    .restart local v2       #loadingMore:Z
    :cond_2d
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 545
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 541
    return-void
.end method
