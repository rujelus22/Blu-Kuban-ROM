.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerticalViewShifter"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;->mView:Landroid/view/View;

    .line 636
    return-void
.end method


# virtual methods
.method public getShift()I
    .registers 4

    .prologue
    .line 657
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 659
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_10

    move-object v0, v1

    .line 660
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 661
    .local v0, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 663
    .end local v0           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public setShift(I)V
    .registers 5
    .parameter "shift"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 643
    .local v0, carouselParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_17

    move-object v1, v0

    .line 644
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 645
    .local v1, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 646
    neg-int v2, p1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 647
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    .end local v1           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_17
    return-void
.end method
