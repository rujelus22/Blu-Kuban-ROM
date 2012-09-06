.class Lcom/google/android/finsky/activities/DetailsFragment$1;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->trackLeftColumnScrollingIfNecessary(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;

.field final synthetic val$leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

.field final synthetic val$leftColumnSummary:Landroid/view/View;

.field final synthetic val$leftColumnSummaryStrip:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;Landroid/view/View;Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummary:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummaryStrip:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 9
    .parameter "left"
    .parameter "top"

    .prologue
    .line 843
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummary:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 844
    .local v2, summaryBottom:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getSummaryBottom()I

    move-result v0

    .line 845
    .local v0, newSummaryBottom:I
    if-eq v2, v0, :cond_15

    .line 847
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummary:Landroid/view/View;

    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 850
    :cond_15
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummaryStrip:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 851
    .local v3, summaryStripTop:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->getSummaryStripTop()I

    move-result v1

    .line 852
    .local v1, newSummaryStripTop:I
    if-eq v3, v1, :cond_2a

    .line 854
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummaryStrip:Landroid/view/View;

    sub-int v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 857
    :cond_2a
    return-void
.end method
