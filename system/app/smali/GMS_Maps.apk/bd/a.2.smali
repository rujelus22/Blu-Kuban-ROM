.class public Lbd/a;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private a:I

.field private b:I

.field private c:Lam/b;

.field private d:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/google/googlenav/ui/wizard/bO;


# direct methods
.method public constructor <init>(Lam/b;Lcom/google/googlenav/ui/wizard/bO;)V
    .registers 4

    const v0, 0x7f0d001a

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lbd/a;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lbd/a;->b:I

    iput-object p1, p0, Lbd/a;->c:Lam/b;

    iput-object p2, p0, Lbd/a;->p:Lcom/google/googlenav/ui/wizard/bO;

    return-void
.end method

.method private static a(Lam/b;)I
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method private static a(Lam/b;I)I
    .registers 3

    invoke-static {p0, p1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    return v0
.end method

.method private a(Landroid/view/View;III)Landroid/widget/ImageView;
    .registers 10

    const/16 v4, 0xf

    const/16 v3, 0xe

    const/4 v2, 0x0

    const v0, 0x7f0f0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_30

    const v0, 0x7f0f0024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p4, v4, :cond_75

    iput-object v0, p0, Lbd/a;->n:Landroid/widget/TextView;

    :cond_25
    :goto_25
    iget-object v1, p0, Lbd/a;->c:Lam/b;

    invoke-static {v1, p4}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_30
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_59

    const v0, 0x7f0f01d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-ne p4, v4, :cond_7a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x134

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lbd/c;

    invoke-direct {v1, p0}, Lbd/c;-><init>(Lbd/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_59
    :goto_59
    const v0, 0x7f0f01d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x131

    invoke-direct {p0, p3, v1}, Lbd/a;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    :cond_75
    if-ne p4, v3, :cond_25

    iput-object v0, p0, Lbd/a;->o:Landroid/widget/TextView;

    goto :goto_25

    :cond_7a
    if-ne p4, v3, :cond_59

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x132

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lbd/d;

    invoke-direct {v1, p0}, Lbd/d;-><init>(Lbd/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_59
.end method

.method static synthetic a(Lbd/a;)Lcom/google/googlenav/ui/wizard/bO;
    .registers 2

    iget-object v0, p0, Lbd/a;->p:Lcom/google/googlenav/ui/wizard/bO;

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .registers 7

    invoke-static {p2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lbd/a;->c:Lam/b;

    invoke-static {v3, p1}, Lbd/a;->a(Lam/b;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lam/b;)I
    .registers 2

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lbd/a;)Lam/b;
    .registers 2

    iget-object v0, p0, Lbd/a;->c:Lam/b;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4

    invoke-virtual {p0}, Lbd/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x144

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0201cb

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    new-instance v1, Lbd/e;

    invoke-direct {v1, p0}, Lbd/e;-><init>(Lbd/a;)V

    invoke-virtual {v0, p1, v1}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    return-void
.end method

.method public final a(Lcom/google/googlenav/ui/wizard/bU;)V
    .registers 4

    sget-object v0, Lbd/f;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/bU;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lbd/a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/bU;->b()Lai/f;

    move-result-object v1

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :pswitch_1a
    iget-object v0, p0, Lbd/a;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/bU;->b()Lai/f;

    move-result-object v1

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :pswitch_28
    iget-object v0, p0, Lbd/a;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/bU;->b()Lai/f;

    move-result-object v1

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :pswitch_36
    iget-object v0, p0, Lbd/a;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/bU;->b()Lai/f;

    move-result-object v1

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1a
        :pswitch_28
        :pswitch_36
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lbd/a;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lbd/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lbd/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f01b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_154

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_2c
    const v0, 0x7f0f01ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x135

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbd/a;->c:Lam/b;

    invoke-static {v0}, Lbd/a;->b(Lam/b;)I

    move-result v0

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0f01bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x136

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lbd/a;->c:Lam/b;

    invoke-static {v2}, Lbd/a;->a(Lam/b;)I

    move-result v2

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x137

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x139

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x6

    const/16 v3, 0x13a

    invoke-direct {p0, v2, v3}, Lbd/a;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x4

    const/16 v3, 0x13c

    invoke-direct {p0, v2, v3}, Lbd/a;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x13b

    invoke-direct {p0, v7, v2}, Lbd/a;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbd/a;->m:Landroid/widget/ImageView;

    const v0, 0x7f0f01c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x140

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x141

    const/4 v3, 0x7

    const/16 v4, 0xe

    invoke-direct {p0, v0, v2, v3, v4}, Lbd/a;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lbd/a;->d:Landroid/widget/ImageView;

    const v0, 0x7f0f01ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x143

    const/4 v3, 0x5

    const/16 v4, 0xf

    invoke-direct {p0, v0, v2, v3, v4}, Lbd/a;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lbd/a;->k:Landroid/widget/ImageView;

    const v0, 0x7f0f01cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x142

    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lbd/a;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lbd/a;->l:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_153

    const v0, 0x7f0f01cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x13d

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_153
    return-object v1

    :cond_154
    const v0, 0x7f0f017a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f017b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f0201cb

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    new-instance v4, Lbd/b;

    invoke-direct {v4, p0}, Lbd/b;-><init>(Lbd/a;)V

    invoke-virtual {v0, v3, v4}, Law/g;->a(Landroid/view/View;Law/f;)V

    const v0, 0x7f0f0006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x144

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const v3, 0x7f0201e8

    const/4 v2, 0x0

    iget v0, p0, Lbd/a;->a:I

    const/16 v1, 0x132

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Lbd/a;->b:I

    const/16 v1, 0x134

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1a

    iget-object v1, p0, Lbd/a;->p:Lcom/google/googlenav/ui/wizard/bO;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bO;->o()V

    :goto_19
    return v0

    :cond_1a
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v2, p0, Lbd/a;->a:I

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lbd/a;->p:Lcom/google/googlenav/ui/wizard/bO;

    sget-object v2, Lcom/google/googlenav/ui/wizard/hh;->b:Lcom/google/googlenav/ui/wizard/hh;

    iget-object v3, p0, Lbd/a;->c:Lam/b;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bO;->a(Lcom/google/googlenav/ui/wizard/hh;Lam/b;)V

    goto :goto_19

    :cond_2c
    iget v2, p0, Lbd/a;->b:I

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lbd/a;->p:Lcom/google/googlenav/ui/wizard/bO;

    sget-object v2, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hh;

    iget-object v3, p0, Lbd/a;->c:Lam/b;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bO;->a(Lcom/google/googlenav/ui/wizard/hh;Lam/b;)V

    goto :goto_19

    :cond_3a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Lbd/a;->p:Lcom/google/googlenav/ui/wizard/bO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bO;->a()V

    return-void
.end method
