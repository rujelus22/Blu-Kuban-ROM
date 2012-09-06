.class Lcom/google/android/finsky/layout/ReviewsControlContainer$1;
.super Ljava/lang/Object;
.source "ReviewsControlContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ReviewsControlContainer;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ReviewsControlContainer;

.field final synthetic val$data:Lcom/google/android/finsky/api/model/DfeReviews;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ReviewsControlContainer;Lcom/google/android/finsky/api/model/DfeReviews;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;->this$0:Lcom/google/android/finsky/layout/ReviewsControlContainer;

    iput-object p2, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;->val$data:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;->val$data:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_7

    .line 42
    packed-switch p3, :pswitch_data_1e

    .line 54
    :cond_7
    :goto_7
    return-void

    .line 44
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;->val$data:Lcom/google/android/finsky/api/model/DfeReviews;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeReviews;->setSortType(I)V

    goto :goto_7

    .line 47
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;->val$data:Lcom/google/android/finsky/api/model/DfeReviews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeReviews;->setSortType(I)V

    goto :goto_7

    .line 50
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;->val$data:Lcom/google/android/finsky/api/model/DfeReviews;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeReviews;->setSortType(I)V

    goto :goto_7

    .line 42
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_f
        :pswitch_16
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
