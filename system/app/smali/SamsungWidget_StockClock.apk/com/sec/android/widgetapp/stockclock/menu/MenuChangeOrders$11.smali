.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

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

    .line 808
    if-eqz p1, :cond_d1

    .line 810
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z
    invoke-static {v3, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z

    .line 811
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 812
    .local v0, position:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I
    invoke-static {v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$902(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)I

    .line 813
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItemIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1002(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)I

    .line 814
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;
    invoke-static {v4, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1102(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Lcom/sec/android/widgetapp/stockclock/data/StockListItem;)Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    .line 815
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/graphics/Rect;

    move-result-object v1

    .line 816
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 817
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setSelected(Z)V

    .line 818
    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 819
    invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 820
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 821
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1502(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)I

    .line 822
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->AdjustBound(I)V
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)V

    .line 823
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->startDragging(Landroid/graphics/Bitmap;I)V
    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;I)V

    .line 825
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I
    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->processDragMove(II)V
    invoke-static {v3, v7, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;II)V

    .line 827
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->RefreshListView()Z
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$1900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z

    .line 828
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 829
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 831
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v9, :cond_c5

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v8, :cond_d2

    .line 832
    :cond_c5
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 848
    :goto_cc
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setButtonFocus()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    .line 850
    .end local v0           #position:I
    .end local v1           #r:Landroid/graphics/Rect;
    .end local v2           #view:Landroid/view/View;
    :cond_d1
    return v6

    .line 835
    .restart local v0       #position:I
    .restart local v1       #r:Landroid/graphics/Rect;
    .restart local v2       #view:Landroid/view/View;
    :cond_d2
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_cc

    .line 841
    :cond_da
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v9, :cond_ea

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v8, :cond_f2

    .line 842
    :cond_ea
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_cc

    .line 845
    :cond_f2
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_cc
.end method
