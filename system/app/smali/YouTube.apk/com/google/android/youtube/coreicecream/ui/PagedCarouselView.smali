.class public Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "SourceFile"


# instance fields
.field private final o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 33
    const v0, 0x7f040056

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/google/android/youtube/b;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 39
    new-instance v2, Lcom/google/android/youtube/coreicecream/ui/i;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/youtube/coreicecream/ui/i;-><init>(Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->b()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iput-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->h:Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSplitDetailViews(Z)V

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v2, 0x6

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRadius(F)V

    .line 54
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRowCount(I)V

    .line 55
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRowSpacing(F)V

    .line 56
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setVisibleSlots(I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSlotCount(I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCameraZ(F)V

    .line 59
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCardSize(II)V

    .line 62
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDetailSize(II)V

    .line 65
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 66
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :cond_ba
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOverscrollSlots(F)V

    .line 70
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSwaySensitivity(F)V

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


# virtual methods
.method protected final b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method protected final g()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e()I

    move-result v0

    return v0
.end method

.method public final l()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->pause()V

    .line 99
    return-void
.end method

.method public final m()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->resume()V

    .line 103
    return-void
.end method

.method public final n()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f()V

    .line 107
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setAdapter(Landroid/widget/Adapter;)V

    .line 83
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->o:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 95
    return-void
.end method
