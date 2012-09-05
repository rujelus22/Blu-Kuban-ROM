.class LaY/au;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private a:LaY/ax;

.field private final b:Ljava/util/List;

.field private final c:[Lcom/google/googlenav/au;

.field private final d:Lcom/google/googlenav/ah;

.field private final e:Lcom/google/googlenav/ui/ai;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/googlenav/ui/p;

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Ljava/util/List;[Lcom/google/googlenav/au;Lcom/google/googlenav/ui/ai;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/au;->d:Lcom/google/googlenav/ah;

    iput-object p2, p0, LaY/au;->b:Ljava/util/List;

    iput-object p3, p0, LaY/au;->c:[Lcom/google/googlenav/au;

    iput-object p4, p0, LaY/au;->e:Lcom/google/googlenav/ui/ai;

    iput-object p5, p0, LaY/au;->f:Ljava/lang/String;

    iput p6, p0, LaY/au;->h:I

    return-void
.end method

.method static synthetic a(LaY/au;)V
    .registers 1

    invoke-direct {p0}, LaY/au;->e()V

    return-void
.end method

.method static synthetic a(LaY/au;LaY/ax;)V
    .registers 2

    invoke-direct {p0, p1}, LaY/au;->a(LaY/ax;)V

    return-void
.end method

.method private a(LaY/ax;)V
    .registers 2

    iput-object p1, p0, LaY/au;->a:LaY/ax;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aj;Landroid/widget/ImageView;)V
    .registers 6

    iget-object v0, p0, LaY/au;->e:Lcom/google/googlenav/ui/ai;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_23

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_23
    if-eq v0, v1, :cond_28

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_28
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/p;Landroid/view/ViewGroup;[Lcom/google/googlenav/au;I)V
    .registers 6

    new-instance v0, LaY/aw;

    invoke-direct {v0, p0, p4, p1, p3}, LaY/aw;-><init>(LaY/au;ILcom/google/googlenav/ui/p;[Lcom/google/googlenav/au;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(LaY/au;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaY/au;->f:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaY/au;->a:LaY/ax;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 9

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v3, LaY/ax;

    invoke-direct {v3, v6}, LaY/ax;-><init>(LaY/at;)V

    const v0, 0x7f0f02f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, LaY/ax;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0f02f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, LaY/ax;->b:Landroid/view/View;

    move v1, v2

    :goto_1c
    const/4 v0, 0x4

    if-ge v1, v0, :cond_62

    new-instance v4, LaY/ay;

    invoke-direct {v4, v6}, LaY/ay;-><init>(LaY/at;)V

    const v0, 0x7f030106

    iget-object v5, v3, LaY/ax;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v5, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, LaY/ay;->a:Landroid/view/ViewGroup;

    iget-object v0, v4, LaY/ay;->a:Landroid/view/ViewGroup;

    const v5, 0x7f0f02e0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, LaY/ay;->c:Landroid/widget/ImageView;

    iget-object v0, v3, LaY/ax;->a:Landroid/view/ViewGroup;

    iget-object v5, v4, LaY/ay;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v4, LaY/ay;->a:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v4, LaY/ay;->a:Landroid/view/ViewGroup;

    const v5, 0x7f0f02f1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, LaY/ay;->b:Landroid/widget/TextView;

    iget-object v0, v3, LaY/ax;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_62
    return-object v3
.end method

.method public a()V
    .registers 5

    iget-object v0, p0, LaY/au;->a:LaY/ax;

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    iget-object v0, p0, LaY/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v2, v0, :cond_2e

    iget-object v0, p0, LaY/au;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aj;

    iget-object v1, p0, LaY/au;->a:LaY/ax;

    iget-object v1, v1, LaY/ax;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaY/ay;

    iget-object v1, v1, LaY/ay;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, LaY/au;->a(Lcom/google/googlenav/ui/aj;Landroid/widget/ImageView;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_2e
    iget-object v0, p0, LaY/au;->g:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_37
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 10

    const/16 v6, 0x8

    const/4 v3, 0x4

    const/4 v5, 0x0

    check-cast p2, LaY/ax;

    iput-object p1, p0, LaY/au;->g:Lcom/google/googlenav/ui/p;

    invoke-virtual {p2, p0}, LaY/ax;->a(LaY/au;)V

    iget-object v0, p0, LaY/au;->d:Lcom/google/googlenav/ah;

    if-nez v0, :cond_1a

    iget-object v0, p2, LaY/ax;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p2, LaY/ax;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p2, LaY/ax;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p2, LaY/ax;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    move v1, v5

    :goto_25
    if-ge v1, v3, :cond_43

    iget-object v0, p2, LaY/ax;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ay;

    iget-object v2, v0, LaY/ay;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v0, LaY/ay;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, LaY/ay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_43
    iget-object v0, p0, LaY/au;->b:Ljava/util/List;

    if-nez v0, :cond_80

    move v2, v3

    :goto_48
    move v4, v5

    :goto_49
    if-ge v4, v2, :cond_8c

    iget-object v0, p2, LaY/ax;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ay;

    iget-object v1, p0, LaY/au;->c:[Lcom/google/googlenav/au;

    if-eqz v1, :cond_5e

    iget-object v1, v0, LaY/ay;->a:Landroid/view/ViewGroup;

    iget-object v6, p0, LaY/au;->c:[Lcom/google/googlenav/au;

    invoke-direct {p0, p1, v1, v6, v4}, LaY/au;->a(Lcom/google/googlenav/ui/p;Landroid/view/ViewGroup;[Lcom/google/googlenav/au;I)V

    :cond_5e
    iget-object v1, p0, LaY/au;->b:Ljava/util/List;

    if-eqz v1, :cond_7c

    iget-object v1, p0, LaY/au;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_7c

    iget-object v1, p0, LaY/au;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/aj;

    iget-object v6, v0, LaY/ay;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v6}, LaY/au;->a(Lcom/google/googlenav/ui/aj;Landroid/widget/ImageView;)V

    iget-object v0, v0, LaY/ay;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_49

    :cond_80
    iget-object v0, p0, LaY/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    goto :goto_48

    :cond_8c
    if-ge v2, v3, :cond_19

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->K()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p2, LaY/ax;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ay;

    iget-object v2, v0, LaY/ay;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    const v3, 0x7f0201c5

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/bw;->a(I)Lah/f;

    move-result-object v1

    check-cast v1, Lai/f;

    invoke-static {v2, v1}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    iget-object v1, v0, LaY/ay;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, LaY/ay;->a:Landroid/view/ViewGroup;

    new-instance v2, LaY/av;

    invoke-direct {v2, p0, p1}, LaY/av;-><init>(LaY/au;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, LaY/ay;->b:Landroid/widget/TextView;

    const/16 v2, 0x3e

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->bc:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, v0, LaY/ay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19
.end method

.method public b()I
    .registers 2

    const v0, 0x7f030109

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaY/au;->h:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
