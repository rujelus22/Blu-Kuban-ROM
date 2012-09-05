.class Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;
.super Ljava/lang/Object;
.source "ReviewsFragmentXLarge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->configureViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setFormEnabled(Z)V
    invoke-static {v0, v7}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$100(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;Z)V

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, docId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #getter for: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$500(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #getter for: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$600(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, content:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #getter for: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$700(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    float-to-int v4, v0

    .line 194
    .local v4, docRating:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #getter for: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mListener:Lcom/android/volley/Response$Listener;
    invoke-static {v5}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$800(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #getter for: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mErrorListener:Lcom/android/volley/Response$ErrorListener;
    invoke-static {v6}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$900(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v5, 0x7f070138

    invoke-static {v0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method
