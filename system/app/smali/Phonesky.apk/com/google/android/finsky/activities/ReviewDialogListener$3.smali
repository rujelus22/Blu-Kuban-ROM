.class Lcom/google/android/finsky/activities/ReviewDialogListener$3;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialogListener;->onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field final synthetic val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialogListener;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    const v1, 0x7f07017f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewDialogListener;->toast(II)V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    sget-object v1, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->SPAM:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-ne v0, v1, :cond_21

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$100(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->invalidateCurrentReviewUrl()V

    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$100(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    .line 118
    :cond_21
    return-void
.end method
