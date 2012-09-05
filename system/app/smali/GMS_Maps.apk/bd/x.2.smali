.class public Lbd/x;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# static fields
.field private static final a:Lcom/google/googlenav/ui/bg;


# instance fields
.field private final b:I

.field private final c:Lbd/G;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/googlenav/ui/ai;

.field private final g:LaY/ao;

.field private h:Lcom/google/googlenav/ui/p;

.field private i:Lbd/D;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    sput-object v0, Lbd/x;->a:Lcom/google/googlenav/ui/bg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lam/b;Lam/b;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/ai;LaY/ao;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbd/G;

    invoke-direct {v0, p1, p2, p3}, Lbd/G;-><init>(Ljava/lang/String;Lam/b;Lam/b;)V

    iput-object v0, p0, Lbd/x;->c:Lbd/G;

    iput-object p4, p0, Lbd/x;->d:Ljava/util/List;

    iput-object p5, p0, Lbd/x;->e:Ljava/util/List;

    iput-object p6, p0, Lbd/x;->f:Lcom/google/googlenav/ui/ai;

    iput-object p7, p0, Lbd/x;->g:LaY/ao;

    iput p8, p0, Lbd/x;->b:I

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private a(Lbd/C;)V
    .registers 6

    new-instance v1, Lbd/E;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lbd/E;-><init>(Lbd/y;)V

    const v0, 0x7f030100

    iget-object v2, p1, Lbd/C;->h:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/E;->a:Landroid/view/ViewGroup;

    iget-object v0, p1, Lbd/C;->h:Landroid/view/ViewGroup;

    iget-object v2, v1, Lbd/E;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lbd/E;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f02e0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lbd/E;->b:Landroid/widget/ImageView;

    iget-object v0, p1, Lbd/C;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lbd/D;I)V
    .registers 8

    const/16 v1, 0xa

    const/4 v2, 0x0

    new-instance v3, Lbd/C;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lbd/C;-><init>(Lbd/y;)V

    const v0, 0x7f0300ff

    iget-object v4, p1, Lbd/D;->d:Landroid/view/ViewGroup;

    invoke-static {v0, v4, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    iget-object v0, p1, Lbd/D;->d:Landroid/view/ViewGroup;

    iget-object v4, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f02d7

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lbd/C;->b:Landroid/widget/TextView;

    iget-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f02d6

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lbd/C;->c:Landroid/widget/ImageView;

    iget-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f02d8

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lbd/C;->d:Landroid/widget/TextView;

    iget-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f02d9

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lbd/C;->e:Landroid/widget/TextView;

    iget-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f02db

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lbd/C;->f:Landroid/widget/TextView;

    iget-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f02dc

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lbd/C;->g:Landroid/widget/TextView;

    iput p2, v3, Lbd/C;->i:I

    iget-object v0, p1, Lbd/D;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lbd/C;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f02dd

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, Lbd/C;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_a1

    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_97
    move v1, v2

    :goto_98
    if-ge v1, v0, :cond_a0

    invoke-direct {p0, v3}, Lbd/x;->a(Lbd/C;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    :cond_a0
    return-void

    :cond_a1
    move v0, v1

    goto :goto_97
.end method

.method static synthetic a(Lbd/x;)V
    .registers 1

    invoke-direct {p0}, Lbd/x;->e()V

    return-void
.end method

.method static synthetic a(Lbd/x;Lbd/D;)V
    .registers 2

    invoke-direct {p0, p1}, Lbd/x;->c(Lbd/D;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aj;Landroid/widget/ImageView;)V
    .registers 4

    iget-object v0, p0, Lbd/x;->f:Lcom/google/googlenav/ui/ai;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lbd/x;->f:Lcom/google/googlenav/ui/ai;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method private a(Lcom/google/googlenav/ui/p;Landroid/view/ViewGroup;[Lcom/google/googlenav/au;I)V
    .registers 6

    new-instance v0, Lbd/B;

    invoke-direct {v0, p0, p1, p4, p3}, Lbd/B;-><init>(Lbd/x;Lcom/google/googlenav/ui/p;I[Lcom/google/googlenav/au;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/p;Lbd/C;Lbd/H;Ljava/util/List;[Lcom/google/googlenav/au;)V
    .registers 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lbd/C;->c:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lbd/x;->a(Lbd/C;Lbd/H;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/C;->b:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lbd/x;->b(Lbd/C;Lbd/H;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/C;->d:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lbd/x;->c(Lbd/C;Lbd/H;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/C;->e:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p3}, Lbd/x;->a(Lcom/google/googlenav/ui/p;Lbd/C;Lbd/H;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/C;->f:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lbd/x;->d(Lbd/C;Lbd/H;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/C;->g:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lbd/x;->e(Lbd/C;Lbd/H;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    if-eqz p4, :cond_9e

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p2, Lbd/C;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_58

    iget-object v0, p2, Lbd/C;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4c
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    invoke-direct {p0, p2}, Lbd/x;->a(Lbd/C;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_58
    move v2, v3

    :goto_59
    iget-object v0, p2, Lbd/C;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_92

    iget-object v0, p2, Lbd/C;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/E;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_78

    iget-object v0, v0, Lbd/E;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Lbd/x;->a(Landroid/view/View;Z)V

    :goto_74
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_59

    :cond_78
    iget-object v1, v0, Lbd/E;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v4}, Lbd/x;->a(Landroid/view/View;Z)V

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bG;

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Lbd/E;Lcom/google/googlenav/ui/bG;)Z

    move-result v1

    iget-object v5, v0, Lbd/E;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v0, v0, Lbd/E;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, p5, v2}, Lbd/x;->a(Lcom/google/googlenav/ui/p;Landroid/view/ViewGroup;[Lcom/google/googlenav/au;I)V

    goto :goto_74

    :cond_92
    iget-object v0, p2, Lbd/C;->h:Landroid/view/ViewGroup;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9b

    move v3, v4

    :cond_9b
    invoke-direct {p0, v0, v3}, Lbd/x;->a(Landroid/view/View;Z)V

    :cond_9e
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(Lbd/C;Lbd/H;)Z
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p2, Lbd/H;->b:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/ui/bw;->a(ZI)Lah/f;

    move-result-object v0

    iget-object v1, p1, Lbd/C;->c:Landroid/widget/ImageView;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1d
    return v3

    :cond_1e
    new-instance v0, Lcom/google/googlenav/ui/bG;

    iget-object v1, p2, Lbd/H;->b:Ljava/lang/String;

    sget v2, Lcom/google/googlenav/ui/bw;->bF:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    iget-object v1, p1, Lbd/C;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Lcom/google/googlenav/ui/aj;Landroid/widget/ImageView;)V

    goto :goto_1d
.end method

.method private a(Lbd/D;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->b:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    invoke-virtual {v1}, Lbd/G;->a()I

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lbd/D;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v1, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->b:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method private a(Lbd/E;Lcom/google/googlenav/ui/bG;)Z
    .registers 8

    const/16 v4, 0x30

    const/4 v0, 0x1

    iget-object v1, p0, Lbd/x;->f:Lcom/google/googlenav/ui/ai;

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget-object v1, p1, Lbd/E;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lbd/x;->f:Lcom/google/googlenav/ui/ai;

    invoke-interface {v2, p2}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v2

    invoke-interface {v2}, Lah/f;->a()I

    move-result v2

    iget-object v3, p0, Lbd/x;->f:Lcom/google/googlenav/ui/ai;

    invoke-interface {v3, p2}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v3

    invoke-interface {v3}, Lah/f;->b()I

    move-result v3

    mul-int/lit8 v2, v2, 0x30

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v1, p1, Lbd/E;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v1}, Lbd/x;->a(Lcom/google/googlenav/ui/aj;Landroid/widget/ImageView;)V

    goto :goto_8
.end method

.method private a(Lcom/google/googlenav/ui/p;Lbd/C;Lbd/H;)Z
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p3, Lbd/H;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6a

    move v0, v1

    :goto_10
    iget-object v3, p0, Lbd/x;->g:LaY/ao;

    if-eqz v3, :cond_6c

    move v6, v1

    :goto_15
    if-eqz v6, :cond_6e

    iget-object v3, p0, Lbd/x;->g:LaY/ao;

    iget v4, p2, Lbd/C;->i:I

    invoke-virtual {v3, v4}, LaY/ao;->c(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    move v3, v1

    :goto_22
    iget-object v4, p3, Lbd/H;->g:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p3, Lbd/H;->f:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_70

    move v5, v1

    :goto_31
    if-nez v3, :cond_37

    if-nez v6, :cond_72

    if-eqz v5, :cond_72

    :cond_37
    iget-object v3, p3, Lbd/H;->g:Ljava/lang/CharSequence;

    :goto_39
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_75

    move v4, v1

    :goto_40
    if-eqz v0, :cond_47

    iget-object v8, p3, Lbd/H;->e:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_47
    iget-object v8, p3, Lbd/H;->a:Lam/b;

    new-instance v9, Lbd/A;

    invoke-direct {v9, p0, p1, p2, v8}, Lbd/A;-><init>(Lbd/x;Lcom/google/googlenav/ui/p;Lbd/C;Lam/b;)V

    if-eqz v4, :cond_5f

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v6, :cond_77

    if-eqz v5, :cond_77

    move v3, v1

    :goto_58
    if-eqz v3, :cond_5f

    iget-object v3, p2, Lbd/C;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5f
    iget-object v3, p2, Lbd/C;->e:Landroid/widget/TextView;

    invoke-static {v3, v7}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    if-nez v0, :cond_68

    if-eqz v4, :cond_69

    :cond_68
    move v2, v1

    :cond_69
    return v2

    :cond_6a
    move v0, v2

    goto :goto_10

    :cond_6c
    move v6, v2

    goto :goto_15

    :cond_6e
    move v3, v2

    goto :goto_22

    :cond_70
    move v5, v2

    goto :goto_31

    :cond_72
    iget-object v3, p3, Lbd/H;->f:Ljava/lang/CharSequence;

    goto :goto_39

    :cond_75
    move v4, v2

    goto :goto_40

    :cond_77
    move v3, v2

    goto :goto_58
.end method

.method private a(Lcom/google/googlenav/ui/p;Lbd/D;)Z
    .registers 6

    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    iget-object v0, v0, Lbd/G;->d:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->d:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aT:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iget-object v1, p2, Lbd/D;->e:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lbd/D;->e:Landroid/widget/TextView;

    new-instance v1, Lbd/y;

    invoke-direct {v1, p0, p1}, Lbd/y;-><init>(Lbd/x;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    iget-object v0, v0, Lbd/G;->d:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x1

    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method static synthetic b(Lbd/x;)Lbd/G;
    .registers 2

    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    return-object v0
.end method

.method private b(Lbd/D;)V
    .registers 6

    new-instance v1, Lbd/F;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lbd/F;-><init>(Lbd/y;)V

    const v0, 0x7f03010c

    iget-object v2, p1, Lbd/D;->h:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/F;->a:Landroid/view/ViewGroup;

    iget-object v0, p1, Lbd/D;->h:Landroid/view/ViewGroup;

    iget-object v2, v1, Lbd/F;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lbd/F;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f02fb

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/F;->b:Landroid/view/View;

    iget-object v0, v1, Lbd/F;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f02fa

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/F;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lbd/D;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lbd/C;Lbd/H;)Z
    .registers 6

    iget-object v0, p1, Lbd/C;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lbd/H;->c:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/4 v0, 0x1

    return v0
.end method

.method private b(Lcom/google/googlenav/ui/p;Lbd/D;)Z
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    iget-object v0, v0, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    :goto_c
    return v4

    :cond_d
    iget-object v0, p2, Lbd/D;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->e:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    iget-object v0, v0, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p2, Lbd/D;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3c

    iget-object v0, p2, Lbd/D;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2c
    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    invoke-direct {p0, p2}, Lbd/x;->b(Lbd/D;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3c
    move v3, v4

    :goto_3d
    iget-object v0, p2, Lbd/D;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_96

    iget-object v0, p2, Lbd/D;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/F;

    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_60

    iget-object v0, v0, Lbd/F;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v4}, Lbd/x;->a(Landroid/view/View;Z)V

    :goto_5c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3d

    :cond_60
    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    iget-object v1, v1, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v0, Lbd/F;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v5}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v2, p0, Lbd/x;->c:Lbd/G;

    iget-object v2, v2, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_80

    iget-object v2, v0, Lbd/F;->b:Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lbd/x;->a(Landroid/view/View;Z)V

    :cond_80
    iget-object v6, v0, Lbd/F;->c:Landroid/widget/TextView;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v7, Lbd/x;->a:Lcom/google/googlenav/ui/bg;

    invoke-static {v6, v2, v7}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, v0, Lbd/F;->a:Landroid/view/ViewGroup;

    new-instance v2, Lbd/z;

    invoke-direct {v2, p0, p1, v1}, Lbd/z;-><init>(Lbd/x;Lcom/google/googlenav/ui/p;Landroid/util/Pair;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5c

    :cond_96
    move v4, v5

    goto/16 :goto_c
.end method

.method private c(Lbd/D;)V
    .registers 2

    iput-object p1, p0, Lbd/x;->i:Lbd/D;

    return-void
.end method

.method private c(Lbd/C;Lbd/H;)Z
    .registers 7

    iget-object v0, p2, Lbd/H;->d:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_14

    iget-object v1, p1, Lbd/C;->d:Landroid/widget/TextView;

    iget-object v2, p2, Lbd/H;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :cond_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private d(Lbd/C;Lbd/H;)Z
    .registers 5

    iget-object v0, p1, Lbd/C;->f:Landroid/widget/TextView;

    iget-object v1, p2, Lbd/H;->h:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbd/x;->i:Lbd/D;

    return-void
.end method

.method private e(Lbd/C;Lbd/H;)Z
    .registers 5

    iget-object v0, p1, Lbd/C;->g:Landroid/widget/TextView;

    iget-object v1, p2, Lbd/H;->i:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Lbd/D;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lbd/D;-><init>(Lbd/y;)V

    const v0, 0x7f0f0224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    iget-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    const v3, 0x7f0f0225

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lbd/D;->b:Landroid/widget/TextView;

    iget-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    const v3, 0x7f0f0226

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lbd/D;->c:Landroid/view/View;

    iget-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    const v3, 0x7f0f0227

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lbd/D;->d:Landroid/view/ViewGroup;

    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    invoke-virtual {v0}, Lbd/G;->a()I

    move-result v0

    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v1

    :goto_43
    if-ge v0, v3, :cond_4b

    invoke-direct {p0, v2, v0}, Lbd/x;->a(Lbd/D;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_4b
    iget-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    const v3, 0x7f0f0228

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lbd/D;->e:Landroid/widget/TextView;

    iget-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    const v3, 0x7f0f0229

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lbd/D;->f:Landroid/widget/TextView;

    iget-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    const v3, 0x7f0f022a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lbd/D;->g:Landroid/view/View;

    iget-object v0, v2, Lbd/D;->a:Landroid/view/ViewGroup;

    const v3, 0x7f0f022b

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lbd/D;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    iget-object v0, v0, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v1

    :goto_8b
    if-ge v0, v3, :cond_93

    invoke-direct {p0, v2}, Lbd/x;->b(Lbd/D;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_93
    return-object v2
.end method

.method public a()V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lbd/x;->i:Lbd/D;

    if-eqz v0, :cond_4f

    move v3, v4

    :goto_a
    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_46

    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v5, v4

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_42

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/aj;

    iget-object v2, p0, Lbd/x;->i:Lbd/D;

    iget-object v2, v2, Lbd/D;->i:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbd/C;

    iget-object v2, v2, Lbd/C;->j:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbd/E;

    iget-object v2, v2, Lbd/E;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lbd/x;->a(Lcom/google/googlenav/ui/aj;Landroid/widget/ImageView;)V

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1b

    :cond_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :cond_46
    iget-object v0, p0, Lbd/x;->h:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_4f
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    check-cast p2, Lbd/D;

    iput-object p1, p0, Lbd/x;->h:Lcom/google/googlenav/ui/p;

    invoke-virtual {p2, p0}, Lbd/D;->a(Lbd/x;)V

    invoke-direct {p0, p2}, Lbd/x;->a(Lbd/D;)Z

    move-result v0

    iget-object v1, p2, Lbd/D;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v1, p2, Lbd/D;->c:Landroid/view/View;

    if-eqz v1, :cond_1b

    iget-object v1, p2, Lbd/D;->c:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lbd/x;->a(Landroid/view/View;Z)V

    :cond_1b
    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    invoke-virtual {v0}, Lbd/G;->a()I

    move-result v0

    iget-object v1, p2, Lbd/D;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3d

    iget-object v0, p2, Lbd/D;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2f
    iget-object v1, p0, Lbd/x;->c:Lbd/G;

    invoke-virtual {v1}, Lbd/G;->a()I

    move-result v1

    if-ge v0, v1, :cond_3d

    invoke-direct {p0, p2, v0}, Lbd/x;->a(Lbd/D;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_3d
    move v6, v7

    :goto_3e
    iget-object v0, p2, Lbd/D;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_a3

    iget-object v0, p2, Lbd/D;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbd/C;

    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    invoke-virtual {v0}, Lbd/G;->a()I

    move-result v0

    if-ge v6, v0, :cond_9d

    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_89

    :cond_62
    move-object v4, v8

    :goto_63
    iget-object v0, p0, Lbd/x;->e:Ljava/util/List;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lbd/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_93

    :cond_6f
    move-object v5, v8

    :goto_70
    iget-object v0, p0, Lbd/x;->c:Lbd/G;

    iget-object v0, v0, Lbd/G;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbd/H;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbd/x;->a(Lcom/google/googlenav/ui/p;Lbd/C;Lbd/H;Ljava/util/List;[Lcom/google/googlenav/au;)V

    iget-object v0, v2, Lbd/C;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    :goto_85
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3e

    :cond_89
    iget-object v0, p0, Lbd/x;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    goto :goto_63

    :cond_93
    iget-object v0, p0, Lbd/x;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/au;

    move-object v5, v0

    goto :goto_70

    :cond_9d
    iget-object v0, v2, Lbd/C;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v7}, Lbd/x;->a(Landroid/view/View;Z)V

    goto :goto_85

    :cond_a3
    iget-object v0, p2, Lbd/D;->e:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lbd/x;->a(Lcom/google/googlenav/ui/p;Lbd/D;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/x;->a(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p2}, Lbd/x;->b(Lcom/google/googlenav/ui/p;Lbd/D;)Z

    move-result v0

    iget-object v1, p2, Lbd/D;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lbd/x;->a(Landroid/view/View;Z)V

    iget-object v1, p2, Lbd/D;->g:Landroid/view/View;

    if-eqz v1, :cond_be

    iget-object v1, p2, Lbd/D;->g:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lbd/x;->a(Landroid/view/View;Z)V

    :cond_be
    iget-object v1, p2, Lbd/D;->h:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lbd/x;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300ac

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/x;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
