.class public LaY/v;
.super LaY/h;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, LaY/h;-><init>(LaY/i;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lbb/c;)Lbb/d;
    .registers 6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/g;

    sget-object v2, LaY/v;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {v0, p1, v2, v1}, Lcom/google/googlenav/ui/view/android/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    :goto_16
    invoke-static {p1, p2, v0}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    return-object v0

    :cond_1a
    new-instance v1, Lcom/google/googlenav/ui/view/android/T;

    sget-object v0, LaY/v;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f002c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/T;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/android/AndroidBubbleView;)V

    move-object v0, v1

    goto :goto_16
.end method

.method private a(Lbb/c;)Lbb/d;
    .registers 11

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-object v0, LaY/v;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v1, LaY/v;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f001f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, LaY/v;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, LaY/v;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, LaY/v;->c:LaY/i;

    check-cast v1, LaY/x;

    invoke-virtual {v1}, LaY/x;->bv()Lcom/google/googlenav/ah;

    move-result-object v5

    const v2, 0x7f0f0023

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, LaY/x;->bH()Z

    move-result v3

    if-eqz v3, :cond_d2

    invoke-virtual {v1}, LaY/x;->j()Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    invoke-virtual {v3}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5e
    invoke-virtual {v1}, LaY/x;->c()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, LaY/x;->b()Z

    move-result v2

    if-eqz v2, :cond_d6

    const/16 v2, 0x230

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :cond_6e
    :goto_6e
    invoke-virtual {v1}, LaY/x;->i()Z

    move-result v3

    if-nez v3, :cond_f1

    invoke-virtual {v5}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13f

    invoke-static {v5}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_82
    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13c

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_94

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13c

    :cond_94
    :goto_94
    move-object v5, v3

    move-object v3, v2

    move-object v2, v4

    :goto_97
    const v6, 0x7f0f0006

    invoke-static {v0, v6, v5}, Lbd/l;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v5, 0x7f0f0024

    invoke-static {v0, v5, v3}, Lbd/l;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v3, 0x7f0f0025

    invoke-static {v0, v3, v2}, Lbd/l;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v2, 0x7f0f0026

    invoke-virtual {v1}, LaY/x;->bI()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {v1}, LaY/x;->bK()Z

    move-result v1

    if-eqz v1, :cond_be

    const/16 v1, 0x21f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    :cond_be
    invoke-static {v0, v2, v4}, Lbd/l;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, LaY/v;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, LaY/v;->a(Landroid/view/ViewGroup;Lbb/c;)Lbb/d;

    move-result-object v0

    return-object v0

    :cond_d2
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5e

    :cond_d6
    if-eqz v3, :cond_e9

    array-length v2, v3

    if-lez v2, :cond_e9

    aget-object v2, v3, v8

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    array-length v6, v3

    if-le v6, v7, :cond_6e

    aget-object v2, v3, v7

    goto :goto_6e

    :cond_e9
    const/16 v2, 0x4e2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6e

    :cond_f1
    invoke-virtual {v1}, LaY/x;->e()[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v8

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    array-length v2, v5

    if-le v2, v7, :cond_13a

    aget-object v2, v5, v7

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_104
    invoke-static {}, Laf/d;->a()Z

    move-result v6

    if-eqz v6, :cond_136

    array-length v6, v5

    const/4 v7, 0x2

    if-le v6, v7, :cond_136

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context menu bubble contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lines: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_136
    move-object v5, v3

    move-object v3, v4

    goto/16 :goto_97

    :cond_13a
    move-object v2, v4

    goto :goto_104

    :cond_13c
    move-object v2, v4

    goto/16 :goto_94

    :cond_13f
    move-object v3, v4

    goto/16 :goto_82
.end method


# virtual methods
.method public a()Lbb/d;
    .registers 2

    iget-object v0, p0, LaY/v;->c:LaY/i;

    invoke-direct {p0, v0}, LaY/v;->a(Lbb/c;)Lbb/d;

    move-result-object v0

    return-object v0
.end method
