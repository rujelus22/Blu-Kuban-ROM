.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;)V
    .registers 2
    .parameter

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const v3, 0x7f0b00e7

    const/4 v2, 0x1

    .line 1798
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->clearQueryResultArray()V

    .line 1800
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1800(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 1802
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1800(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1803
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1804
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_67

    .line 1805
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1807
    :cond_67
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1602(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Z)Z

    .line 1808
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 1810
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1813
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_83
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/ViewFlipper;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 1814
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mFlipperDisplayedIndex:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1902(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;I)I

    .line 1815
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->makeIndicesFlipper()V

    .line 1817
    :cond_a7
    return-void
.end method
