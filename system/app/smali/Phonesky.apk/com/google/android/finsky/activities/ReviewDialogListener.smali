.class public Lcom/google/android/finsky/activities/ReviewDialogListener;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

.field private final mParentFragment:Landroid/support/v4/app/Fragment;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/OwnedActions;)V
    .registers 8
    .parameter "context"
    .parameter "navManager"
    .parameter "parentFragment"
    .parameter "document"
    .parameter "detailsData"
    .parameter "reviewBinder"
    .parameter "ownedActions"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 44
    iput-object p3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 45
    iput-object p4, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 46
    iput-object p6, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    .line 47
    iput-object p5, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 48
    iput-object p7, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/layout/OwnedActions;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/api/model/DfeDetails;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/ReviewDialogListener;)Landroid/support/v4/app/Fragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mParentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "docId"
    .parameter "rating"
    .parameter "title"
    .parameter "comment"

    .prologue
    .line 58
    const v0, 0x7f070172

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/ReviewDialogListener;->toast(II)V

    .line 59
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v5, Lcom/google/android/finsky/activities/ReviewDialogListener$1;

    invoke-direct {v5, p0, p2, p3, p4}, Lcom/google/android/finsky/activities/ReviewDialogListener$1;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/finsky/activities/ReviewDialogListener$2;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$2;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 98
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 7
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 107
    const v1, 0x7f07017e

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/activities/ReviewDialogListener;->toast(II)V

    .line 108
    new-instance v0, Lcom/google/android/finsky/api/model/DfeRateReview;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getRpcId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/finsky/api/model/DfeRateReview;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    .local v0, request:Lcom/google/android/finsky/api/model/DfeRateReview;
    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialogListener$3;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener$3;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 120
    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialogListener$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$4;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 126
    return-void
.end method

.method protected toast(II)V
    .registers 4
    .parameter "resourceId"
    .parameter "duration"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    return-void
.end method
