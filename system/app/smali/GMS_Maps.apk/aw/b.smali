.class public Law/b;
.super Landroid/widget/ArrayAdapter;


# static fields
.field public static final a:Law/c;

.field public static final b:Law/c;

.field public static final c:Law/c;

.field public static final d:Law/c;

.field public static final e:Law/c;

.field public static final f:Law/c;

.field public static final g:Law/c;

.field public static final h:Law/c;

.field public static final i:Law/c;

.field public static final j:Law/c;

.field public static final k:Law/c;

.field public static final l:Law/c;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const v7, 0x7f0201cc

    const/16 v6, 0x10b

    new-instance v0, Law/c;

    const/16 v1, 0x10e

    const v2, 0x7f0201ce

    const/16 v3, 0xbb9

    const-string v4, "m"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->a:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x2d9

    const/16 v2, 0x10d

    const v3, 0x7f0201cd

    const/16 v4, 0xbba

    const-string v5, "l"

    invoke-direct/range {v0 .. v5}, Law/c;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Law/b;->b:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x110

    const v2, 0x7f0201d1

    const/16 v3, 0xbbc

    const-string v4, "t"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->c:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x27a

    const v2, 0x7f0201d0

    const/16 v3, 0xbbb

    const-string v4, "n"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->d:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x122

    const/16 v4, 0xbbd

    const-string v5, "lj"

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Law/c;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Law/b;->e:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x121

    const/16 v4, 0xbbe

    const-string v5, "la"

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Law/c;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Law/b;->f:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x4d6

    const v2, 0x7f0201d2

    const/16 v3, 0xbbf

    const-string v4, "tr"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->g:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x276

    const v2, 0x7f0201cf

    const/16 v3, 0xbc0

    const-string v4, "p"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->h:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0xe7

    const v2, 0x7f0201ca

    const/16 v3, 0xbc1

    const-string v4, "d"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->i:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x7e

    const v2, 0x7f0201c9

    const/16 v3, 0xbc2

    const-string v4, "c"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->j:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x144

    const v2, 0x7f0201cb

    const/16 v3, 0xbc3

    const-string v4, "h"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->k:Law/c;

    new-instance v0, Law/c;

    const/16 v1, 0x298

    const v2, 0x7f0202d2

    const/16 v3, 0xbc4

    const-string v4, "o"

    invoke-direct {v0, v1, v2, v3, v4}, Law/c;-><init>(IIILjava/lang/String;)V

    sput-object v0, Law/b;->l:Law/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f0f0006

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Law/b;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Law/b;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget v1, Law/c;->a:I

    if-le p0, v1, :cond_1b

    if-ne p0, v2, :cond_1c

    const/16 v0, 0x297

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    const/16 v0, 0x296

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private static d(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    sget v1, Law/c;->a:I

    if-le p0, v1, :cond_e

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    const/16 v0, 0x29a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    const/16 v0, 0x299

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Law/b;->clear()V

    invoke-virtual {p0}, Law/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/c;

    invoke-virtual {p0, v0}, Law/b;->add(Ljava/lang/Object;)V

    goto :goto_b

    :cond_1b
    invoke-virtual {p0}, Law/b;->notifyDataSetChanged()V

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .registers 3

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xd

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Law/b;->a:Law/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Law/b;->b:Law/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ah()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Law/b;->d:Law/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lax/au;->l()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Law/b;->j:Law/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Law/b;->f:Law/c;

    :goto_47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Law/b;->k:Law/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    sget-object v0, Law/b;->h:Law/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_55
    sget-object v0, Law/b;->e:Law/c;

    goto :goto_47
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Law/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_19

    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_19
    invoke-virtual {p0, p1}, Law/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/c;

    const v1, 0x7f0f0061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Law/c;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0f0006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Law/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f017d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Law/c;->c:Ljava/lang/String;

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, v0, Law/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_54
    const v1, 0x7f0f008f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Law/c;->f:I

    sget v3, Law/c;->a:I

    if-le v2, v3, :cond_74

    iget v0, v0, Law/c;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6f
    return-object p2

    :cond_70
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_54

    :cond_74
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6f
.end method
