.class public LaM/A;
.super LaM/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, LaM/h;-><init>(LaM/i;)V

    .line 37
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/d;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 144
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 147
    const/4 v1, 0x0

    .line 148
    new-instance v0, Lcom/google/googlenav/ui/view/d;

    sget-object v2, LaM/A;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {v0, p1, v2, v1}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 153
    :goto_16
    invoke-static {p1, p2, v0}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 154
    return-object v0

    .line 150
    :cond_1a
    new-instance v1, Lcom/google/googlenav/ui/view/android/M;

    sget-object v0, LaM/A;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f100050

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/M;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/android/AndroidBubbleView;)V

    move-object v0, v1

    goto :goto_16
.end method

.method private a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/d;
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 49
    sget-object v0, LaM/A;->a:Landroid/view/ViewGroup;

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    sget-object v1, LaM/A;->a:Landroid/view/ViewGroup;

    const v2, 0x7f100042

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    sget-object v1, LaM/A;->a:Landroid/view/ViewGroup;

    const v2, 0x7f100044

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 53
    sget-object v1, LaM/A;->a:Landroid/view/ViewGroup;

    const v2, 0x7f10004a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v1, p0, LaM/A;->c:LaM/i;

    check-cast v1, LaM/C;

    .line 57
    invoke-virtual {v1}, LaM/C;->bt()Lcom/google/googlenav/ai;

    move-result-object v5

    .line 60
    const v2, 0x7f100046

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v1}, LaM/C;->bF()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 63
    invoke-virtual {v1}, LaM/C;->bE()LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    .line 64
    invoke-virtual {v3}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_5e
    invoke-virtual {v1}, LaM/C;->c()[Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v1}, LaM/C;->b()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 76
    const/16 v2, 0x264

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_6e
    :goto_6e
    invoke-virtual {v1}, LaM/C;->f()Z

    move-result v3

    if-nez v3, :cond_f1

    .line 92
    invoke-virtual {v5}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13f

    .line 94
    invoke-static {v5}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 99
    :goto_82
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13c

    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

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

    .line 117
    :goto_97
    const v6, 0x7f10001e

    invoke-static {v0, v6, v5}, LaQ/G;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 118
    const v5, 0x7f100047

    invoke-static {v0, v5, v3}, LaQ/G;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 119
    const v3, 0x7f100048

    invoke-static {v0, v3, v2}, LaQ/G;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 122
    const v2, 0x7f100049

    invoke-virtual {v1}, LaM/C;->bG()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {v1}, LaM/C;->bI()Z

    move-result v1

    if-eqz v1, :cond_be

    const/16 v1, 0x252

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    :cond_be
    invoke-static {v0, v2, v4}, LaQ/G;->a(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 128
    const v1, 0x7f100043

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 131
    sget-object v0, LaM/A;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, LaM/A;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    return-object v0

    .line 67
    :cond_d2
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5e

    .line 77
    :cond_d6
    if-eqz v3, :cond_e9

    array-length v2, v3

    if-lez v2, :cond_e9

    .line 79
    aget-object v2, v3, v8

    .line 80
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    array-length v6, v3

    if-le v6, v7, :cond_6e

    .line 81
    aget-object v2, v3, v7

    goto :goto_6e

    .line 85
    :cond_e9
    const/16 v2, 0x5e9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6e

    .line 106
    :cond_f1
    invoke-virtual {v1}, LaM/C;->e()[Ljava/lang/String;

    move-result-object v5

    .line 107
    aget-object v2, v5, v8

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 108
    array-length v2, v5

    if-le v2, v7, :cond_13a

    .line 109
    aget-object v2, v5, v7

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    :goto_104
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v6

    if-eqz v6, :cond_136

    array-length v6, v5

    const/4 v7, 0x2

    if-le v6, v7, :cond_136

    .line 112
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
.method public a()Lcom/google/googlenav/ui/view/d;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, LaM/A;->c:LaM/i;

    invoke-direct {p0, v0}, LaM/A;->a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    return-object v0
.end method
