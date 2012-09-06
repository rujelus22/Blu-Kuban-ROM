.class Lcom/google/android/finsky/activities/PurchaseFragment$2;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->onInitViewBinders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 10
    .parameter "left"
    .parameter "top"

    .prologue
    .line 457
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/activities/PurchaseContentLayout;

    .line 460
    .local v4, purchaseContentLayout:Lcom/google/android/finsky/activities/PurchaseContentLayout;
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    const v6, 0x7f0801ad

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    .line 462
    .local v1, currAcquireRowTop:I
    invoke-virtual {v4}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getAcquireRowTop()I

    move-result v3

    .line 463
    .local v3, newAcquireRowTop:I
    if-eq v1, v3, :cond_2a

    .line 465
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRow:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$900(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;

    move-result-object v5

    sub-int v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 467
    :cond_2a
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mExtraDetailsContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    const v6, 0x7f0801b2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    .line 469
    .local v0, currAcquireRowFooterTop:I
    invoke-virtual {v4}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getAcquireRowFooterTop()I

    move-result v2

    .line 470
    .local v2, newAcquireRowFooterTop:I
    if-eq v0, v2, :cond_4c

    .line 472
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseRowFooter:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1000(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/view/View;

    move-result-object v5

    sub-int v6, v2, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 475
    :cond_4c
    return-void
.end method
