.class public Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "PagedCarouselView.java"


# instance fields
.field private final carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 32
    const v2, 0x7f04000b

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v2, Lcom/google/android/youtube/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, a:Landroid/content/res/TypedArray;
    const/high16 v2, 0x7f07

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 38
    .local v1, rs:I
    new-instance v2, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView$1;-><init>(Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->getMainView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->getMainView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iput-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->itemsView:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSplitDetailViews(Z)V

    .line 52
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v3, 0x6

    const/high16 v4, 0x3f80

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRadius(F)V

    .line 53
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRowCount(I)V

    .line 54
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRowSpacing(F)V

    .line 55
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setVisibleSlots(I)V

    .line 56
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSlotCount(I)V

    .line 57
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCameraZ(F)V

    .line 58
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCardSize(II)V

    .line 61
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDetailSize(II)V

    .line 64
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 65
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    :cond_ba
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOverscrollSlots(F)V

    .line 69
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSwaySensitivity(F)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->destroy()V

    .line 102
    return-void
.end method

.method public getLastTouchPosition()[I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getLastTouchPosition()[I

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->pause()V

    .line 94
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->resume()V

    .line 98
    return-void
.end method

.method public setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<*>;"
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setAdapter(Landroid/widget/Adapter;)V

    .line 78
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 90
    return-void
.end method
