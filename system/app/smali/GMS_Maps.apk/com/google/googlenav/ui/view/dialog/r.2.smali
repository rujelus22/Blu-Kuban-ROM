.class public Lcom/google/googlenav/ui/view/dialog/R;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lam/n;

.field private final b:Lcom/google/googlenav/ui/view/dialog/W;

.field private final c:Lcom/google/googlenav/ui/view/dialog/V;

.field private d:Lcom/google/googlenav/ui/view/dialog/F;


# direct methods
.method public constructor <init>(Lam/n;Lcom/google/googlenav/ui/view/dialog/W;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/R;->requestWindowFeature(I)Z

    .line 78
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    .line 79
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/R;->b:Lcom/google/googlenav/ui/view/dialog/W;

    .line 80
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/V;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/dialog/V;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/R;)Lcom/google/googlenav/ui/view/dialog/W;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->b:Lcom/google/googlenav/ui/view/dialog/W;

    return-object v0
.end method

.method static a(Landroid/view/View;Lam/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 277
    const v0, 0x7f10008e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lam/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const v0, 0x7f100092

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lam/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v0, 0x7f100090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lam/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const v0, 0x7f10008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lam/f;->g()LS/f;

    move-result-object v1

    check-cast v1, LT/f;

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    const v0, 0x7f10008d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lam/f;->a()Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    :goto_54
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const v0, 0x7f100091

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    invoke-virtual {p1}, Lam/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p1}, Lam/f;->j()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f010f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 297
    :goto_77
    return-void

    .line 283
    :cond_78
    const/16 v0, 0x8

    goto :goto_54

    .line 294
    :cond_7b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0110

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_77
.end method

.method private i()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    const/16 v1, 0x10d

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    invoke-virtual {v0}, Lam/n;->f()I

    move-result v0

    .line 216
    packed-switch v0, :pswitch_data_34

    .line 225
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :goto_13
    return-object v0

    .line 218
    :pswitch_14
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_13

    .line 220
    :pswitch_1d
    const/16 v0, 0x10e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_13

    .line 222
    :pswitch_28
    const/16 v0, 0x10f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_13

    .line 216
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_28
    .end packed-switch
.end method

.method private l()I
    .registers 3

    .prologue
    const v0, 0x7f0200af

    .line 234
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    invoke-virtual {v1}, Lam/n;->f()I

    move-result v1

    .line 235
    packed-switch v1, :pswitch_data_16

    .line 243
    :goto_c
    :pswitch_c
    return v0

    .line 239
    :pswitch_d
    const v0, 0x7f0200b0

    goto :goto_c

    .line 241
    :pswitch_11
    const v0, 0x7f0200b1

    goto :goto_c

    .line 235
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private m()Ljava/lang/String;
    .registers 5

    .prologue
    .line 251
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    invoke-virtual {v3}, Lam/n;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 5

    .prologue
    .line 256
    const-string v0, "{0} - {1}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xb1

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    invoke-virtual {v3}, Lam/n;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected K_()V
    .registers 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->K_()V

    .line 207
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->unlockScreenOrientation()V

    .line 209
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 266
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_1c

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    aget-object v2, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/view/dialog/R;->a(Landroid/view/View;Lam/f;)V

    .line 266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 269
    :cond_1c
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/R;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 88
    const v0, 0x7f04001d

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/dialog/V;->a:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v4, 0x7f100098

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/google/googlenav/ui/view/dialog/V;->b:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v4, 0x7f10009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/google/googlenav/ui/view/dialog/V;->c:Landroid/view/View;

    .line 94
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f10009c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->d:Landroid/view/ViewGroup;

    .line 95
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f100095

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->l:Landroid/widget/ImageView;

    .line 96
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f100099

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->f:Landroid/widget/TextView;

    .line 97
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f10009a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->g:Landroid/widget/TextView;

    .line 98
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f10009f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->i:Landroid/widget/TextView;

    .line 99
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f10009d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->j:Landroid/widget/TextView;

    .line 100
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f1000a0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->k:Landroid/widget/TextView;

    .line 101
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f10009b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->h:Landroid/widget/TextView;

    .line 102
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f100097

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    .line 103
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    const v0, 0x7f100096

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/google/googlenav/ui/view/dialog/V;->n:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    invoke-virtual {v0}, Lam/n;->e()I

    move-result v0

    const/4 v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    invoke-virtual {v0, v4}, Lam/n;->a(I)Ljava/util/List;

    move-result-object v5

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    new-array v6, v4, [Landroid/view/View;

    iput-object v6, v0, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/R;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b00bf

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v0, v1

    .line 112
    :goto_d0
    if-ge v0, v4, :cond_104

    .line 113
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/R;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    const v8, 0x7f09000a

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/V;->d:Landroid/view/ViewGroup;

    const/4 v9, -0x1

    invoke-virtual {v8, v7, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 117
    const v7, 0x7f04001c

    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/V;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 118
    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/V;->e:[Landroid/view/View;

    aput-object v7, v8, v0

    .line 119
    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/dialog/V;->d:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    .line 122
    :cond_104
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/dialog/R;->a(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    invoke-virtual {v1}, Lam/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/R;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->i:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/R;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->l:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/R;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/R;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->j:Landroid/widget/TextView;

    const/16 v1, 0x536

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->k:Landroid/widget/TextView;

    const/16 v1, 0x259

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/S;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/S;-><init>(Lcom/google/googlenav/ui/view/dialog/R;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/T;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/T;-><init>(Lcom/google/googlenav/ui/view/dialog/R;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/U;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/U;-><init>(Lcom/google/googlenav/ui/view/dialog/R;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/F;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lam/n;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/F;-><init>(Lam/n;Lcom/google/googlenav/ui/view/dialog/V;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->d:Lcom/google/googlenav/ui/view/dialog/F;

    .line 163
    return-object v3
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 192
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->lockScreenOrientation()V

    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->c:Lcom/google/googlenav/ui/view/dialog/V;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->a:Landroid/view/View;

    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/view/View;)V

    .line 198
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->d()V

    .line 199
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->b:Lcom/google/googlenav/ui/view/dialog/W;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->b:Lcom/google/googlenav/ui/view/dialog/W;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/W;->c()V

    .line 177
    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 182
    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->onStart()V

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->d:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/F;->run()V

    .line 170
    return-void
.end method
