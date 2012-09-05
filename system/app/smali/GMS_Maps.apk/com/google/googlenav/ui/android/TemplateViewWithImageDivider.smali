.class public Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    return-void
.end method

.method private a(ILandroid/widget/ImageView;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_12
    return-void

    :cond_13
    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    const v0, 0x7f0f0028

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->c()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a(ILandroid/widget/ImageView;)V

    const v0, 0x7f0f002a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->d()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a(ILandroid/widget/ImageView;)V

    goto :goto_5
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    return v0
.end method
