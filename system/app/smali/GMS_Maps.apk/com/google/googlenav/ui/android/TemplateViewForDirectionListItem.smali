.class public Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;
.super Lcom/google/googlenav/ui/android/TemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private f()Lcom/google/googlenav/ui/q;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bl;

    check-cast v0, Lcom/google/googlenav/ui/q;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f()Lcom/google/googlenav/ui/q;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/q;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v1, v0, Lcom/google/googlenav/ui/bn;->d:Lcom/google/googlenav/ui/ai;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/google/googlenav/ui/bn;->d:Lcom/google/googlenav/ui/ai;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->c:Lcom/google/googlenav/ui/aj;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    :goto_1b
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->l:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(I)V

    goto :goto_e

    :cond_2e
    iget-object v1, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    if-eqz v1, :cond_e

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    goto :goto_1b
.end method

.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->b(Lcom/google/googlenav/ui/bl;)I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f()Lcom/google/googlenav/ui/q;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/q;->b:Z

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    iget v1, p1, Lcom/google/googlenav/ui/bl;->l:I

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(I)V

    if-eqz v0, :cond_31

    iget-object v1, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a()V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    :cond_38
    check-cast p1, Lcom/google/googlenav/ui/q;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/q;->a:Lau/s;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/v;->a(Landroid/content/Context;Lau/s;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_30
.end method
