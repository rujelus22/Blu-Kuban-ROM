.class public LaS/e;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private A:Landroid/widget/HorizontalScrollView;

.field private B:Landroid/view/MenuItem;

.field private C:Lcom/google/googlenav/ui/bF;

.field private D:Ljava/util/List;

.field a:Landroid/view/MenuItem;

.field b:Landroid/widget/Button;

.field final c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private final d:Lcom/google/googlenav/ui/bF;

.field private final k:Z

.field private final l:Lcom/google/googlenav/ui/wizard/fu;

.field private final m:Lcom/google/googlenav/ah;

.field private final n:LK/bp;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;Z)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;)V

    new-instance v0, LK/bq;

    invoke-direct {v0}, LK/bq;-><init>()V

    const-string v1, "0"

    const v2, 0x7f0f030e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "1"

    const v2, 0x7f0f030f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "2"

    const v2, 0x7f0f0310

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "3"

    const v2, 0x7f0f0311

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    invoke-virtual {v0}, LK/bq;->a()LK/bp;

    move-result-object v0

    iput-object v0, p0, LaS/e;->n:LK/bp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaS/e;->D:Ljava/util/List;

    new-instance v0, LaS/f;

    invoke-direct {v0, p0}, LaS/f;-><init>(LaS/e;)V

    iput-object v0, p0, LaS/e;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iput-object p1, p0, LaS/e;->l:Lcom/google/googlenav/ui/wizard/fu;

    iput-object p2, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    iput-object p3, p0, LaS/e;->d:Lcom/google/googlenav/ui/bF;

    iput-boolean p4, p0, LaS/e;->k:Z

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Landroid/widget/RadioButton;
    .registers 4

    iget-object v0, p0, LaS/e;->n:LK/bp;

    invoke-virtual {v0, p2}, LK/bp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, LaS/e;->n:LK/bp;

    invoke-virtual {v0}, LK/bp;->b()LK/bu;

    move-result-object v0

    invoke-virtual {v0}, LK/bu;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LaS/e;->n:LK/bp;

    invoke-virtual {v1, v0}, LK/bp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, LaS/e;->v:Landroid/widget/TextView;

    const/16 v1, 0x349

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, LaS/e;->v:Landroid/widget/TextView;

    const/16 v1, 0x34a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d
.end method

.method static synthetic a(LaS/e;)Z
    .registers 2

    invoke-direct {p0}, LaS/e;->k()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lam/b;
    .registers 6

    new-instance v0, Lam/b;

    sget-object v1, LbA/bp;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lam/b;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method private b(Lcom/google/googlenav/aw;)Landroid/view/View;
    .registers 8

    const v5, 0x7f09007b

    invoke-virtual {p0}, LaS/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0335

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/aw;->c()Lam/b;

    move-result-object v1

    if-nez v1, :cond_45

    invoke-virtual {p1}, Lcom/google/googlenav/aw;->a()Lah/f;

    move-result-object v1

    :goto_22
    invoke-virtual {p0}, LaS/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    check-cast v1, Lai/f;

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lbf/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_45
    iget-object v1, p0, LaS/e;->C:Lcom/google/googlenav/ui/bF;

    invoke-virtual {p1}, Lcom/google/googlenav/aw;->b()Lcom/google/googlenav/ui/bG;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v1

    goto :goto_22
.end method

.method static synthetic b(LaS/e;)V
    .registers 1

    invoke-direct {p0}, LaS/e;->n()V

    return-void
.end method

.method static synthetic c(LaS/e;)Lcom/google/googlenav/ui/wizard/fu;
    .registers 2

    iget-object v0, p0, LaS/e;->l:Lcom/google/googlenav/ui/wizard/fu;

    return-object v0
.end method

.method private k()Z
    .registers 5

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, LaS/e;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, LaS/e;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f030d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_21

    :goto_20
    return v2

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_25
    const/4 v2, 0x1

    goto :goto_20
.end method

.method private m()Lcom/google/googlenav/cd;
    .registers 7

    const/4 v5, 0x2

    new-instance v2, Lam/b;

    sget-object v0, LbA/bp;->a:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v5}, Lam/b;->h(II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, LaS/e;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_41

    iget-object v0, p0, LaS/e;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, LaS/e;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, LaS/e;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ce;

    iget-object v4, v0, Lcom/google/googlenav/ce;->a:Ljava/lang/String;

    iget-object v0, p0, LaS/e;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ce;

    iget-object v0, v0, Lcom/google/googlenav/ce;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v3}, LaS/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    if-eqz v3, :cond_3d

    invoke-virtual {v2, v5, v0}, Lam/b;->a(ILam/b;)V

    :cond_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_41
    invoke-static {v2}, Lcom/google/googlenav/cd;->a(Lam/b;)Lcom/google/googlenav/cd;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .registers 4

    invoke-direct {p0}, LaS/e;->m()Lcom/google/googlenav/cd;

    move-result-object v0

    iget-object v1, p0, LaS/e;->x:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LaS/e;->l:Lcom/google/googlenav/ui/wizard/fu;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/fu;->a(Lcom/google/googlenav/cd;Ljava/lang/String;)V

    return-void
.end method

.method private v()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/bw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LaS/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private w()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, LaS/e;->z:Landroid/widget/LinearLayout;

    iget-object v1, p0, LaS/e;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    move v1, v2

    :goto_d
    iget-object v0, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    iget-object v0, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aw;

    invoke-direct {p0, v0}, LaS/e;->b(Lcom/google/googlenav/aw;)Landroid/view/View;

    move-result-object v3

    new-instance v4, LaS/h;

    invoke-direct {v4, p0, v0}, LaS/h;-><init>(LaS/e;Lcom/google/googlenav/aw;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v4, 0x7f0f0336

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, LaS/i;

    invoke-direct {v5, p0, v0}, LaS/i;-><init>(LaS/e;Lcom/google/googlenav/aw;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LaS/e;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_51
    iget-object v0, p0, LaS/e;->A:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    iget-object v0, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6e

    iget-object v0, p0, LaS/e;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6d
    return-void

    :cond_6e
    iget-object v0, p0, LaS/e;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6d
.end method

.method private x()Z
    .registers 3

    iget-object v0, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aw;)V
    .registers 2

    invoke-direct {p0}, LaS/e;->w()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bF;)V
    .registers 2

    iput-object p1, p0, LaS/e;->C:Lcom/google/googlenav/ui/bF;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, LaS/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030118

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f030c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1, p3}, LaS/e;->a(Landroid/view/View;Ljava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_22
    const v0, 0x7f0f030d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget-object v2, p0, LaS/e;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, LaS/e;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2, p3}, LaS/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ce;->a(Lam/b;)Lcom/google/googlenav/ce;

    move-result-object v0

    iget-object v1, p0, LaS/e;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, LaS/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011c

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaS/e;->o:Landroid/view/View;

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f031a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaS/e;->p:Landroid/widget/TextView;

    iget-object v0, p0, LaS/e;->p:Landroid/widget/TextView;

    iget-object v1, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaS/e;->q:Landroid/widget/TextView;

    iget-object v0, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, LaS/e;->q:Landroid/widget/TextView;

    iget-object v1, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_46
    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaS/e;->r:Landroid/view/ViewGroup;

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f0315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaS/e;->s:Landroid/widget/TextView;

    iget-object v0, p0, LaS/e;->s:Landroid/widget/TextView;

    const/16 v1, 0x32d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f0316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaS/e;->t:Landroid/widget/TextView;

    iget-object v0, p0, LaS/e;->t:Landroid/widget/TextView;

    const/16 v1, 0x32c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f0317

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaS/e;->u:Landroid/widget/TextView;

    iget-object v0, p0, LaS/e;->u:Landroid/widget/TextView;

    const/16 v1, 0x32b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f0352

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaS/e;->w:Landroid/widget/TextView;

    iget-object v0, p0, LaS/e;->w:Landroid/widget/TextView;

    const/16 v1, 0x35c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f0353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, LaS/e;->x:Landroid/widget/EditText;

    iget-object v0, p0, LaS/e;->x:Landroid/widget/EditText;

    const/16 v1, 0x35b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f0337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LaS/e;->y:Landroid/widget/LinearLayout;

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LaS/e;->z:Landroid/widget/LinearLayout;

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f0339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, LaS/e;->A:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bf()Lcom/google/googlenav/cd;

    move-result-object v2

    if-eqz v2, :cond_117

    iget-object v3, v2, Lcom/google/googlenav/cd;->b:LK/bn;

    const/4 v0, 0x0

    move v1, v0

    :goto_fe
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_117

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ce;

    iget-object v4, v0, Lcom/google/googlenav/ce;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/googlenav/ce;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/ce;->c:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v0}, LaS/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_fe

    :cond_117
    if-eqz v2, :cond_121

    iget-object v0, v2, Lcom/google/googlenav/cd;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->size()I

    move-result v0

    if-nez v0, :cond_136

    :cond_121
    const-string v0, "1"

    const-string v1, "Food"

    invoke-virtual {p0, v0, v1, v6}, LaS/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    const-string v1, "Decor"

    invoke-virtual {p0, v0, v1, v6}, LaS/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3"

    const-string v1, "Service"

    invoke-virtual {p0, v0, v1, v6}, LaS/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_136
    iget-object v0, p0, LaS/e;->x:Landroid/widget/EditText;

    iget-object v1, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_198

    invoke-virtual {p0}, LaS/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03011d

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f031f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LaS/e;->b:Landroid/widget/Button;

    iget-object v0, p0, LaS/e;->b:Landroid/widget/Button;

    new-instance v1, LaS/g;

    invoke-direct {v1, p0}, LaS/g;-><init>(LaS/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LaS/e;->b:Landroid/widget/Button;

    invoke-direct {p0}, LaS/e;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_179
    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    const v1, 0x7f0f031e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaS/e;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, LaS/e;->i()V

    invoke-direct {p0}, LaS/e;->v()V

    const/16 v0, 0x341

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LaS/e;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    return-object v0

    :cond_198
    invoke-virtual {p0}, LaS/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030128

    iget-object v0, p0, LaS/e;->o:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_179
.end method

.method protected d()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, LaS/e;->m:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bB()Z

    move-result v0

    iget-object v1, p0, LaS/e;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1e

    const/16 v0, 0x356

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    return-void

    :cond_1e
    const/16 v0, 0x348

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public h()V
    .registers 1

    invoke-direct {p0}, LaS/e;->w()V

    return-void
.end method

.method public i()V
    .registers 1

    invoke-direct {p0}, LaS/e;->w()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    :goto_f
    return v1

    :cond_10
    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e000e

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0f042a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, LaS/e;->B:Landroid/view/MenuItem;

    iget-object v0, p0, LaS/e;->B:Landroid/view/MenuItem;

    const/16 v2, 0x358

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v2, p0, LaS/e;->B:Landroid/view/MenuItem;

    invoke-direct {p0}, LaS/e;->x()Z

    move-result v0

    if-nez v0, :cond_57

    move v0, v1

    :goto_3f
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f031f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, LaS/e;->a:Landroid/view/MenuItem;

    iget-object v0, p0, LaS/e;->a:Landroid/view/MenuItem;

    const/16 v2, 0x34f

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_f

    :cond_57
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget-object v0, p0, LaS/e;->l:Lcom/google/googlenav/ui/wizard/fu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fu;->o()V

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0, p2}, LaS/e;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f031f

    if-ne v1, v2, :cond_23

    invoke-direct {p0}, LaS/e;->n()V

    goto :goto_f

    :cond_23
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f042a

    if-ne v1, v2, :cond_38

    invoke-direct {p0}, LaS/e;->x()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, LaS/e;->l:Lcom/google/googlenav/ui/wizard/fu;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/fu;->e()V

    goto :goto_f

    :cond_38
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    :cond_f
    :goto_f
    return v1

    :cond_10
    iget-object v0, p0, LaS/e;->B:Landroid/view/MenuItem;

    if-eqz v0, :cond_20

    iget-object v2, p0, LaS/e;->B:Landroid/view/MenuItem;

    invoke-direct {p0}, LaS/e;->x()Z

    move-result v0

    if-nez v0, :cond_2e

    move v0, v1

    :goto_1d
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_20
    iget-object v0, p0, LaS/e;->a:Landroid/view/MenuItem;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaS/e;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, LaS/e;->k()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_f

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1d
.end method
