.class Lcom/google/android/finsky/layout/RateReviewSection$1;
.super Ljava/lang/Object;
.source "RateReviewSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/RateReviewSection;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/RateReviewSection;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p4, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    iput-object p5, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 90
    iget-object v8, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 91
    .local v4, resources:Landroid/content/res/Resources;
    const/high16 v8, 0x7f09

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 93
    iget-object v7, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v8, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAllReviews(Lcom/google/android/finsky/api/model/Document;)V

    .line 113
    :cond_1b
    :goto_1b
    return-void

    .line 96
    :cond_1c
    iget-object v8, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 97
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v8, "review_dialog"

    invoke-virtual {v1, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 99
    .local v6, reviewsFragment:Landroid/support/v4/app/Fragment;
    if-nez v6, :cond_1b

    .line 103
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v2

    .line 104
    .local v2, metadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getCommentPostEnabled()Z

    move-result v8

    if-eqz v8, :cond_59

    move v0, v5

    .line 106
    .local v0, commentsEnabled:Z
    :goto_3f
    if-eqz v0, :cond_42

    const/4 v5, 0x2

    .line 108
    .local v5, reviewMode:I
    :cond_42
    iget-object v8, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-static {v5, v8, v9}, Lcom/google/android/finsky/activities/ReviewDialog;->newInstance(ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/activities/ReviewDialog;

    move-result-object v3

    .line 110
    .local v3, ratingDialog:Lcom/google/android/finsky/activities/ReviewDialog;
    iget-object v8, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v8, v7}, Lcom/google/android/finsky/activities/ReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 111
    const-string v7, "review_dialog"

    invoke-virtual {v3, v1, v7}, Lcom/google/android/finsky/activities/ReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1b

    .end local v0           #commentsEnabled:Z
    .end local v3           #ratingDialog:Lcom/google/android/finsky/activities/ReviewDialog;
    .end local v5           #reviewMode:I
    :cond_59
    move v0, v7

    .line 104
    goto :goto_3f
.end method
