.class public Lcom/google/googlenav/ui/view/android/aU;
.super Lcom/google/googlenav/ui/view/android/bl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/bl;-><init>(Lcom/google/googlenav/ui/g;ILcom/google/googlenav/ui/view/p;)V

    .line 58
    return-void
.end method

.method private a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 478
    if-eqz p1, :cond_a

    .line 479
    if-nez p2, :cond_b

    .line 480
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_a
    :goto_a
    return-void

    .line 482
    :cond_b
    invoke-virtual {p2}, Lcom/google/googlenav/ui/bd;->k()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 483
    iget-object v0, p2, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 484
    const v0, 0x7f100022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 485
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 487
    :cond_27
    invoke-virtual {p2}, Lcom/google/googlenav/ui/bd;->l()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 488
    iget-object v0, p2, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 489
    const v0, 0x7f100429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 490
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    :cond_43
    const v0, 0x7f100428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 493
    iget-object v3, p2, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_5c

    move v1, v2

    :cond_5c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 498
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    :cond_7f
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/bd;)Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {p2}, Lcom/google/googlenav/ui/bd;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_a
.end method

.method private a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 376
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v5, p2, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    const v2, 0x7f100244

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    const v3, 0x7f100380

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/t;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    .line 382
    const v1, 0x7f100026

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 384
    return-void
.end method

.method private a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x11

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    const v0, 0x7f10003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    if-eqz v2, :cond_95

    .line 166
    if-eqz v1, :cond_1d

    .line 167
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_1d
    if-eqz v0, :cond_94

    .line 170
    check-cast v0, Landroid/widget/LinearLayout;

    .line 172
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-nez v1, :cond_31

    .line 173
    const v1, 0x7f020320

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 180
    :cond_31
    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget v1, v1, Lcom/google/googlenav/ui/view/v;->a:I

    if-ne v1, v4, :cond_47

    .line 181
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 183
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 185
    :cond_47
    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 186
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v3, v3, v5

    invoke-virtual {v2, v1, v3, p3}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V

    .line 190
    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget v2, v2, Lcom/google/googlenav/ui/view/v;->a:I

    if-ne v2, v4, :cond_68

    .line 191
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 193
    :cond_68
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3, p3}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V

    .line 195
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v1, 0x7f10003f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3, p3}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V

    .line 197
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    :cond_94
    :goto_94
    return-void

    .line 200
    :cond_95
    if-eqz v0, :cond_9a

    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_9a
    if-eqz v1, :cond_94

    .line 204
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_94
.end method

.method private a(Landroid/view/View;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 535
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 538
    if-le v0, v1, :cond_3a

    .line 540
    if-eqz p2, :cond_37

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 549
    :goto_30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 550
    return-void

    .line 540
    :cond_37
    const/16 v0, 0x118

    goto :goto_30

    .line 545
    :cond_3a
    if-eqz p2, :cond_49

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_30

    :cond_49
    const/16 v0, 0xaa

    goto :goto_30
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aU;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aU;->c(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4
    .parameter

    .prologue
    .line 148
    const v0, 0x7f100433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 149
    if-nez v0, :cond_1e

    .line 153
    const v0, 0x7f100431

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 154
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 157
    :cond_1e
    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f10003f

    const v4, 0x7f100031

    const v3, 0x7f100030

    const/4 v2, 0x1

    .line 557
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 558
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 559
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 560
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 561
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 562
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 563
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 564
    return-void
.end method

.method private d(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const v1, 0x7f100434

    const/4 v2, 0x1

    .line 128
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->o:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_2d

    .line 129
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aU;->b(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    .line 133
    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->o:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    .line 135
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setEnabled(Z)V

    .line 136
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setFocusable(Z)V

    .line 137
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->o:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/bd;)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_2c
    :goto_2c
    return-void

    .line 140
    :cond_2d
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    .line 141
    if-eqz v0, :cond_2c

    .line 142
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_2c
.end method

.method private e(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 212
    iget-boolean v0, p2, Lcom/google/googlenav/ui/view/u;->r:Z

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/u;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 213
    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_16
    return-void
.end method

.method private f(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 218
    const/4 v2, 0x1

    .line 219
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->n:Lcom/google/googlenav/ui/view/C;

    if-eqz v0, :cond_31

    .line 223
    const v0, 0x7f100432

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 224
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 226
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v4, p2, Lcom/google/googlenav/ui/view/u;->n:Lcom/google/googlenav/ui/view/C;

    new-instance v5, Lcom/google/googlenav/ui/view/android/aV;

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/aV;-><init>(Lcom/google/googlenav/ui/view/android/aU;Landroid/view/View;Lcom/google/googlenav/ui/view/u;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/view/C;Landroid/webkit/WebViewClient;)V

    .line 241
    iget-boolean v3, p2, Lcom/google/googlenav/ui/view/u;->r:Z

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Z)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 245
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->n:Lcom/google/googlenav/ui/view/C;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/C;->h:Z

    if-eqz v0, :cond_31

    move v0, v1

    .line 249
    :goto_30
    return v0

    :cond_31
    move v0, v2

    goto :goto_30
.end method

.method private g(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->m:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_32

    .line 254
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aU;->b(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    .line 256
    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    iget-boolean v1, p2, Lcom/google/googlenav/ui/view/u;->v:Z

    if-eqz v1, :cond_19

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 260
    :cond_19
    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->m:Lcom/google/googlenav/ui/bd;

    iget-object v1, v1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->m:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/bd;)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_32
    return-void
.end method

.method private h(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    if-eqz v0, :cond_76

    .line 270
    const v0, 0x7f100024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 271
    if-eqz v0, :cond_76

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v3

    if-nez v1, :cond_33

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v4

    if-nez v1, :cond_33

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v5

    if-nez v1, :cond_33

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v6

    if-eqz v1, :cond_76

    .line 276
    :cond_33
    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V

    .line 278
    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V

    .line 280
    const v1, 0x7f1001a0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v2, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V

    .line 282
    const v1, 0x7f100249

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v2, v2, v6

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V

    .line 284
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    :cond_76
    return-void
.end method

.method private i(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 290
    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 291
    if-nez v0, :cond_f

    .line 324
    :goto_e
    return-void

    .line 296
    :cond_f
    iget v1, p2, Lcom/google/googlenav/ui/view/u;->q:I

    packed-switch v1, :pswitch_data_4a

    .line 314
    :pswitch_14
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 317
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 299
    :pswitch_22
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 303
    :pswitch_27
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 306
    :pswitch_2b
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 310
    :pswitch_35
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    const v1, 0x7f02021f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 319
    :cond_3f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 296
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_27
        :pswitch_14
        :pswitch_2b
        :pswitch_35
    .end packed-switch
.end method

.method private j(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 328
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_34

    .line 329
    const v0, 0x7f100025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    if-eqz v0, :cond_33

    .line 331
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 334
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 338
    :cond_27
    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :cond_33
    :goto_33
    return-void

    .line 342
    :cond_34
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method

.method private k(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 348
    if-eqz p2, :cond_34

    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    if-eqz v0, :cond_34

    .line 349
    iget v0, p2, Lcom/google/googlenav/ui/view/u;->c:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_13

    .line 351
    const v0, 0x7f0400aa

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;I)V

    .line 368
    :cond_12
    :goto_12
    return-void

    .line 355
    :cond_13
    const v0, 0x7f100243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 357
    const v0, 0x7f100244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/t;->b:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    goto :goto_12

    .line 360
    :cond_34
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 363
    const v0, 0x7f100435

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_12

    .line 365
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method private w()Lcom/google/googlenav/ui/view/u;
    .registers 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->i()Lcom/google/googlenav/ui/view/p;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 67
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 69
    :cond_10
    return-void
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 82
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aU;->requestWindowFeature(I)Z

    .line 87
    :cond_a
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 416
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 417
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aU;->w()Lcom/google/googlenav/ui/view/u;

    move-result-object v1

    .line 418
    iget-boolean v2, v1, Lcom/google/googlenav/ui/view/u;->u:Z

    if-eqz v2, :cond_16

    .line 419
    iget v1, v1, Lcom/google/googlenav/ui/view/u;->w:I

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 422
    :cond_16
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bl;->a(Landroid/view/View;)V

    .line 423
    return-void
.end method

.method protected a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->j(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->k(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->i(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aU;->h:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ak;->a()V

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->h(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 113
    return-void
.end method

.method protected a(Landroid/widget/ListView;Lcom/google/googlenav/ui/view/u;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 457
    iget-boolean v0, p2, Lcom/google/googlenav/ui/view/u;->u:Z

    if-eqz v0, :cond_23

    .line 458
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 459
    new-instance v0, Lcom/google/googlenav/ui/view/android/S;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->r()Lcom/google/googlenav/ui/g;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/google/googlenav/ui/view/android/S;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    iget v0, p2, Lcom/google/googlenav/ui/view/u;->w:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 468
    :goto_22
    return-void

    .line 464
    :cond_23
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->r()Lcom/google/googlenav/ui/g;

    move-result-object v1

    invoke-static {v0, p2, v1, p1}, Lcom/google/googlenav/ui/view/android/H;->a(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;Landroid/widget/ListView;)V

    .line 466
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_22
.end method

.method protected b(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->g(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->d(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->f(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)Z

    move-result v0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aU;->e(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;Z)V

    .line 125
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->n()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aU;->w()Lcom/google/googlenav/ui/view/u;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 75
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aU;->w()Lcom/google/googlenav/ui/view/u;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aU;->c(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 76
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aU;->w()Lcom/google/googlenav/ui/view/u;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aU;->b(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 77
    return-object v0
.end method

.method protected c(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 442
    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 443
    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/widget/ListView;Lcom/google/googlenav/ui/view/u;)V

    .line 444
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->o()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 448
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aU;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 454
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .registers 3

    .prologue
    .line 394
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;)V

    .line 398
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aU;->w()Lcom/google/googlenav/ui/view/u;

    move-result-object v1

    .line 400
    if-nez v1, :cond_11

    .line 412
    :goto_10
    return-void

    .line 407
    :cond_11
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aU;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 411
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aU;->b(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    goto :goto_10
.end method

.method protected n()I
    .registers 2

    .prologue
    .line 387
    const v0, 0x7f0401be

    return v0
.end method

.method protected o()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 426
    new-instance v0, Lcom/google/googlenav/ui/view/android/aW;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aW;-><init>(Lcom/google/googlenav/ui/view/android/aU;)V

    return-object v0
.end method

.method protected v()V
    .registers 1

    .prologue
    .line 518
    return-void
.end method
