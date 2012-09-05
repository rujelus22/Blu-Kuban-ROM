.class public Lcom/google/android/finsky/layout/UnevenGrid;
.super Landroid/widget/AdapterView;
.source "UnevenGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/UnevenGrid$1;,
        Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Lcom/google/android/finsky/adapters/UnevenGridAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

.field private mCellHeight:I

.field private mCellWidth:I

.field mConvertViewTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

.field private mGutterSize:I

.field private mHasTopGutter:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/CellBasedLayout$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumCellsWide:I

.field private mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

.field private mRebindNecessary:Z

.field private mShopperBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/UnevenGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    .line 41
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    .line 42
    iput-boolean v3, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    .line 67
    new-instance v1, Lcom/google/android/finsky/layout/CellBasedLayout;

    iget v2, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    invoke-direct {v1, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    .line 68
    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    .line 69
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/UnevenGrid;->setWillNotDraw(Z)V

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/UnevenGrid;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    return p1
.end method

.method private measureChildren()I
    .registers 14

    .prologue
    const/high16 v12, 0x4000

    const/4 v7, 0x0

    .line 142
    const/4 v4, 0x0

    .line 143
    .local v4, maxHeight:I
    iget v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    div-int/lit8 v1, v8, 0x2

    .line 144
    .local v1, halfGutter:I
    const/4 v0, 0x0

    .local v0, child:I
    :goto_9
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_64

    .line 145
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/CellBasedLayout$Item;

    .line 146
    .local v2, item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v8, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnLeftEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v8

    if-eqz v8, :cond_60

    move v3, v7

    .line 147
    .local v3, leftMargin:I
    :goto_22
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v8, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnRightEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v8

    if-eqz v8, :cond_62

    move v6, v7

    .line 148
    .local v6, rightMargin:I
    :goto_2b
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget v9, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v10

    mul-int/2addr v9, v10

    add-int v10, v3, v6

    sub-int/2addr v9, v10

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v11

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v10, v11

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 155
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v8, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->getTop(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v8

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v3           #leftMargin:I
    .end local v6           #rightMargin:I
    :cond_60
    move v3, v1

    .line 146
    goto :goto_22

    .restart local v3       #leftMargin:I
    :cond_62
    move v6, v1

    .line 147
    goto :goto_2b

    .line 157
    .end local v2           #item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    .end local v3           #leftMargin:I
    :cond_64
    iget v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    mul-int v5, v4, v7

    .line 158
    .local v5, result:I
    iget-boolean v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mHasTopGutter:Z

    if-nez v7, :cond_6f

    .line 159
    iget v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v5, v7

    .line 161
    :cond_6f
    return v5
.end method

.method private rebindChildren()V
    .registers 9

    .prologue
    .line 209
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 210
    new-instance v5, Lcom/google/android/finsky/layout/CellBasedLayout;

    iget v6, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    invoke-direct {v5, v6}, Lcom/google/android/finsky/layout/CellBasedLayout;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    .line 211
    const/4 v1, 0x0

    .local v1, index:I
    :goto_f
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_8c

    .line 212
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 215
    .local v3, oldChild:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getItemViewType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 217
    :cond_43
    if-eqz v3, :cond_4c

    .line 218
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/UnevenGrid;->removeViewInLayout(Landroid/view/View;)V

    .line 220
    :cond_4c
    const/4 v3, 0x0

    .line 222
    :cond_4d
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v5, v1, v3, p0}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 223
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v5, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getItem(I)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    move-result-object v2

    .line 225
    .local v2, item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->addItem(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)V

    .line 226
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    if-eq v4, v3, :cond_89

    .line 228
    if-eqz v3, :cond_6e

    .line 229
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/UnevenGrid;->removeViewInLayout(Landroid/view/View;)V

    .line 231
    :cond_6e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v1, v5, v6}, Lcom/google/android/finsky/layout/UnevenGrid;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 232
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v7, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getItemViewType(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 235
    .end local v2           #item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    .end local v3           #oldChild:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_8c
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_c4

    .line 237
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :goto_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_b0

    .line 238
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 240
    :cond_b0
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/UnevenGrid;->removeViewsInLayout(II)V

    .line 242
    .end local v0           #i:I
    :cond_c4
    return-void
.end method

.method private removeAllItems()V
    .registers 3

    .prologue
    .line 165
    new-instance v0, Lcom/google/android/finsky/layout/CellBasedLayout;

    iget v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    invoke-direct {v0, v1}, Lcom/google/android/finsky/layout/CellBasedLayout;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->removeAllViewsInLayout()V

    .line 169
    return-void
.end method

.method private resetAdapter()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    if-eqz v0, :cond_f

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 198
    :cond_f
    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    .line 205
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->resetAdapter()V

    .line 206
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_12

    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    .line 88
    :cond_12
    iget v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 90
    .local v0, scaledWidth:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v7, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 97
    sub-int v4, p5, p3

    .line 98
    .local v4, height:I
    sub-int v11, p4, p2

    .line 99
    .local v11, width:I
    if-lez v11, :cond_8

    if-gtz v4, :cond_9

    .line 121
    :cond_8
    return-void

    .line 103
    :cond_9
    iget v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    div-int/lit8 v3, v12, 0x2

    .line 104
    .local v3, halfGutter:I
    const/4 v1, 0x0

    .local v1, child:I
    :goto_e
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_8

    .line 105
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/CellBasedLayout$Item;

    .line 106
    .local v5, item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, childView:Landroid/view/View;
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->getLeft(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    mul-int v6, v12, v13

    .line 108
    .local v6, left:I
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->getTop(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    mul-int v10, v12, v13

    .line 109
    .local v10, top:I
    invoke-interface {v5}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    mul-int/2addr v12, v13

    add-int v8, v6, v12

    .line 110
    .local v8, right:I
    invoke-interface {v5}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    mul-int/2addr v12, v13

    add-int v0, v10, v12

    .line 111
    .local v0, bottom:I
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnLeftEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v12

    if-eqz v12, :cond_71

    const/4 v7, 0x0

    .line 112
    .local v7, leftMargin:I
    :goto_51
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnRightEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v12

    if-eqz v12, :cond_73

    const/4 v9, 0x0

    .line 114
    .local v9, rightMargin:I
    :goto_5a
    iget-boolean v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mHasTopGutter:Z

    if-nez v12, :cond_64

    .line 115
    iget v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v10, v12

    .line 116
    iget v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v0, v12

    .line 118
    :cond_64
    add-int v12, v6, v7

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    add-int/2addr v13, v10

    sub-int v14, v8, v9

    invoke-virtual {v2, v12, v13, v14, v0}, Landroid/view/View;->layout(IIII)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v7           #leftMargin:I
    .end local v9           #rightMargin:I
    :cond_71
    move v7, v3

    .line 111
    goto :goto_51

    .restart local v7       #leftMargin:I
    :cond_73
    move v9, v3

    .line 112
    goto :goto_5a
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    if-eqz v0, :cond_a

    .line 126
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->rebindChildren()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    .line 129
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1c

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->setMeasuredDimension(II)V

    .line 139
    :goto_1b
    return-void

    .line 134
    :cond_1c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->setMeasuredDimension(II)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    .line 137
    iget v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    iput v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    .line 138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->measureChildren()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->setMeasuredDimension(II)V

    goto :goto_1b
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/UnevenGrid;->setAdapter(Lcom/google/android/finsky/adapters/UnevenGridAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/UnevenGridAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->resetAdapter()V

    .line 178
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->removeAllItems()V

    .line 180
    iput-object p1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    if-eqz v0, :cond_22

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    if-nez v0, :cond_18

    .line 183
    new-instance v0, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;-><init>(Lcom/google/android/finsky/layout/UnevenGrid;Lcom/google/android/finsky/layout/UnevenGrid$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    .line 185
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 186
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->rebindChildren()V

    .line 188
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->requestLayout()V

    .line 189
    return-void
.end method

.method public setHasTopGutter(Z)V
    .registers 2
    .parameter "hasTopGutter"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mHasTopGutter:Z

    .line 79
    return-void
.end method

.method public setSelection(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 251
    return-void
.end method
