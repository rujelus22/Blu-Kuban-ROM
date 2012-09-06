.class public Lcom/google/googlenav/ui/view/dialog/cF;
.super Lcom/google/googlenav/ui/view/dialog/bC;
.source "SourceFile"

# interfaces
.implements Lax/V;


# instance fields
.field d:Ljava/util/List;

.field e:Landroid/view/View;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/ImageView;

.field volatile o:Z

.field private final p:LaM/bx;

.field private q:Landroid/widget/ListView;

.field private r:Lcom/google/googlenav/ui/android/LoadingFooterView;

.field private s:I


# direct methods
.method public constructor <init>(LaM/bx;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    const v0, 0x7f0f0018

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/bC;-><init>(LaM/m;I)V

    .line 76
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->o:Z

    .line 94
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    .line 95
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->b()Lax/U;

    move-result-object v0

    invoke-interface {v0, p0}, Lax/U;->a(Lax/V;)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/cF;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->q:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 155
    const v0, 0x7f0400a4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->r:Lcom/google/googlenav/ui/android/LoadingFooterView;

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->r:Lcom/google/googlenav/ui/android/LoadingFooterView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cI;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/dialog/cI;-><init>(Lcom/google/googlenav/ui/view/dialog/cF;Lcom/google/googlenav/ui/view/dialog/cG;)V

    new-instance v2, Lcom/google/googlenav/ui/view/a;

    invoke-direct {v2, v3, v3}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setViewportListener(Lcom/google/googlenav/ui/view/K;Lcom/google/googlenav/ui/view/a;)V

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->r:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/cF;)Lcom/google/googlenav/ui/android/LoadingFooterView;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->r:Lcom/google/googlenav/ui/android/LoadingFooterView;

    return-object v0
.end method

.method private c(I)Ljava/util/List;
    .registers 10
    .parameter

    .prologue
    .line 208
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bH()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v2

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->s:I

    add-int/2addr v0, p1

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 213
    :cond_1f
    :goto_1f
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->s:I

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_78

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_78

    .line 214
    iget v4, p0, Lcom/google/googlenav/ui/view/dialog/cF;->s:I

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    iget v5, p0, Lcom/google/googlenav/ui/view/dialog/cF;->s:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlenav/ui/view/dialog/cF;->s:I

    .line 218
    invoke-interface {v2, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v5

    .line 219
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lax/A;->n()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 222
    invoke-interface {v2, v0}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Lax/E;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1f

    .line 227
    const/4 v6, 0x1

    const/16 v7, 0x57a

    invoke-virtual {p0, v0, v4, v6, v7}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Lcom/google/googlenav/ai;IZI)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v4

    .line 230
    invoke-virtual {v5}, Lax/A;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 231
    invoke-virtual {v5}, Lax/A;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    .line 234
    :cond_6d
    invoke-virtual {v4}, Lcom/google/googlenav/ui/view/android/bK;->a()Lcom/google/googlenav/ui/view/android/bJ;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 238
    :cond_78
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bA()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v0

    sget-object v2, LaM/m;->u:Lcom/google/common/base/D;

    invoke-virtual {v0, v3, v2, p0}, Lah/s;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V

    .line 240
    return-object v1
.end method

.method static synthetic o()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/cF;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method


# virtual methods
.method public P_()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->c:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->a()V

    .line 251
    :cond_9
    return-void
.end method

.method a(Lax/E;)Lcom/google/googlenav/ai;
    .registers 4
    .parameter

    .prologue
    .line 323
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 324
    invoke-virtual {p1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 327
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected a(Lcom/google/googlenav/F;)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cF;->m()V

    .line 190
    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->s:I

    .line 191
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/dialog/cF;->c(I)Ljava/util/List;

    move-result-object v1

    .line 193
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cF;->a(I)V

    .line 194
    return-object v1

    .line 193
    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method

.method protected a(I)V
    .registers 3
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;)V
    .registers 5
    .parameter

    .prologue
    .line 283
    const v0, 0x7f04006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->e:Landroid/view/View;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bH()Lax/m;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Lax/m;->d()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 291
    const/16 v0, 0x586

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->e:Landroid/view/View;

    const v2, 0x7f100023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->m:Landroid/widget/TextView;

    .line 306
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->e:Landroid/view/View;

    const v1, 0x7f10008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->n:Landroid/widget/ImageView;

    .line 308
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const v1, 0x7f0203b4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->b(I)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 310
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cF;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    return-void

    .line 295
    :cond_5e
    const/16 v0, 0x57f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 301
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/16 v0, 0x583

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method public a(Lax/J;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 336
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 337
    :cond_a
    const/4 v0, 0x0

    .line 339
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->o:Z

    if-eqz v0, :cond_1c

    .line 372
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cF;->i()V

    .line 373
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/cF;->o:Z

    .line 374
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->q:Landroid/widget/ListView;

    if-eqz v0, :cond_13

    .line 377
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 379
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->r:Lcom/google/googlenav/ui/android/LoadingFooterView;

    if-eqz v0, :cond_1c

    .line 380
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->r:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    .line 383
    :cond_1c
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cF;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 102
    const v1, 0x7f0400a1

    invoke-virtual {v0, v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->aA()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->k()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 109
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    invoke-virtual {v1}, LaM/bx;->bK()V

    .line 113
    :cond_2e
    const v1, 0x7f100026

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cF;->q:Landroid/widget/ListView;

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Landroid/view/LayoutInflater;)V

    .line 116
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cF;->q:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/cF;->e:Landroid/view/View;

    invoke-virtual {v1, v3, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 117
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cF;->q:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V

    .line 120
    const v0, 0x7f10002e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cG;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/dialog/cG;-><init>(Lcom/google/googlenav/ui/view/dialog/cF;LY/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cG;->g()V

    .line 144
    return-object v2
.end method

.method l()Lcom/google/googlenav/ui/ap;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bI()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    return-object v0
.end method

.method protected m()V
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bH()Lax/m;

    move-result-object v0

    .line 164
    if-nez v0, :cond_9

    .line 185
    :goto_8
    return-void

    .line 173
    :cond_9
    const/4 v1, 0x1

    .line 174
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cF;->p:LaM/bx;

    invoke-virtual {v2}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/bw;->a(Z)Z

    .line 178
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cF;->l()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    .line 179
    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    .line 180
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 181
    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    invoke-interface {v0, v1}, Lax/r;->a(Lat/B;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    goto :goto_8

    .line 183
    :cond_2e
    invoke-interface {v0}, Lax/r;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    goto :goto_8
.end method

.method public n()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->c:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_3f

    .line 266
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cF;->c(I)Ljava/util/List;

    move-result-object v2

    .line 268
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 269
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/cF;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_f

    .line 271
    :cond_21
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->s:I

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/cF;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->r:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    .line 276
    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cF;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 277
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 279
    :goto_3c
    return v0

    :cond_3d
    move v0, v1

    .line 277
    goto :goto_3c

    :cond_3f
    move v0, v1

    .line 279
    goto :goto_3c
.end method
