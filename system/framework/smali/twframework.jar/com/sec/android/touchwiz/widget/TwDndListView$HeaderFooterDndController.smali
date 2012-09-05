.class Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .registers 3
    .parameter
    .parameter "wrappedController"

    .prologue
    .line 734
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 736
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .registers 5
    .parameter "startPos"

    .prologue
    const/4 v0, 0x0

    .line 739
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v1, :cond_d

    .line 740
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p1, v1, :cond_e

    .line 748
    :cond_d
    :goto_d
    return v0

    .line 742
    :cond_e
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_d

    .line 746
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_d
.end method

.method public allowDrop(II)Z
    .registers 6
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    const/4 v0, 0x0

    .line 752
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v1, :cond_d

    .line 753
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p2, v1, :cond_e

    .line 760
    :cond_d
    :goto_d
    return v0

    .line 755
    :cond_e
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_d

    .line 758
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    goto :goto_d
.end method

.method public dropDone(II)V
    .registers 6
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v0, :cond_27

    .line 765
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_28

    .line 767
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result p2

    .line 773
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 775
    :cond_27
    return-void

    .line 768
    :cond_28
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_12

    .line 770
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_12
.end method
