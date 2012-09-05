.class Lcom/google/android/finsky/activities/DetailsFragment$1;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->rebindViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;

.field final synthetic val$leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;

.field final synthetic val$leftColumnSummary:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;Landroid/view/View;Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummary:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 7
    .parameter "left"
    .parameter "top"

    .prologue
    .line 301
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummary:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 302
    .local v1, summaryTop:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getSummaryTop()I

    move-result v0

    .line 303
    .local v0, newSummaryTop:I
    if-eq v1, v0, :cond_15

    .line 305
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$leftColumnSummary:Landroid/view/View;

    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 307
    :cond_15
    return-void
.end method
