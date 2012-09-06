.class Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/PhotoViewActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

.field final synthetic val$data:Landroid/database/Cursor;

.field final synthetic val$loader:Landroid/support/v4/content/Loader;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/database/Cursor;Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->val$data:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->val$loader:Landroid/support/v4/content/Loader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 614
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$000(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 615
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRestartLoader:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$102(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Z)Z

    .line 635
    :goto_f
    return-void

    .line 618
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #setter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z
    invoke-static {v1, v4}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$202(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Z)Z

    .line 621
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoIndex:I
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$300(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)I

    move-result v0

    .line 622
    .local v0, itemIndex:I
    if-gez v0, :cond_33

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$400(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 623
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->val$data:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$400(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v3

    #calls: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getCursorPosition(Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$500(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I

    move-result v0

    .line 627
    :cond_33
    if-gez v0, :cond_36

    .line 628
    const/4 v0, 0x0

    .line 631
    :cond_36
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$600(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->val$loader:Landroid/support/v4/content/Loader;

    check-cast v1, Lcom/google/android/apps/plus/phone/Pageable;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->setPageable(Lcom/google/android/apps/plus/phone/Pageable;)V

    .line 632
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$600(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->val$data:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 633
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$700(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$800(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/view/View;)V

    .line 634
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$900(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/views/PhotoViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/google/android/apps/plus/views/PhotoViewPager;->setCurrentItem(IZ)V

    goto :goto_f
.end method
