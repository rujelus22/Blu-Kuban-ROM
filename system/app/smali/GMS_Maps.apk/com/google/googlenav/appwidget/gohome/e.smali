.class public Lcom/google/googlenav/appwidget/gohome/e;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Bitmap;

.field private c:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/e;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->b:Landroid/graphics/Bitmap;

    return-void

    nop

    :array_12
    .array-data 0x4
        0xabt 0x1t 0x2t 0x7ft
        0xb0t 0x1t 0x2t 0x7ft
        0xaft 0x1t 0x2t 0x7ft
        0xadt 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xaet 0x1t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public a()I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    aget v2, v2, v0

    const v3, 0x7f0201ad

    if-ne v2, v3, :cond_11

    :goto_10
    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    move v0, v1

    goto :goto_10
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    array-length v0, v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    array-length v0, v0

    if-lt p1, v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->b:Landroid/graphics/Bitmap;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    array-length v1, v1

    if-lt p1, v1, :cond_1d

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_11
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object v0

    :cond_1d
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/e;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11
.end method
