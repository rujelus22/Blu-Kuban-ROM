.class Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryMagazinesViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->setupSubscriptionListOfferButton(Landroid/accounts/Account;Ljava/util/List;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;

.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$lowestOfferIndex:I

.field final synthetic val$offers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;Ljava/util/List;Ljava/util/ArrayList;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->val$offers:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->val$documents:Ljava/util/ArrayList;

    iput p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->val$lowestOfferIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 176
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;

    iget-object v3, v3, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 177
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v3, "magazine_offer_resolution_dialog"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 187
    :goto_10
    return-void

    .line 180
    :cond_11
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->val$offers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    const v2, 0x7f070127

    .line 183
    .local v2, titleResourceId:I
    :goto_1d
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->val$offers:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->val$documents:Ljava/util/ArrayList;

    iget v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->val$lowestOfferIndex:I

    invoke-static {v3, v4, v2, v5}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->newInstance(Ljava/util/List;Ljava/util/ArrayList;II)Lcom/google/android/finsky/activities/OfferResolutionDialog;

    move-result-object v0

    .line 185
    .local v0, dialog:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;

    iget-object v3, v3, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 186
    const-string v3, "magazine_offer_resolution_dialog"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_10

    .line 180
    .end local v0           #dialog:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    .end local v2           #titleResourceId:I
    :cond_35
    const v2, 0x7f070126

    goto :goto_1d
.end method
