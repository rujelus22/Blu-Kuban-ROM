.class public Lcom/google/googlenav/ui/wizard/fe;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:Lay/a;

.field private b:Z

.field private c:Lcom/google/googlenav/ui/wizard/eX;

.field private d:Landroid/widget/ArrayAdapter;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lay/a;ZLcom/google/googlenav/ui/p;)V
    .registers 5

    const v0, 0x7f0d001a

    invoke-direct {p0, p3, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fe;->a:Lay/a;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/wizard/fe;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fe;)Lcom/google/googlenav/ui/wizard/eX;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->c:Lcom/google/googlenav/ui/wizard/eX;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fe;)Landroid/widget/ArrayAdapter;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/fe;)Lay/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->a:Lay/a;

    return-object v0
.end method


# virtual methods
.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fe;->requestWindowFeature(I)Z

    :cond_a
    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->l:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bB;->a:Lcom/google/googlenav/ui/view/android/bB;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/bB;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->n:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/eX;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fe;->c:Lcom/google/googlenav/ui/wizard/eX;

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aL;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_1b
    if-eqz p2, :cond_3a

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aL;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fe;->m:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_21

    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->l:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bB;->a:Lcom/google/googlenav/ui/view/android/bB;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/bB;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->n:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public c()Landroid/view/View;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fe;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f8

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fe;->b:Z

    if-eqz v0, :cond_a4

    const/16 v0, 0x307

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_17
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_2d

    const v0, 0x7f0f0008

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    const v0, 0x7f0f005b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->l:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    const v0, 0x7f0f02cc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->m:Landroid/widget/ListView;

    new-instance v0, Lcom/google/googlenav/ui/wizard/fh;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/googlenav/ui/wizard/fh;-><init>(Lcom/google/googlenav/ui/wizard/fe;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/ff;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f000f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->n:Landroid/view/ViewGroup;

    const v0, 0x7f0f02cd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->o:Landroid/widget/Button;

    const/16 v1, 0x2b5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->o:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ff;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ff;-><init>(Lcom/google/googlenav/ui/wizard/fe;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0144

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->p:Landroid/widget/Button;

    const/16 v1, 0x62

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->p:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/fg;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fg;-><init>(Lcom/google/googlenav/ui/wizard/fe;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fe;->h()V

    return-object v2

    :cond_a4
    const/16 v0, 0x1f0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_17
.end method

.method protected g()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fe;->b:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x307

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fe;->setTitle(Ljava/lang/CharSequence;)V

    :cond_13
    return-void

    :cond_14
    const/16 v0, 0x1f0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public h()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fe;->b:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x30b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fe;->a(I)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0x310

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fe;->a(I)V

    goto :goto_9
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->l:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->n:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public k()Ljava/util/List;
    .registers 6

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v3, :cond_29

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fe;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aL;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_29
    return-object v2
.end method
