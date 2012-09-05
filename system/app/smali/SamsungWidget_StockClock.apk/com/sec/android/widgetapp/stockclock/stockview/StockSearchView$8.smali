.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V
    .registers 2
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 750
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->clearQueryResultArray()V

    .line 751
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$402(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 752
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 754
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 755
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mFlipperDisplayedIndex:I
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$702(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;I)I

    .line 756
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makeIndicesFlipper()V

    .line 758
    :cond_30
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 759
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->startMarquee()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$800(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$900(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 761
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$900(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 762
    :cond_55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 763
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 765
    :cond_66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z
    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$202(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Z)Z

    .line 766
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 768
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 771
    :cond_7c
    return-void
.end method
