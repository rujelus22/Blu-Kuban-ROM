.class public LaQ/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/ui/bw;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(IZLjava/util/List;Lcom/google/googlenav/ui/bw;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, LaQ/bc;->a:I

    .line 59
    iput-object p3, p0, LaQ/bc;->b:Ljava/util/List;

    .line 60
    iput-object p4, p0, LaQ/bc;->c:Lcom/google/googlenav/ui/bw;

    .line 61
    iput-boolean p5, p0, LaQ/bc;->d:Z

    .line 62
    iput-boolean p2, p0, LaQ/bc;->e:Z

    .line 63
    return-void
.end method

.method private a(LaQ/bg;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/bx;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x4

    const/16 v3, 0xa

    .line 162
    .line 163
    iget-object v0, p0, LaQ/bc;->c:Lcom/google/googlenav/ui/bw;

    if-eqz v0, :cond_6a

    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 167
    new-instance v1, Lcom/google/googlenav/ui/bx;

    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v1, v0, v3}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p1}, LaQ/bg;->d()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, LaQ/bc;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 175
    :goto_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {p2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-ge v1, v3, :cond_4d

    .line 176
    invoke-virtual {p2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v3}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    move-object v2, v3

    .line 182
    :cond_4d
    invoke-virtual {p1}, LaQ/bg;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1}, LaQ/bg;->b()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-object v0

    .line 175
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_6a
    move-object v0, v2

    goto :goto_3b
.end method

.method private a(Lcom/google/googlenav/ui/g;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    move v2, v3

    .line 137
    :goto_6
    iget-object v0, p0, LaQ/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_52

    .line 138
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/bg;

    .line 139
    iget-object v1, p0, LaQ/bc;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 140
    invoke-direct {p0, v0, v1}, LaQ/bc;->a(LaQ/bg;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_29

    .line 142
    invoke-virtual {v0}, LaQ/bg;->d()Landroid/widget/ImageView;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_29
    iget-boolean v1, p0, LaQ/bc;->d:Z

    if-nez v1, :cond_30

    const/4 v1, 0x3

    if-ge v2, v1, :cond_48

    .line 145
    :cond_30
    invoke-virtual {v0}, LaQ/bg;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_37
    invoke-virtual {v0}, LaQ/bg;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, LaQ/be;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v2, v5}, LaQ/be;-><init>(Lcom/google/googlenav/ui/g;ILaQ/bd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 147
    :cond_48
    invoke-virtual {v0}, LaQ/bg;->a()Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    .line 153
    :cond_52
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_74

    .line 154
    iget-object v0, p0, LaQ/bc;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, LaQ/bf;

    iget-object v3, p0, LaQ/bc;->c:Lcom/google/googlenav/ui/bw;

    invoke-direct {v2, v3, v4}, LaQ/bf;-><init>(Lcom/google/googlenav/ui/bw;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 158
    :cond_74
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-boolean v0, p0, LaQ/bc;->e:Z

    if-eqz v0, :cond_8

    .line 83
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 86
    :cond_8
    const v0, 0x7f100373

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    iget-object v1, p0, LaQ/bc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    move v1, v3

    .line 89
    :goto_1c
    iget-object v4, p0, LaQ/bc;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3e

    .line 90
    const v4, 0x7f04014e

    invoke-static {v4, v0, v3}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 91
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 93
    new-instance v5, LaQ/bg;

    invoke-direct {v5, v4}, LaQ/bg;-><init>(Landroid/view/View;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 95
    :cond_3e
    new-instance v0, LaQ/bh;

    const v1, 0x7f100374

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f100375

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f100376

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v1, 0x7f100377

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LaQ/bh;-><init>(Landroid/view/View;Ljava/util/List;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 106
    check-cast p2, LaQ/bh;

    .line 107
    invoke-virtual {p2}, LaQ/bh;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LaQ/bc;->a(Lcom/google/googlenav/ui/g;Ljava/util/List;)V

    .line 109
    invoke-virtual {p0}, LaQ/bc;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 110
    iget-boolean v0, p0, LaQ/bc;->d:Z

    if-eqz v0, :cond_45

    .line 111
    invoke-virtual {p2}, LaQ/bh;->c()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x506

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p2}, LaQ/bh;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    invoke-virtual {p2}, LaQ/bh;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :cond_31
    :goto_31
    invoke-virtual {p2}, LaQ/bh;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_38
    invoke-virtual {p2}, LaQ/bh;->b()Landroid/view/View;

    move-result-object v0

    new-instance v1, LaQ/bd;

    invoke-direct {v1, p0, p1}, LaQ/bd;-><init>(LaQ/bc;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void

    .line 115
    :cond_45
    iget-object v0, p0, LaQ/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/bz;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p2}, LaQ/bh;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 118
    if-eqz v0, :cond_31

    .line 119
    invoke-virtual {p2}, LaQ/bh;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {p2}, LaQ/bh;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, LaQ/bc;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 67
    const v0, 0x7f04014d

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, LaQ/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
