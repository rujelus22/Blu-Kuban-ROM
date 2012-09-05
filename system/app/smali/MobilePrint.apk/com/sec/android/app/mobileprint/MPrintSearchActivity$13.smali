.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->makeupPrinterListLayout()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->requestCancelSearching()I

    .line 512
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13$1;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1402(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSearchManager:Lcom/sec/android/app/mobileprint/MPrintSearchManager;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1500(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->requestGetAttr(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)I

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 527
    :cond_6f
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 532
    :cond_80
    const-wide/16 v1, 0x1f4

    :try_start_82
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_85} :catch_97

    .line 536
    :goto_85
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$13;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 539
    :cond_96
    return-void

    .line 533
    :catch_97
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_85
.end method
