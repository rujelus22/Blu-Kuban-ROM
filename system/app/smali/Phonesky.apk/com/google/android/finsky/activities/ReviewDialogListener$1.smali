.class Lcom/google/android/finsky/activities/ReviewDialogListener$1;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialogListener;->onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
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
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$rating:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialogListener;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    iput p2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$rating:I

    iput-object p3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V
    .registers 11
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    const v1, 0x7f070173

    invoke-virtual {v0, v1, v7}, Lcom/google/android/finsky/activities/ReviewDialogListener;->toast(II)V

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$100(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->invalidateCurrentReviewUrl()V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$100(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$200(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/layout/OwnedActions;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$200(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/layout/OwnedActions;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$rating:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OwnedActions;->updateRating(I)V

    .line 75
    :cond_4c
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$300(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v6

    .line 76
    .local v6, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    if-nez v6, :cond_62

    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$300(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->initializeUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v6

    .line 82
    :cond_62
    iget v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$rating:I

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$comment:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$200(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/layout/OwnedActions;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$200(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/layout/OwnedActions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v2}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$300(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v3}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$400(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mParentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$500(Lcom/google/android/finsky/activities/ReviewDialogListener;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iget-object v8, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v8}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$300(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v8

    if-eqz v8, :cond_af

    iget-object v8, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v8}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$300(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v8

    if-eqz v8, :cond_af

    :goto_ab
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/OwnedActions;->setDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V

    .line 91
    .end local v6           #review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_ae
    return-void

    .restart local v6       #review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_af
    move v5, v7

    .line 87
    goto :goto_ab
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V

    return-void
.end method
