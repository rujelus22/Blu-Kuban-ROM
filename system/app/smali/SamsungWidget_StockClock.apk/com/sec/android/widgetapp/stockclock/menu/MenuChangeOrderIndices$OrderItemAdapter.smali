.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuChangeOrderIndices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceID:I

.field private mVi:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Landroid/content/Context;ILjava/util/List;)V
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
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 752
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    .line 753
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 755
    iput p3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->mResourceID:I

    .line 756
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    .line 758
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 764
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 766
    .local v2, item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    if-nez p2, :cond_45

    .line 768
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->mVi:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->mResourceID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 774
    .local v0, ItemView:Landroid/widget/RelativeLayout;
    :goto_13
    const v4, 0x7f0b00d1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 775
    .local v1, imageview:Landroid/widget/ImageView;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 776
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 777
    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 795
    const v4, 0x7f0b00d0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 797
    .local v3, textview:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    return-object v0

    .end local v0           #ItemView:Landroid/widget/RelativeLayout;
    .end local v1           #imageview:Landroid/widget/ImageView;
    .end local v3           #textview:Landroid/widget/TextView;
    :cond_45
    move-object v0, p2

    .line 772
    check-cast v0, Landroid/widget/RelativeLayout;

    .restart local v0       #ItemView:Landroid/widget/RelativeLayout;
    goto :goto_13
.end method
