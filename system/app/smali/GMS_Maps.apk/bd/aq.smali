.class public Lbd/aq;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lbd/as;


# direct methods
.method public constructor <init>(Ljava/util/List;Lbd/as;Lcom/google/googlenav/ui/p;)V
    .registers 5

    const v0, 0x7f0d001c

    invoke-direct {p0, p3, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-object p1, p0, Lbd/aq;->a:Ljava/util/List;

    iput-object p2, p0, Lbd/aq;->b:Lbd/as;

    return-void
.end method

.method public static a(Landroid/location/Address;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-gt v0, v2, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbd/aq;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lbd/aq;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lbd/aq;)Lbd/as;
    .registers 2

    iget-object v0, p0, Lbd/aq;->b:Lbd/as;

    return-object v0
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lbd/aq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030137

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_29

    const v0, 0x7f0f00d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x70

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_29
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lbd/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {v0}, Lbd/aq;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_47
    const v0, 0x7f0f005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v3, Lbd/ar;

    invoke-direct {v3, p0}, Lbd/ar;-><init>(Lbd/aq;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lbd/aq;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03013a

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setEnabled(Z)V

    return-object v1
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lbd/aq;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_10
    return-void

    :cond_11
    const/16 v0, 0x70

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbd/aq;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method
