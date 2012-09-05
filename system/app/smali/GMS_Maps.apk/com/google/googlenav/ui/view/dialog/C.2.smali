.class public Lcom/google/googlenav/ui/view/dialog/C;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:LaD/n;

.field private final b:Lcom/google/googlenav/ui/view/dialog/H;

.field private final c:Lcom/google/googlenav/ui/view/dialog/G;

.field private d:Lcom/google/googlenav/ui/view/dialog/q;


# direct methods
.method public constructor <init>(LaD/n;Lcom/google/googlenav/ui/view/dialog/H;)V
    .registers 4

    const v0, 0x103000d

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/C;->b:Lcom/google/googlenav/ui/view/dialog/H;

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/G;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/dialog/G;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/C;)Lcom/google/googlenav/ui/view/dialog/H;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->b:Lcom/google/googlenav/ui/view/dialog/H;

    return-object v0
.end method

.method static a(Landroid/view/View;LaD/f;)V
    .registers 5

    const v0, 0x7f0f0060

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, LaD/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0064

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, LaD/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0062

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, LaD/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0061

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, LaD/f;->g()Lah/f;

    move-result-object v1

    check-cast v1, Lai/f;

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0f005f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, LaD/f;->a()Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    :goto_54
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0063

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, LaD/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, LaD/f;->j()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_77
    return-void

    :cond_78
    const/16 v0, 0x8

    goto :goto_54

    :cond_7b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f7

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_77
.end method

.method private h()Ljava/lang/CharSequence;
    .registers 3

    const/16 v1, 0xfa

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    invoke-virtual {v0}, LaD/n;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :goto_13
    return-object v0

    :pswitch_14
    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_13

    :pswitch_1d
    const/16 v0, 0xfb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_13

    :pswitch_28
    const/16 v0, 0xfc

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_13

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_28
    .end packed-switch
.end method

.method private i()I
    .registers 3

    const v0, 0x7f020092

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    invoke-virtual {v1}, LaD/n;->f()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    :goto_c
    :pswitch_c
    return v0

    :pswitch_d
    const v0, 0x7f020093

    goto :goto_c

    :pswitch_11
    const v0, 0x7f020094

    goto :goto_c

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private k()Ljava/lang/String;
    .registers 5

    const/16 v0, 0x8a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    invoke-virtual {v3}, LaD/n;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 5

    const-string v0, "{0} - {1}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa7

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    invoke-virtual {v3}, LaD/n;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    aget-object v2, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/view/dialog/C;->a(Landroid/view/View;LaD/f;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1c
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/C;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v0, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/dialog/G;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v4, 0x7f0f006b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/google/googlenav/ui/view/dialog/G;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v4, 0x7f0f0071

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/google/googlenav/ui/view/dialog/G;->c:Landroid/view/View;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f006f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->d:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f0067

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->l:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f006c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f006d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f0072

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f0070

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f0073

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f006e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f0069

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    const v0, 0x7f0f0068

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/G;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    invoke-virtual {v0}, LaD/n;->e()I

    move-result v0

    const/4 v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    invoke-virtual {v0, v4}, LaD/n;->a(I)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    new-array v6, v4, [Landroid/view/View;

    iput-object v6, v0, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/C;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090095

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v0, v1

    :goto_d0
    if-ge v0, v4, :cond_104

    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/C;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08000a

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/G;->d:Landroid/view/ViewGroup;

    const/4 v9, -0x1

    invoke-virtual {v8, v7, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const v7, 0x7f030013

    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/G;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/G;->e:[Landroid/view/View;

    aput-object v7, v8, v0

    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/G;->d:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    :cond_104
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/dialog/C;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    invoke-virtual {v1}, LaD/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/C;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->i:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/C;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->l:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/C;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/C;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->j:Landroid/widget/TextView;

    const/16 v1, 0x444

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->k:Landroid/widget/TextView;

    const/16 v1, 0x225

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/D;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/D;-><init>(Lcom/google/googlenav/ui/view/dialog/C;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/E;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/E;-><init>(Lcom/google/googlenav/ui/view/dialog/C;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/F;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/F;-><init>(Lcom/google/googlenav/ui/view/dialog/C;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:LaD/n;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/C;->c:Lcom/google/googlenav/ui/view/dialog/G;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/q;-><init>(LaD/n;Lcom/google/googlenav/ui/view/dialog/G;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->d:Lcom/google/googlenav/ui/view/dialog/q;

    return-object v3
.end method

.method protected d()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->t()V

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ap;->d()V

    return-void
.end method

.method protected l()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ap;->l()V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->u()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->b:Lcom/google/googlenav/ui/view/dialog/H;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->b:Lcom/google/googlenav/ui/view/dialog/H;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/H;->c()V

    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ap;->onStart()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->d:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->run()V

    return-void
.end method
