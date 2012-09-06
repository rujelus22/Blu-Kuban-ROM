.class Lcom/google/googlenav/ui/wizard/eJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/google/googlenav/ui/wizard/eH;

.field d:Z

.field final synthetic e:Lcom/google/googlenav/ui/wizard/eE;

.field private f:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eE;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eJ;->e:Lcom/google/googlenav/ui/wizard/eE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->d:Z

    .line 530
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eJ;->a:Ljava/lang/String;

    .line 531
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eJ;->b:Ljava/lang/String;

    .line 532
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/eJ;->c:Lcom/google/googlenav/ui/wizard/eH;

    .line 533
    return-void
.end method

.method private d()Lcom/google/googlenav/ui/view/android/L;
    .registers 4

    .prologue
    .line 569
    new-instance v1, Lcom/google/googlenav/ui/view/android/L;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->e:Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 571
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->c:Lcom/google/googlenav/ui/wizard/eH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eH;->b()Ljava/util/List;

    move-result-object v0

    .line 572
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/Y;

    .line 573
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_16

    .line 575
    :cond_26
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eJ;->f:Lcom/google/googlenav/ui/view/android/L;

    .line 576
    return-object v1
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->d:Z

    .line 537
    return-void
.end method

.method b()V
    .registers 4

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->d:Z

    if-eqz v0, :cond_17

    .line 541
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->f:Lcom/google/googlenav/ui/view/android/L;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eJ;->c:Lcom/google/googlenav/ui/wizard/eH;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/eH;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->d:Z

    .line 545
    :cond_17
    return-void
.end method

.method c()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 554
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->e:Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 556
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eJ;->d()Lcom/google/googlenav/ui/view/android/L;

    move-result-object v1

    .line 557
    const v2, 0x7f04010b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 558
    const v0, 0x7f100026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 559
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 560
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eJ;->e:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eE;->c(Lcom/google/googlenav/ui/wizard/eE;)Lcom/google/googlenav/ui/wizard/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 561
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eJ;->e:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eE;->c(Lcom/google/googlenav/ui/wizard/eE;)Lcom/google/googlenav/ui/wizard/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 562
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 563
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 565
    return-object v2
.end method
