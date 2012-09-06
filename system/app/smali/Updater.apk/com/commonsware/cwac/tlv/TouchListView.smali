.class public Lcom/commonsware/cwac/tlv/TouchListView;
.super Landroid/widget/ListView;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/commonsware/cwac/tlv/d;

.field private i:Lcom/commonsware/cwac/tlv/e;

.field private j:Lcom/commonsware/cwac/tlv/f;

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/view/GestureDetector;

.field private o:I

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Bitmap;

.field private final r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/commonsware/cwac/tlv/TouchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->p:Landroid/graphics/Rect;

    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->s:I

    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->t:I

    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->u:I

    iput v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->v:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->r:I

    if-eqz p2, :cond_53

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/commonsware/cwac/tlv/b;->b:[I

    invoke-virtual {v0, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->s:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->t:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->u:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->v:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_53
    return-void
.end method

.method static synthetic a(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    :cond_1d
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->q:Landroid/graphics/Bitmap;

    :cond_28
    return-void
.end method

.method private a(Z)V
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_29

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/commonsware/cwac/tlv/TouchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v2, v3}, Lcom/commonsware/cwac/tlv/TouchListView;->setSelectionFromTop(II)V

    :cond_20
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->layoutChildren()V

    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_40

    :cond_29
    invoke-direct {p0, v2}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->s:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_40
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .registers 3

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->u:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic b(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic c(Lcom/commonsware/cwac/tlv/TouchListView;)V
    .registers 1

    invoke-direct {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->a()V

    return-void
.end method

.method static synthetic d(Lcom/commonsware/cwac/tlv/TouchListView;)Lcom/commonsware/cwac/tlv/f;
    .registers 2

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->j:Lcom/commonsware/cwac/tlv/f;

    return-object v0
.end method

.method static synthetic e(Lcom/commonsware/cwac/tlv/TouchListView;)I
    .registers 2

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    return v0
.end method

.method static synthetic f(Lcom/commonsware/cwac/tlv/TouchListView;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/commonsware/cwac/tlv/e;)V
    .registers 2

    iput-object p1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->i:Lcom/commonsware/cwac/tlv/e;

    return-void
.end method

.method public final a(Lcom/commonsware/cwac/tlv/f;)V
    .registers 2

    iput-object p1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->j:Lcom/commonsware/cwac/tlv/f;

    return-void
.end method

.method public final addFooterView(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Footers are not supported with TouchListView in conjunction with remove_mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Footers are not supported with TouchListView in conjunction with remove_mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public final addHeaderView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Headers are not supported with TouchListView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Headers are not supported with TouchListView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->j:Lcom/commonsware/cwac/tlv/f;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->n:Landroid/view/GestureDetector;

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    if-nez v0, :cond_1f

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/commonsware/cwac/tlv/c;

    invoke-direct {v3, p0}, Lcom/commonsware/cwac/tlv/c;-><init>(Lcom/commonsware/cwac/tlv/TouchListView;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->n:Landroid/view/GestureDetector;

    :cond_1f
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->h:Lcom/commonsware/cwac/tlv/d;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->i:Lcom/commonsware/cwac/tlv/e;

    if-eqz v0, :cond_2e

    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_136

    :cond_2e
    :goto_2e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_32
    return v0

    :pswitch_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/commonsware/cwac/tlv/TouchListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2e

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v2, v5

    iput v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->g:I

    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->u:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/commonsware/cwac/tlv/TouchListView;->p:Landroid/graphics/Rect;

    new-array v7, v9, [I

    invoke-virtual {v5, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    iget v5, v6, Landroid/graphics/Rect;->left:I

    if-ge v5, v0, :cond_131

    iget v5, v6, Landroid/graphics/Rect;->right:I

    if-ge v0, v5, :cond_131

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-array v4, v9, [I

    invoke-virtual {p0, v4}, Lcom/commonsware/cwac/tlv/TouchListView;->getLocationOnScreen([I)V

    aget v4, v4, v1

    invoke-direct {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->a()V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->f:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/commonsware/cwac/tlv/TouchListView;->g:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x198

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->v:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->b:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->b:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->r:I

    sub-int v3, v2, v0

    iget v4, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->k:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->l:I

    move v0, v1

    goto/16 :goto_32

    :cond_131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    goto/16 :goto_2e

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_33
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v4, 0x4

    const/4 v10, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->n:Landroid/view/GestureDetector;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->n:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_e
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->h:Lcom/commonsware/cwac/tlv/d;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->i:Lcom/commonsware/cwac/tlv/e;

    if-eqz v0, :cond_1f6

    :cond_16
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_202

    :cond_21
    :goto_21
    return v6

    :pswitch_22
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->p:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->a()V

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    if-ne v1, v6, :cond_53

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_53

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->j:Lcom/commonsware/cwac/tlv/f;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->j:Lcom/commonsware/cwac/tlv/f;

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    invoke-interface {v0, v1}, Lcom/commonsware/cwac/tlv/f;->a(I)V

    :cond_4f
    invoke-direct {p0, v6}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Z)V

    goto :goto_21

    :cond_53
    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    if-ne v1, v10, :cond_78

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_78

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->j:Lcom/commonsware/cwac/tlv/f;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->j:Lcom/commonsware/cwac/tlv/f;

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    invoke-interface {v0, v1}, Lcom/commonsware/cwac/tlv/f;->a(I)V

    :cond_74
    invoke-direct {p0, v6}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Z)V

    goto :goto_21

    :cond_78
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->i:Lcom/commonsware/cwac/tlv/e;

    if-eqz v0, :cond_91

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    if-ltz v0, :cond_91

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_91

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->i:Lcom/commonsware/cwac/tlv/e;

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    invoke-interface {v0, v1, v3}, Lcom/commonsware/cwac/tlv/e;->a(II)V

    :cond_91
    invoke-direct {p0, v2}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Z)V

    goto :goto_21

    :pswitch_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v8, v0

    const/high16 v0, 0x3f80

    iget-object v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    if-ne v9, v6, :cond_143

    div-int/lit8 v9, v5, 0x2

    if-le v3, v9, :cond_b6

    sub-int v0, v5, v3

    int-to-float v0, v0

    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v3

    :cond_b6
    iget-object v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_ba
    :goto_ba
    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->f:I

    sub-int v3, v8, v3

    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->b:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->f:I

    sub-int v0, v8, v0

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->s:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget-object v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->p:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e0
    if-gez v0, :cond_156

    move v0, v7

    :goto_e3
    if-ltz v0, :cond_16e

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    if-gt v0, v3, :cond_eb

    add-int/lit8 v0, v0, 0x1

    :cond_eb
    :goto_eb
    if-ltz v0, :cond_21

    if-eqz v1, :cond_f3

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    if-eq v0, v1, :cond_18a

    :cond_f3
    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->h:Lcom/commonsware/cwac/tlv/d;

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->h:Lcom/commonsware/cwac/tlv/d;

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    :cond_fb
    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    if-le v1, v3, :cond_10c

    add-int/lit8 v0, v0, 0x1

    :cond_10c
    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move v1, v2

    :goto_118
    invoke-virtual {p0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_187

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->s:I

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_176

    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    iget v11, p0, Lcom/commonsware/cwac/tlv/TouchListView;->e:I

    if-ne v5, v11, :cond_173

    move v5, v3

    move v3, v4

    :goto_12e
    invoke-direct {p0, v10}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_140

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iput v5, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_140
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    :cond_143
    iget v9, p0, Lcom/commonsware/cwac/tlv/TouchListView;->o:I

    if-ne v9, v10, :cond_ba

    div-int/lit8 v9, v5, 0x2

    if-ge v3, v9, :cond_150

    int-to-float v0, v3

    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v3

    :cond_150
    iget-object v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto/16 :goto_ba

    :cond_156
    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_16a

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v0, v5

    goto/16 :goto_e3

    :cond_16a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_e0

    :cond_16e
    if-gez v3, :cond_eb

    move v0, v2

    goto/16 :goto_eb

    :cond_173
    move v3, v2

    move v5, v6

    goto :goto_12e

    :cond_176
    if-ne v1, v0, :cond_1fe

    iget v5, p0, Lcom/commonsware/cwac/tlv/TouchListView;->d:I

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v5, v11, :cond_1fe

    iget v3, p0, Lcom/commonsware/cwac/tlv/TouchListView;->t:I

    move v5, v3

    move v3, v2

    goto :goto_12e

    :cond_187
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->layoutChildren()V

    :cond_18a
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    div-int/lit8 v0, v0, 0x3

    if-lt v8, v0, :cond_196

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->k:I

    :cond_196
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt v8, v0, :cond_1a6

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->l:I

    :cond_1a6
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->l:I

    if-le v8, v0, :cond_1e6

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    iget v1, p0, Lcom/commonsware/cwac/tlv/TouchListView;->l:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le v8, v0, :cond_1b5

    const/16 v4, 0x10

    :cond_1b5
    :goto_1b5
    if-eqz v4, :cond_21

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->pointToPosition(II)I

    move-result v0

    if-ne v0, v7, :cond_1d0

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->m:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getDividerHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v2, v0}, Lcom/commonsware/cwac/tlv/TouchListView;->pointToPosition(II)I

    move-result v0

    :cond_1d0
    invoke-virtual {p0}, Lcom/commonsware/cwac/tlv/TouchListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/commonsware/cwac/tlv/TouchListView;->setSelectionFromTop(II)V

    goto/16 :goto_21

    :cond_1e6
    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->k:I

    if-ge v8, v0, :cond_1fc

    iget v0, p0, Lcom/commonsware/cwac/tlv/TouchListView;->k:I

    div-int/lit8 v0, v0, 0x2

    if-ge v8, v0, :cond_1f4

    const/16 v0, -0x10

    :goto_1f2
    move v4, v0

    goto :goto_1b5

    :cond_1f4
    const/4 v0, -0x4

    goto :goto_1f2

    :cond_1f6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_21

    :cond_1fc
    move v4, v2

    goto :goto_1b5

    :cond_1fe
    move v5, v3

    move v3, v2

    goto/16 :goto_12e

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_95
        :pswitch_22
        :pswitch_95
        :pswitch_22
    .end packed-switch
.end method
