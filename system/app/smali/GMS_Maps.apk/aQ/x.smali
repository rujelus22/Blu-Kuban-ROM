.class public LaQ/x;
.super Lcom/google/googlenav/ui/view/android/ap;


# static fields
.field static a:Lcom/google/googlenav/ui/wizard/ez;

.field static c:Z

.field static d:Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field b:Ljava/lang/String;

.field private final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaQ/y;

    invoke-direct {v0}, LaQ/y;-><init>()V

    sput-object v0, LaQ/x;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ez;Ljava/lang/String;Z)V
    .registers 6

    const v0, 0x7f0d001c

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    sput-object p1, LaQ/x;->a:Lcom/google/googlenav/ui/wizard/ez;

    iput-object p2, p0, LaQ/x;->b:Ljava/lang/String;

    sput-boolean p3, LaQ/x;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, LaQ/z;->values()[LaQ/z;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LaQ/x;->k:Ljava/util/List;

    iget-object v0, p0, LaQ/x;->k:Ljava/util/List;

    sget-object v1, LaQ/z;->a:LaQ/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, LaQ/x;->k:Ljava/util/List;

    sget-object v1, LaQ/z;->b:LaQ/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v0, p0, LaQ/x;->k:Ljava/util/List;

    sget-object v1, LaQ/z;->c:LaQ/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LaQ/x;->k:Ljava/util/List;

    sget-object v1, LaQ/z;->d:LaQ/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(LaQ/x;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaQ/x;->k:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaQ/x;->requestWindowFeature(I)Z

    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, LaQ/x;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030142

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_3b

    const v0, 0x7f0f02ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, LaQ/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    const v0, 0x7f0f0379

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, LaQ/E;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, LaQ/E;-><init>(LaQ/x;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v2, LaQ/x;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1

    :cond_3b
    iget-object v0, p0, LaQ/x;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, LaQ/x;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, LaQ/x;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_10
    return-void
.end method
