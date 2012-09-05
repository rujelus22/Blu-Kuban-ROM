.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 678
    if-eqz p2, :cond_b2

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iget-boolean v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->perform:Z

    if-eqz v1, :cond_b2

    .line 679
    invoke-virtual {p2, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 680
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I
    invoke-static {v1, p3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$502(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)I

    .line 681
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItemIndex:I
    invoke-static {v1, p3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$602(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)I

    .line 682
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$702(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;)Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 683
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/graphics/Rect;

    move-result-object v0

    .line 684
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 685
    invoke-virtual {p2, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 686
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 687
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1102(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)I

    .line 688
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->AdjustBound(I)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)V

    .line 689
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->startDragging(Landroid/graphics/Bitmap;I)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;I)V

    .line 691
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->processDragMove(II)V
    invoke-static {v1, v4, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;II)V

    .line 693
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->RefreshListView()Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Z

    .line 694
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 695
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 696
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 697
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 704
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_b2
    :goto_b2
    return v5

    .line 700
    .restart local v0       #r:Landroid/graphics/Rect;
    :cond_b3
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 701
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    goto :goto_b2
.end method
