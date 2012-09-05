.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

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

    .line 1653
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->clearQueryResultArray()V

    .line 1655
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 1657
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1658
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1660
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_67

    .line 1661
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1663
    :cond_67
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1802(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Z)Z

    .line 1664
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 1666
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1669
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_83
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ViewFlipper;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 1670
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mFlipperDisplayedIndex:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2102(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I

    .line 1671
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->makeIndicesFlipper()V

    .line 1673
    :cond_a7
    return-void
.end method
