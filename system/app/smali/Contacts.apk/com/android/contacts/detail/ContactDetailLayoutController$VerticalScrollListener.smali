.class final Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VerticalScrollListener"
.end annotation


# instance fields
.field private final mPageIndex:I

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V
    .registers 3
    .parameter
    .parameter "pageIndex"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput p2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->mPageIndex:I

    .line 561
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 11
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 566
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 571
    .local v1, currentPageIndex:I
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)I

    move-result v3

    if-nez v3, :cond_26

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->mPageIndex:I

    if-ne v3, v1, :cond_26

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$700(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 589
    :cond_26
    :goto_26
    return-void

    .line 577
    :cond_27
    if-eqz p2, :cond_41

    .line 578
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->mPageIndex:I

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getAllowedVerticalScrollLength()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->moveToYCoordinate(IF)V

    goto :goto_26

    .line 582
    :cond_41
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 583
    .local v2, topView:Landroid/view/View;
    if-eqz v2, :cond_26

    .line 586
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getAllowedVerticalScrollLength()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 588
    .local v0, amtToScroll:I
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->mPageIndex:I

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->moveToYCoordinate(IF)V

    goto :goto_26
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 598
    if-nez p2, :cond_9

    .line 599
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;->mPageIndex:I

    #calls: Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    .line 601
    :cond_9
    return-void
.end method
