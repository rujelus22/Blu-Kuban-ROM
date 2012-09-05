.class public Lcom/google/googlenav/ui/view/android/bj;
.super Lcom/google/googlenav/ui/view/android/bx;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/o;)V
    .registers 4

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/bx;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    return-void
.end method

.method private a(Landroid/view/View;Lbb/o;I)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v5, p2, Lbb/o;->h:Lbb/n;

    const v1, 0x7f0f01f8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    const v2, 0x7f0f01f9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    const v3, 0x7f0f02fc

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/aB;->a(Lbb/n;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    const v1, 0x7f0f005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p2, Lbb/o;->h:Lbb/n;

    iget-object v2, v2, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Landroid/view/View;Lbb/o;Z)V
    .registers 11

    const/16 v6, 0x11

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v0, 0x7f0f001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p2, Lbb/o;->p:Lbb/p;

    if-eqz v2, :cond_95

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    if-eqz v0, :cond_94

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ao()Z

    move-result v1

    if-nez v1, :cond_31

    const v1, 0x7f0202a6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_31
    iget-object v1, p2, Lbb/o;->p:Lbb/p;

    iget v1, v1, Lbb/p;->a:I

    if-ne v1, v4, :cond_47

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    :cond_47
    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v3, p2, Lbb/o;->p:Lbb/p;

    iget-object v3, v3, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v3, v3, v5

    invoke-virtual {v2, v1, v3, p3}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bl;Z)V

    iget-object v2, p2, Lbb/o;->p:Lbb/p;

    iget v2, v2, Lbb/p;->a:I

    if-ne v2, v4, :cond_68

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_68
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p2, Lbb/o;->p:Lbb/p;

    iget-object v3, v3, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3, p3}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bl;Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p2, Lbb/o;->p:Lbb/p;

    iget-object v3, v3, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3, p3}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bl;Z)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_94
    :goto_94
    return-void

    :cond_95
    if-eqz v0, :cond_9a

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9a
    if-eqz v1, :cond_94

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_94
.end method

.method private a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V
    .registers 7

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p2}, Lcom/google/googlenav/ui/bl;->l()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p2, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    const v0, 0x7f0f03a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_27
    invoke-virtual {p2}, Lcom/google/googlenav/ui/bl;->m()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p2, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    const v0, 0x7f0f03a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_43
    const v0, 0x7f0f03a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_5c

    move v1, v2

    :cond_5c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7f
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bl;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_a
.end method

.method private a(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_3a

    if-eqz p2, :cond_37

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_37
    const/16 v0, 0x118

    goto :goto_30

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

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bj;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bj;->c(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    const v0, 0x7f0f03aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_1e

    const v0, 0x7f0f03a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_1e
    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .registers 8

    const v5, 0x7f0f001c

    const v4, 0x7f0f0012

    const v3, 0x7f0f0011

    const/4 v2, 0x1

    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private d(Landroid/view/View;Lbb/o;)V
    .registers 6

    const v1, 0x7f0f03ab

    const/4 v2, 0x1

    iget-object v0, p2, Lbb/o;->o:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bj;->b(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p2, Lbb/o;->o:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v2, p2, Lbb/o;->o:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v0, :cond_2c

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_2c
.end method

.method private e(Landroid/view/View;Lbb/o;)V
    .registers 5

    iget-boolean v0, p2, Lbb/o;->r:Z

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lbb/o;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const v0, 0x7f0f0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method private f(Landroid/view/View;Lbb/o;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p2, Lbb/o;->n:Lbb/y;

    if-eqz v0, :cond_31

    const v0, 0x7f0f03a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v4, p2, Lbb/o;->n:Lbb/y;

    new-instance v5, Lcom/google/googlenav/ui/view/android/bk;

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/bk;-><init>(Lcom/google/googlenav/ui/view/android/bj;Landroid/view/View;Lbb/o;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/view/ViewGroup;Lbb/y;Landroid/webkit/WebViewClient;)V

    iget-boolean v3, p2, Lbb/o;->r:Z

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p2, Lbb/o;->n:Lbb/y;

    iget-boolean v0, v0, Lbb/y;->h:Z

    if-eqz v0, :cond_31

    move v0, v1

    :goto_30
    return v0

    :cond_31
    move v0, v2

    goto :goto_30
.end method

.method private g(Landroid/view/View;Lbb/o;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p2, Lbb/o;->m:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_32

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bj;->b(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p2, Lbb/o;->v:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :cond_19
    iget-object v1, p2, Lbb/o;->m:Lcom/google/googlenav/ui/bl;

    iget-object v1, v1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v2, p2, Lbb/o;->m:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_32
    return-void
.end method

.method private h(Landroid/view/View;Lbb/o;)V
    .registers 10

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lbb/o;->j:Lbb/p;

    if-eqz v0, :cond_76

    const v0, 0x7f0f0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_76

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v1, v3

    if-nez v1, :cond_33

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v1, v4

    if-nez v1, :cond_33

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v1, v5

    if-nez v1, :cond_33

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v1, v6

    if-eqz v1, :cond_76

    :cond_33
    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lbb/o;->j:Lbb/p;

    iget-object v2, v2, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V

    const v1, 0x7f0f0170

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lbb/o;->j:Lbb/p;

    iget-object v2, v2, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V

    const v1, 0x7f0f0172

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lbb/o;->j:Lbb/p;

    iget-object v2, v2, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v2, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V

    const v1, 0x7f0f01fa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p2, Lbb/o;->j:Lbb/p;

    iget-object v2, v2, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v2, v2, v6

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_76
    return-void
.end method

.method private i(Landroid/view/View;Lbb/o;)V
    .registers 7

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0f0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget v1, p2, Lbb/o;->q:I

    packed-switch v1, :pswitch_data_4a

    :pswitch_14
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :pswitch_22
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :pswitch_27
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :pswitch_2b
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    :pswitch_35
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    :cond_3f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

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

.method private j(Landroid/view/View;Lbb/o;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p2, Lbb/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_34

    const v0, 0x7f0f00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_27
    iget-object v1, p2, Lbb/o;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p2, Lbb/o;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method

.method private k(Landroid/view/View;Lbb/o;)V
    .registers 5

    if-eqz p2, :cond_34

    iget-object v0, p2, Lbb/o;->h:Lbb/n;

    if-eqz v0, :cond_34

    iget v0, p2, Lbb/o;->c:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_13

    const v0, 0x7f03008f

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lbb/o;I)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const v0, 0x7f0f01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p2, Lbb/o;->h:Lbb/n;

    iget-object v1, v1, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    const v0, 0x7f0f01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p2, Lbb/o;->h:Lbb/n;

    iget-object v1, v1, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    goto :goto_12

    :cond_34
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f0f03ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method private m()Lbb/o;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/o;

    return-object v0
.end method


# virtual methods
.method public H_()V
    .registers 3

    const v0, 0x7f0f005a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bj;->m()Lbb/o;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lbb/o;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bj;->b(Landroid/view/View;Lbb/o;)V

    goto :goto_10
.end method

.method protected M_()V
    .registers 1

    return-void
.end method

.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bj;->requestWindowFeature(I)Z

    :cond_a
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bj;->m()Lbb/o;

    move-result-object v1

    iget-boolean v2, v1, Lbb/o;->u:Z

    if-eqz v2, :cond_16

    iget v1, v1, Lbb/o;->w:I

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_16
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bx;->a(Landroid/view/View;)V

    return-void
.end method

.method protected a(Landroid/view/View;Lbb/o;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->j(Landroid/view/View;Lbb/o;)V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->k(Landroid/view/View;Lbb/o;)V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->i(Landroid/view/View;Lbb/o;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aB;->a()V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->h(Landroid/view/View;Lbb/o;)V

    return-void
.end method

.method protected a(Landroid/widget/ListView;Lbb/o;)V
    .registers 7

    const/4 v3, 0x1

    iget-boolean v0, p2, Lbb/o;->u:Z

    if-eqz v0, :cond_23

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/Y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->r()Lcom/google/googlenav/ui/p;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/google/googlenav/ui/view/android/Y;-><init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p2, Lbb/o;->w:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->r()Lcom/google/googlenav/ui/p;

    move-result-object v1

    invoke-static {v0, p2, v1, p1}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;Landroid/widget/ListView;)V

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_22
.end method

.method protected b(Landroid/view/View;Lbb/o;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->g(Landroid/view/View;Lbb/o;)V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->d(Landroid/view/View;Lbb/o;)V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->f(Landroid/view/View;Lbb/o;)Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;->e(Landroid/view/View;Lbb/o;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lbb/o;Z)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->w()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bj;->m()Lbb/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/view/View;Lbb/o;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bj;->m()Lbb/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bj;->c(Landroid/view/View;Lbb/o;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bj;->m()Lbb/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bj;->b(Landroid/view/View;Lbb/o;)V

    return-object v0
.end method

.method protected c(Landroid/view/View;Lbb/o;)V
    .registers 6

    const v0, 0x7f0f005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/widget/ListView;Lbb/o;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->k()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_10
    return-void
.end method

.method protected k()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/bl;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bl;-><init>(Lcom/google/googlenav/ui/view/android/bj;)V

    return-object v0
.end method

.method protected w()I
    .registers 2

    const v0, 0x7f030172

    return v0
.end method
