.class public Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;
.super Lcom/google/googlenav/ui/android/TemplateView;


# static fields
.field private static final k:I


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->k:I

    return-void
.end method

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

.method private b(Lcom/google/googlenav/ui/bl;I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030167

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a(Lcom/google/googlenav/ui/bl;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bl;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a(Lcom/google/googlenav/ui/bl;IZ)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    if-eqz v0, :cond_24

    iget v0, p1, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/bw;->bF:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/google/googlenav/ui/bw;->bF:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    return-void
.end method

.method protected b(Lcom/google/googlenav/ui/bl;)I
    .registers 7

    const/16 v4, 0x8

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    iget-object v3, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;Lbb/c;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->j:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v3, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;Lbb/c;)V

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v0, v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_39
    :goto_39
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bl;)I

    move-result v0

    return v0

    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    :cond_44
    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    :cond_5d
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    :cond_63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v0, v1

    :goto_69
    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v2, v2

    if-ge v0, v2, :cond_82

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    aget-object v2, v2, v0

    if-nez v0, :cond_7f

    move v2, v1

    :goto_75
    iget-object v3, p1, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    aget-object v3, v3, v0

    invoke-direct {p0, v3, v2}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->b(Lcom/google/googlenav/ui/bl;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    :cond_7f
    sget v2, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->k:I

    goto :goto_75

    :cond_82
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_39
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0257

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->i:Landroid/view/ViewGroup;

    const v0, 0x7f0f0258

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForWebReviews;->j:Landroid/widget/TextView;

    return-void
.end method
