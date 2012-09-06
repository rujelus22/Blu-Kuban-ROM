.class public Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;
.super Lcom/google/googlenav/ui/android/TemplateView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 38
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    return-void
.end method

.method private g()Lcom/google/googlenav/ui/h;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bd;

    check-cast v0, Lcom/google/googlenav/ui/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->g()Lcom/google/googlenav/ui/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/h;->b:Z

    if-eqz v0, :cond_e

    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bd;

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    .line 48
    if-nez v0, :cond_f

    .line 62
    :cond_e
    :goto_e
    return-void

    .line 52
    :cond_f
    iget-object v1, v0, Lcom/google/googlenav/ui/bf;->d:Lcom/google/googlenav/ui/af;

    if-eqz v1, :cond_2e

    .line 53
    iget-object v1, v0, Lcom/google/googlenav/ui/bf;->d:Lcom/google/googlenav/ui/af;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->c:Lcom/google/googlenav/ui/ag;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    .line 59
    :goto_1b
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bd;

    iget v0, v0, Lcom/google/googlenav/ui/bd;->l:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(I)V

    goto :goto_e

    .line 54
    :cond_2e
    iget-object v1, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    if-eqz v1, :cond_e

    .line 55
    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    goto :goto_1b
.end method

.method public setTemplateContent(Lcom/google/googlenav/ui/bd;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 69
    iput-object p1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->h:Lcom/google/googlenav/ui/bd;

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(Lcom/google/googlenav/ui/bd;)I

    .line 73
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->g()Lcom/google/googlenav/ui/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/h;->b:Z

    if-eqz v0, :cond_38

    .line 74
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    .line 75
    iget v1, p1, Lcom/google/googlenav/ui/bd;->l:I

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a(I)V

    .line 76
    if-eqz v0, :cond_31

    iget-object v1, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    if-eqz v1, :cond_31

    .line 77
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    :goto_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->a()V

    .line 97
    :goto_30
    return-void

    .line 80
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 86
    :cond_38
    check-cast p1, Lcom/google/googlenav/ui/h;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/h;->a:Lad/t;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/H;->a(Landroid/content/Context;Lad/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 92
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDirectionListItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_30
.end method
