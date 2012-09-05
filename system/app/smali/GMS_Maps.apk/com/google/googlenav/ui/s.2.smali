.class public Lcom/google/googlenav/ui/s;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lam/b;[Lam/b;I)I
    .registers 6

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/google/googlenav/ui/s;->a([Lam/b;I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    if-ltz v0, :cond_19

    if-nez v1, :cond_10

    if-gt v0, v2, :cond_19

    :cond_10
    if-ne v1, v2, :cond_1e

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lam/b;->l(I)I

    move-result v1

    if-lt v0, v1, :cond_1e

    :cond_19
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    :cond_1e
    return v0
.end method

.method private static a([Lam/b;I)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_18

    aget-object v1, p0, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lam/b;->d(I)I

    move-result v1

    if-ne v1, p1, :cond_15

    aget-object v0, p0, v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public static a(II)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/aR;->t:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-object v0
.end method

.method public static a(Lbb/l;Ljava/util/Vector;[Lam/b;)Lbb/l;
    .registers 16

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v9, v8, [I

    new-array v10, v8, [I

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11, v8}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    move v7, v0

    :goto_f
    if-ge v7, v8, :cond_90

    invoke-virtual {p1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    aput v1, v9, v7

    invoke-static {v0, p2, v1}, Lcom/google/googlenav/ui/s;->a(Lam/b;[Lam/b;I)I

    move-result v1

    aput v1, v10, v7

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_4a

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->bH:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_f

    :cond_4a
    const/4 v3, 0x1

    if-ne v1, v3, :cond_46

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    :goto_58
    if-ge v1, v3, :cond_83

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/googlenav/ui/bm;

    invoke-direct {v6}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v12, Lcom/google/googlenav/ui/bg;->at:Lcom/google/googlenav/ui/bg;

    invoke-static {v5, v12}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v5

    const/16 v6, 0xf5

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_83
    new-instance v0, Lbb/o;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_90
    iput-object v9, p0, Lbb/l;->m:[I

    iput-object v10, p0, Lbb/l;->n:[I

    iput-object v11, p0, Lbb/l;->o:Ljava/util/Vector;

    return-object p0
.end method

.method public static a(Lau/b;ILcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/H;
    .registers 14

    const/4 v2, 0x0

    invoke-static {}, Lau/o;->a()Lau/o;

    move-result-object v0

    invoke-virtual {p0}, Lau/b;->aH()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/o;->b([I)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {p0}, Lau/b;->o()[Lam/b;

    move-result-object v10

    new-instance v0, Lbb/l;

    const/4 v1, 0x7

    invoke-static {p1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Laq/a;

    new-array v5, v2, [I

    new-array v6, v2, [I

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7, v2}, Ljava/util/Vector;-><init>(I)V

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lbb/l;-><init>(IILjava/lang/String;[Laq/a;[I[ILjava/util/Vector;Z)V

    invoke-static {v0, v9, v10}, Lcom/google/googlenav/ui/s;->a(Lbb/l;Ljava/util/Vector;[Lam/b;)Lbb/l;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/H;

    invoke-direct {v1, p2, v0}, Lcom/google/googlenav/ui/view/android/H;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    return-object v1
.end method

.method private static a(Landroid/view/ViewGroup;Lbb/o;Lbb/l;ILcom/google/googlenav/ui/view/android/ay;)V
    .registers 9

    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/ay;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030056

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lbb/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0157

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Lcom/google/googlenav/ui/view/android/an;

    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/ay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/ay;->r()Lcom/google/googlenav/ui/p;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/google/googlenav/ui/view/android/an;-><init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p1, Lbb/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lbb/l;->n:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v1, Lcom/google/googlenav/ui/u;

    invoke-direct {v1, p2, p3}, Lcom/google/googlenav/ui/u;-><init>(Lbb/l;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/bl;Lbb/l;ILcom/google/googlenav/ui/view/android/ay;)V
    .registers 9

    const/4 v1, 0x1

    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/ay;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030055

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0153

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0154

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p2, Lbb/l;->n:[I

    aget v2, v2, p3

    if-ne v2, v1, :cond_42

    :goto_36
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/google/googlenav/ui/v;

    invoke-direct {v1, p2, p3}, Lcom/google/googlenav/ui/v;-><init>(Lbb/l;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_42
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public static a(Lau/b;Lbb/l;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/google/googlenav/ui/s;->a(Lbb/l;)[Lam/b;

    move-result-object v0

    invoke-virtual {p0}, Lau/b;->o()[Lam/b;

    move-result-object v1

    invoke-virtual {p0}, Lau/b;->k()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/s;->a([Lam/b;[Lam/b;I)V

    invoke-virtual {p0, v0}, Lau/b;->a([Lam/b;)V

    goto :goto_2
.end method

.method public static a(Lcom/google/googlenav/ui/view/android/ay;Landroid/view/View;Lbb/l;)V
    .registers 9

    const v0, 0x7f0f02ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lbb/l;->d:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_18

    iget-object v1, p2, Lbb/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object v0, p2, Lbb/l;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    const v0, 0x7f0f0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    iget-object v2, p2, Lbb/l;->m:[I

    array-length v4, v2

    move v2, v1

    :goto_2f
    if-ge v2, v4, :cond_52

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lbb/o;

    if-eqz v5, :cond_48

    check-cast v1, Lbb/o;

    invoke-static {v0, v1, p2, v2, p0}, Lcom/google/googlenav/ui/s;->a(Landroid/view/ViewGroup;Lbb/o;Lbb/l;ILcom/google/googlenav/ui/view/android/ay;)V

    :cond_44
    :goto_44
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    :cond_48
    instance-of v5, v1, Lcom/google/googlenav/ui/bl;

    if-eqz v5, :cond_44

    check-cast v1, Lcom/google/googlenav/ui/bl;

    invoke-static {v0, v1, p2, v2, p0}, Lcom/google/googlenav/ui/s;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/bl;Lbb/l;ILcom/google/googlenav/ui/view/android/ay;)V

    goto :goto_44

    :cond_52
    iget-object v0, p2, Lbb/l;->p:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_65

    const v0, 0x7f0f012e

    iget-object v1, p2, Lbb/l;->p:Lcom/google/googlenav/ui/bl;

    iget-object v1, v1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    new-instance v2, Lcom/google/googlenav/ui/t;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/ui/t;-><init>(Lcom/google/googlenav/ui/view/android/ay;Lbb/l;)V

    invoke-static {v0, v1, v2, p1}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/util/List;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    :cond_65
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v5, 0x4

    const-string v0, "o"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static a([Lam/b;[Lam/b;I)V
    .registers 11

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_24

    aget-object v2, p0, v0

    invoke-virtual {v2, v3}, Lam/b;->d(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v7}, Lam/b;->d(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    move v2, v1

    :goto_25
    array-length v0, p1

    if-ge v1, v0, :cond_5e

    aget-object v0, p1, v1

    invoke-virtual {v0, v3}, Lam/b;->d(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v7}, Lam/b;->d(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_4c
    const-string v0, "c"

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5, p2}, Lcom/google/googlenav/ui/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v3

    :goto_5a
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_25

    :cond_5e
    if-nez v2, :cond_69

    const-string v0, "nc"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2, p2}, Lcom/google/googlenav/ui/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_69
    return-void

    :cond_6a
    move v0, v2

    goto :goto_5a
.end method

.method public static a(Lau/b;)Z
    .registers 3

    invoke-static {}, Lau/o;->a()Lau/o;

    move-result-object v0

    invoke-virtual {p0}, Lau/b;->aH()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/o;->b([I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static a(Lbb/l;)[Lam/b;
    .registers 5

    iget-object v0, p0, Lbb/l;->n:[I

    array-length v0, v0

    new-array v1, v0, [Lam/b;

    const/4 v0, 0x0

    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lbb/l;->m:[I

    aget v2, v2, v0

    iget-object v3, p0, Lbb/l;->n:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/s;->a(II)Lam/b;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-object v1
.end method
