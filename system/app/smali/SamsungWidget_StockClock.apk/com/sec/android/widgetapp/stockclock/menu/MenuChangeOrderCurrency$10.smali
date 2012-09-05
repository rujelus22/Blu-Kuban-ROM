.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;
.super Ljava/lang/Object;
.source "MenuChangeOrderCurrency.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V
    .registers 2
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 12
    .parameter "v"

    .prologue
    const v9, 0xfa000

    const v8, 0xe1000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 790
    if-eqz p1, :cond_d1

    .line 792
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z
    invoke-static {v3, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Z)Z

    .line 793
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 794
    .local v0, position:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I
    invoke-static {v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1202(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)I

    .line 795
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItemIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1302(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)I

    .line 796
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    invoke-static {v4, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;)Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    .line 797
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/graphics/Rect;

    move-result-object v1

    .line 798
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 799
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setSelected(Z)V

    .line 800
    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 801
    invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 802
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1702(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 803
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1802(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)I

    .line 804
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->AdjustBound(I)V
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)V

    .line 805
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->startDragging(Landroid/graphics/Bitmap;I)V
    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Landroid/graphics/Bitmap;I)V

    .line 807
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->processDragMove(II)V
    invoke-static {v3, v7, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;II)V

    .line 809
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->RefreshListView()Z
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z

    .line 810
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->notifyDataSetChanged()V

    .line 811
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 813
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v9, :cond_c5

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v8, :cond_d2

    .line 814
    :cond_c5
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 831
    :goto_cc
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setButtonFocus()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$2500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    .line 833
    .end local v0           #position:I
    .end local v1           #r:Landroid/graphics/Rect;
    .end local v2           #view:Landroid/view/View;
    :cond_d1
    return v6

    .line 817
    .restart local v0       #position:I
    .restart local v1       #r:Landroid/graphics/Rect;
    .restart local v2       #view:Landroid/view/View;
    :cond_d2
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_cc

    .line 823
    :cond_da
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v9, :cond_ea

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v8, :cond_f2

    .line 824
    :cond_ea
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_cc

    .line 827
    :cond_f2
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_cc
.end method
