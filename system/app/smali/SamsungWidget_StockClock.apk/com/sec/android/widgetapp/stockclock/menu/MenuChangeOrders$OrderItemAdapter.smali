.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuChangeOrders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceID:I

.field private mVi:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 753
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/widgetapp/stockclock/data/StockListItem;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    .line 754
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 756
    iput p3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->mResourceID:I

    .line 757
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    .line 759
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    .line 767
    .local v2, item:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;
    if-nez p2, :cond_45

    .line 769
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->mResourceID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 775
    .local v0, ItemView:Landroid/widget/RelativeLayout;
    :goto_13
    const v4, 0x7f0b00d1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 776
    .local v1, imageview:Landroid/widget/ImageView;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 777
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 778
    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 796
    const v4, 0x7f0b00d0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 798
    .local v3, textview:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    return-object v0

    .end local v0           #ItemView:Landroid/widget/RelativeLayout;
    .end local v1           #imageview:Landroid/widget/ImageView;
    .end local v3           #textview:Landroid/widget/TextView;
    :cond_45
    move-object v0, p2

    .line 773
    check-cast v0, Landroid/widget/RelativeLayout;

    .restart local v0       #ItemView:Landroid/widget/RelativeLayout;
    goto :goto_13
.end method
