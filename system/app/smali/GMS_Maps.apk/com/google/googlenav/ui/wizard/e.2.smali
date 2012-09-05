.class public Lcom/google/googlenav/ui/wizard/e;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/k;

.field private final b:Lcom/google/googlenav/ui/wizard/o;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/google/googlenav/ui/view/android/R;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/o;)V
    .registers 3

    const v0, 0x7f0d001a

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/o;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/wizard/o;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/o;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    const/16 v3, 0x2f

    const/4 v2, 0x0

    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-nez v1, :cond_d4

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    const v0, 0x7f0f000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x27

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v1}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/f;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->n:Landroid/widget/Button;

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->n:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/g;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    const/16 v1, 0x62

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/h;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/h;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_d4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/e;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_19
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/view/android/R;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->m:Lcom/google/googlenav/ui/view/android/R;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    const v0, 0x7f0f0017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->m:Lcom/google/googlenav/ui/view/android/R;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->m:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/i;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0f0018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/j;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/j;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6b
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/e;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/google/googlenav/ui/wizard/k;->c:Lcom/google/googlenav/ui/wizard/k;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->a:Lcom/google/googlenav/ui/wizard/k;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    new-instance v3, Lcom/google/googlenav/ui/wizard/l;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/l;-><init>(Lcom/google/googlenav/ui/wizard/e;Lam/b;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->m:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->k:Landroid/view/View;

    const v1, 0x7f0f0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->k:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/e;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->l:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/e;->b(Landroid/view/View;)V

    return-object v0
.end method

.method protected g()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public h()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/google/googlenav/ui/wizard/k;->b:Lcom/google/googlenav/ui/wizard/k;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->a:Lcom/google/googlenav/ui/wizard/k;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    const v2, 0x7f0f000d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_22
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_13
.end method

.method public m()Lcom/google/googlenav/ui/wizard/k;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->a:Lcom/google/googlenav/ui/wizard/k;

    return-object v0
.end method
