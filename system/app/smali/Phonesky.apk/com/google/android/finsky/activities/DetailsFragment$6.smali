.class Lcom/google/android/finsky/activities/DetailsFragment$6;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;

.field final synthetic val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$6;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsFragment$6;->val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$6;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    const v1, 0x7f070145

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsFragment;->toast(II)V

    .line 825
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$6;->val$newRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    sget-object v1, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->SPAM:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-ne v0, v1, :cond_2e

    .line 826
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment$6;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateReviewsCache(Ljava/lang/String;Z)V

    .line 828
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$6;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    #getter for: Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->access$200(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    .line 830
    :cond_2e
    return-void
.end method
