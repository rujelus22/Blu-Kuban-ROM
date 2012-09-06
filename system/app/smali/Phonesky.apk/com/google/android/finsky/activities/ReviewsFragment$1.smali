.class Lcom/google/android/finsky/activities/ReviewsFragment$1;
.super Ljava/lang/Object;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewsFragment;->onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsFragment;

.field final synthetic val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsFragment;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragment$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewsFragment$1;->val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFragment;

    const v1, 0x7f07017f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewsFragment;->toast(II)V

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment$1;->val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    sget-object v1, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->SPAM:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-ne v0, v1, :cond_14

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFragment;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragment;->reloadReviews()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragment;->access$000(Lcom/google/android/finsky/activities/ReviewsFragment;)V

    .line 211
    :cond_14
    return-void
.end method
