.class public Lcom/google/googlenav/ui/view/dialog/al;
.super Lbd/ai;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/cp;


# instance fields
.field private d:Landroid/view/View;

.field private k:Lcom/google/googlenav/ui/view/android/cm;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(LaY/br;)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/al;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lbd/ai;-><init>(LaY/m;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/al;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->f:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V
    .registers 6

    const v0, 0x7f030088

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f01f6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x3b7

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/al;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0f0215

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3fb

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0214

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3f5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private k()V
    .registers 7

    const/4 v1, 0x0

    const/16 v5, 0xf

    const/16 v4, 0x8

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->b:LaY/m;

    check-cast v0, LaY/br;

    invoke-virtual {v0}, LaY/br;->bH()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    const v3, 0x7f0f01ac

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/am;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/googlenav/ui/view/dialog/am;-><init>(Lcom/google/googlenav/ui/view/dialog/al;Landroid/view/View;LaY/br;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    const v2, 0x7f0f01f6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_4d
    return-void

    :cond_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v0, v1

    :goto_61
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4d

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/al;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_61
.end method


# virtual methods
.method protected N_()V
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/al;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setUiOptions(I)V

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/al;->requestWindowFeature(I)Z

    goto :goto_12
.end method

.method public a(Lcom/google/googlenav/ui/view/android/cm;)Lau/x;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->b:LaY/m;

    check-cast v0, LaY/br;

    invoke-virtual {v0}, LaY/br;->i()Lau/x;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/googlenav/E;)Ljava/util/List;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge v1, v0, :cond_34

    invoke-interface {p1, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bW;

    new-instance v3, Lbd/m;

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->av()Lcom/google/googlenav/bN;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Y;

    invoke-direct {v3, v0}, Lbd/m;-><init>(Lcom/google/googlenav/Y;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_2b
    new-instance v0, Lbd/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbd/m;-><init>(Lcom/google/googlenav/Y;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    return-object v2
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    const/16 v0, 0x27d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/al;->b:LaY/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/dialog/al;->a(Lcom/google/googlenav/E;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->c:Lcom/google/googlenav/ui/view/android/R;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/cm;Lau/x;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->b:LaY/m;

    check-cast v0, LaY/br;

    invoke-virtual {v0, p2}, LaY/br;->a(Lau/x;)V

    return-void
.end method

.method public aa_()V
    .registers 1

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/al;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/al;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/16 v0, 0x27d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/al;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/googlenav/ui/view/dialog/al;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->E()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/al;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/al;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V

    return-object v1
.end method

.method public h()V
    .registers 3

    invoke-super {p0}, Lbd/ai;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/al;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/al;->b:LaY/m;

    invoke-virtual {v1}, LaY/m;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_15
    return-void
.end method

.method protected i()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/al;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/cm;

    const v0, 0x7f0f0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v3, 0x100

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, p0}, Lcom/google/googlenav/ui/view/android/cm;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;Lcom/google/googlenav/ui/view/android/cp;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->k:Lcom/google/googlenav/ui/view/android/cm;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->k:Lcom/google/googlenav/ui/view/android/cm;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/an;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/an;-><init>(Lcom/google/googlenav/ui/view/dialog/al;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/cm;->a(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->k:Lcom/google/googlenav/ui/view/android/cm;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/al;->k:Lcom/google/googlenav/ui/view/android/cm;

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/dialog/al;->a(Lcom/google/googlenav/ui/view/android/cm;)Lau/x;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/cm;->a(ZLau/x;)V

    const v0, 0x7f0f0212

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/al;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/al;->a(Landroid/view/View;)V

    const v0, 0x7f0f013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xb9

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->g:Lcom/google/googlenav/ui/view/android/aB;

    const/16 v3, 0xd5

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/aB;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/al;->g:Lcom/google/googlenav/ui/view/android/aB;

    const/16 v3, 0xd6

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/aB;->a(I)Lcom/google/googlenav/ui/android/M;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
