.class public Lcom/estrongs/android/pop/app/imageviewer/l;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Lcom/estrongs/android/pop/app/imageviewer/o;

.field b:Lcom/estrongs/android/pop/app/imageviewer/k;

.field c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private j:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/g",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/imageviewer/gallery/f;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->i:I

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->j:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    const/16 v0, 0x64

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->c:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    sget-object v0, Lcom/estrongs/android/pop/e;->a:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->f:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020059

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/l;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->i:I

    return v0
.end method

.method private a(ILcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/widget/ImageView;)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/m;

    invoke-direct {v2, p0, p1, p3}, Lcom/estrongs/android/pop/app/imageviewer/m;-><init>(Lcom/estrongs/android/pop/app/imageviewer/l;ILandroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/p;I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/l;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->h:Landroid/graphics/Bitmap;

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->j:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->j:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a()V

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->a()[I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->b()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    :cond_2d
    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->i:I

    return-void
.end method

.method public a(II)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    if-nez v0, :cond_b

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-le p2, v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result p2

    :cond_1c
    :goto_1c
    if-lt p1, p2, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->j:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->g:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_3a

    invoke-direct {p0, p1, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/l;->a(ILcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/widget/ImageView;)V

    :cond_3a
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/k;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->c:I

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->i:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->j:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->g:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_1b

    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->c:I

    iget v4, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->c:I

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->f:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/l;->j:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method
