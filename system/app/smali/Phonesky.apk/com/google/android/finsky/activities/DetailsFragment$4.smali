.class Lcom/google/android/finsky/activities/DetailsFragment$4;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;

.field final synthetic val$rating:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$4;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    iput p2, p0, Lcom/google/android/finsky/activities/DetailsFragment$4;->val$rating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 792
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment$4;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    const v2, 0x7f070139

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsFragment;->toast(II)V

    .line 793
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment$4;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 794
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_44

    .line 795
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/google/android/finsky/api/DfeApi;->invalidateReviewsCache(Ljava/lang/String;Z)V

    .line 796
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 798
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment$4;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    #getter for: Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    invoke-static {v1}, Lcom/google/android/finsky/activities/DetailsFragment;->access$200(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    .line 799
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment$4;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    #getter for: Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;
    invoke-static {v1}, Lcom/google/android/finsky/activities/DetailsFragment;->access$300(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/layout/RateReviewSection;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/DetailsFragment$4;->val$rating:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/RateReviewSection;->updateRating(I)V

    .line 801
    :cond_44
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 788
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DetailsFragment$4;->onResponse(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)V

    return-void
.end method
