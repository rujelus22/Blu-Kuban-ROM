.class public Lcom/anddoes/launcher/ui/DragableListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/anddoes/launcher/ui/d;

.field private d:Lcom/anddoes/launcher/ui/e;

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/view/WindowManager;

.field private o:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0, p0}, Lcom/anddoes/launcher/ui/DragableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 50
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    .line 203
    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 205
    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iput-object v2, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    .line 209
    :cond_24
    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    .line 210
    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    iput-object v2, p0, Lcom/anddoes/launcher/ui/DragableListView;->m:Landroid/graphics/Bitmap;

    .line 213
    :cond_2f
    return-void
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/ui/d;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/anddoes/launcher/ui/DragableListView;->c:Lcom/anddoes/launcher/ui/d;

    .line 224
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/ui/e;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/anddoes/launcher/ui/DragableListView;->d:Lcom/anddoes/launcher/ui/e;

    .line 228
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x41a0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 57
    packed-switch v0, :pswitch_data_2c

    .line 66
    :goto_11
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 61
    :pswitch_16
    iput v2, p0, Lcom/anddoes/launcher/ui/DragableListView;->g:F

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->i:I

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->j:I

    goto :goto_11

    .line 57
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->k:I

    .line 146
    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getTop()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->e:I

    .line 147
    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->f:I

    .line 148
    iput p3, p0, Lcom/anddoes/launcher/ui/DragableListView;->a:I

    .line 149
    iget v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->a:I

    iput v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->b:I

    .line 151
    invoke-direct {p0}, Lcom/anddoes/launcher/ui/DragableListView;->a()V

    iget v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->g:F

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->h:I

    invoke-virtual {p2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->i:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->j:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->m:Landroid/graphics/Bitmap;

    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->n:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->n:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->c:Lcom/anddoes/launcher/ui/d;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->c:Lcom/anddoes/launcher/ui/d;

    iget v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->b:I

    iget v2, p0, Lcom/anddoes/launcher/ui/DragableListView;->a:I

    invoke-interface {v0, v1, v2}, Lcom/anddoes/launcher/ui/d;->b(II)V

    .line 152
    :cond_af
    return v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 73
    packed-switch v1, :pswitch_data_9c

    .line 139
    :cond_8
    :goto_8
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 85
    :pswitch_d
    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->d:Lcom/anddoes/launcher/ui/e;

    if-eqz v0, :cond_1e

    .line 86
    iget-object v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->d:Lcom/anddoes/launcher/ui/e;

    iget v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->b:I

    iget v2, p0, Lcom/anddoes/launcher/ui/DragableListView;->a:I

    invoke-interface {v0, v1, v2}, Lcom/anddoes/launcher/ui/e;->a(II)V

    .line 88
    :cond_1e
    invoke-direct {p0}, Lcom/anddoes/launcher/ui/DragableListView;->a()V

    goto :goto_8

    .line 95
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 98
    iget-object v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/anddoes/launcher/ui/DragableListView;->h:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/anddoes/launcher/ui/DragableListView;->j:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->n:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/anddoes/launcher/ui/DragableListView;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :cond_48
    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/ui/DragableListView;->pointToPosition(II)I

    move-result v1

    .line 102
    iget-object v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->l:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    if-ltz v1, :cond_8

    .line 103
    iget v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->a:I

    if-eq v1, v3, :cond_63

    .line 104
    iget-object v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->c:Lcom/anddoes/launcher/ui/d;

    if-eqz v3, :cond_61

    .line 105
    iget-object v3, p0, Lcom/anddoes/launcher/ui/DragableListView;->c:Lcom/anddoes/launcher/ui/d;

    iget v4, p0, Lcom/anddoes/launcher/ui/DragableListView;->a:I

    invoke-interface {v3, v4, v1}, Lcom/anddoes/launcher/ui/d;->b(II)V

    .line 107
    :cond_61
    iput v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->a:I

    .line 113
    :cond_63
    iget v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->f:I

    if-le v2, v1, :cond_7f

    .line 116
    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7d

    .line 117
    iget v0, p0, Lcom/anddoes/launcher/ui/DragableListView;->k:I

    .line 133
    :cond_75
    :goto_75
    if-eqz v0, :cond_8

    .line 134
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/ui/DragableListView;->smoothScrollBy(II)V

    goto :goto_8

    .line 119
    :cond_7d
    const/4 v0, 0x1

    goto :goto_75

    .line 121
    :cond_7f
    iget v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->e:I

    if-ge v2, v1, :cond_75

    .line 124
    iget v1, p0, Lcom/anddoes/launcher/ui/DragableListView;->k:I

    neg-int v1, v1

    .line 125
    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_9a

    .line 126
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ui/DragableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/anddoes/launcher/ui/DragableListView;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_75

    :cond_9a
    move v0, v1

    goto :goto_75

    .line 73
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_d
        :pswitch_22
        :pswitch_d
    .end packed-switch
.end method
