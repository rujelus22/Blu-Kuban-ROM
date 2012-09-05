.class public Lcom/google/googlenav/ui/view/android/N;
.super Lcom/google/googlenav/ui/view/android/ar;


# instance fields
.field private volatile b:Z

.field private final c:Ljava/util/List;

.field private final d:Lbb/o;

.field private e:I

.field private f:Lcom/google/googlenav/ui/view/android/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/ar;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;)V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/N;->b:Z

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/N;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/N;->d:Lbb/o;

    move v1, v0

    :goto_f
    invoke-virtual {p2}, Lbb/o;->g()I

    move-result v2

    if-ge v0, v2, :cond_30

    invoke-virtual {p2, v0}, Lbb/o;->a(I)Lcom/google/googlenav/ui/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    if-eqz v2, :cond_2d

    invoke-virtual {p2, v0}, Lbb/o;->a(I)Lcom/google/googlenav/ui/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    invoke-interface {v2}, Lbd/k;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_30
    add-int/lit8 v0, v1, 0x40

    iput v0, p0, Lcom/google/googlenav/ui/view/android/N;->e:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->a()V

    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/bl;)I
    .registers 3

    const v0, 0x7f0300a9

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    const v0, 0x7f0300a7

    :cond_c
    :goto_c
    :pswitch_c
    return v0

    :cond_d
    iget v1, p0, Lcom/google/googlenav/ui/bl;->r:I

    packed-switch v1, :pswitch_data_b0

    :pswitch_12
    const v0, 0x7f03009d

    goto :goto_c

    :pswitch_16
    const v0, 0x7f0300a0

    goto :goto_c

    :pswitch_1a
    const v0, 0x7f0300fd

    goto :goto_c

    :pswitch_1e
    const v0, 0x7f0300fe

    goto :goto_c

    :pswitch_22
    const v0, 0x7f03010d

    goto :goto_c

    :pswitch_26
    const v0, 0x7f030002

    goto :goto_c

    :pswitch_2a
    const v0, 0x7f0300bf

    goto :goto_c

    :pswitch_2e
    const v0, 0x7f03004d

    goto :goto_c

    :pswitch_32
    const v0, 0x7f030186

    goto :goto_c

    :pswitch_36
    const v0, 0x7f03009e

    goto :goto_c

    :pswitch_3a
    const v0, 0x7f0300b3

    goto :goto_c

    :pswitch_3e
    const v0, 0x7f0300a4

    goto :goto_c

    :pswitch_42
    const v0, 0x7f0300ad

    goto :goto_c

    :pswitch_46
    const v0, 0x7f0300c8

    goto :goto_c

    :pswitch_4a
    const v0, 0x7f0300a6

    goto :goto_c

    :pswitch_4e
    const v0, 0x7f0300cb

    goto :goto_c

    :pswitch_52
    const v0, 0x7f0300c1

    goto :goto_c

    :pswitch_56
    const v0, 0x7f0300bd

    goto :goto_c

    :pswitch_5a
    const v0, 0x7f0300be

    goto :goto_c

    :pswitch_5e
    const v0, 0x7f0300c9

    goto :goto_c

    :pswitch_62
    const v0, 0x7f0300a3

    goto :goto_c

    :pswitch_66
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    const v0, 0x7f0300ab

    goto :goto_c

    :pswitch_70
    const v0, 0x7f0300c4

    goto :goto_c

    :pswitch_74
    const v0, 0x7f0300a5

    goto :goto_c

    :pswitch_78
    const v0, 0x7f0300ca

    goto :goto_c

    :pswitch_7c
    const v0, 0x7f03009f

    goto :goto_c

    :pswitch_80
    const v0, 0x7f030073

    goto :goto_c

    :pswitch_84
    const v0, 0x7f03012a

    goto :goto_c

    :pswitch_88
    const v0, 0x7f030082

    goto :goto_c

    :pswitch_8c
    const v0, 0x7f030104

    goto/16 :goto_c

    :pswitch_91
    const v0, 0x7f0300a2

    goto/16 :goto_c

    :pswitch_96
    const v0, 0x7f0300c7

    goto/16 :goto_c

    :pswitch_9b
    const v0, 0x7f0300c6

    goto/16 :goto_c

    :pswitch_a0
    const v0, 0x7f0300bc

    goto/16 :goto_c

    :pswitch_a5
    const v0, 0x7f03012e

    goto/16 :goto_c

    :pswitch_aa
    const v0, 0x7f0300b2

    goto/16 :goto_c

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_2a
        :pswitch_2e
        :pswitch_36
        :pswitch_12
        :pswitch_12
        :pswitch_46
        :pswitch_36
        :pswitch_4a
        :pswitch_12
        :pswitch_12
        :pswitch_4e
        :pswitch_66
        :pswitch_74
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_3a
        :pswitch_12
        :pswitch_12
        :pswitch_52
        :pswitch_12
        :pswitch_56
        :pswitch_12
        :pswitch_22
        :pswitch_1e
        :pswitch_12
        :pswitch_5e
        :pswitch_12
        :pswitch_32
        :pswitch_12
        :pswitch_70
        :pswitch_7c
        :pswitch_1a
        :pswitch_80
        :pswitch_36
        :pswitch_12
        :pswitch_91
        :pswitch_c
        :pswitch_84
        :pswitch_12
        :pswitch_42
        :pswitch_12
        :pswitch_12
        :pswitch_3e
        :pswitch_88
        :pswitch_5a
        :pswitch_62
        :pswitch_96
        :pswitch_96
        :pswitch_26
        :pswitch_36
        :pswitch_a0
        :pswitch_12
        :pswitch_a5
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_aa
        :pswitch_78
        :pswitch_78
        :pswitch_8c
        :pswitch_12
        :pswitch_9b
    .end packed-switch
.end method

.method private a(Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->f:Lcom/google/googlenav/ui/view/android/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/ui/view/android/f;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/f;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->f:Lcom/google/googlenav/ui/view/android/f;

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->f:Lcom/google/googlenav/ui/view/android/f;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/ui/view/android/f;->a(Landroid/content/Context;Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/bl;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    instance-of v2, p2, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v2, :cond_67

    check-cast p2, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->b()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/N;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    :goto_1d
    return-object p2

    :cond_1e
    iget v2, p1, Lcom/google/googlenav/ui/bl;->r:I

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->b()Lcom/google/googlenav/ui/bl;

    move-result-object v3

    iget v3, v3, Lcom/google/googlenav/ui/bl;->r:I

    if-eq v2, v3, :cond_ae

    invoke-static {p1, p3}, Lcom/google/googlenav/ui/view/android/N;->c(Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v1

    :goto_2c
    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/N;->b:Z

    if-eqz v2, :cond_6c

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/googlenav/ui/view/android/Q;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/googlenav/ui/view/android/Q;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/view/android/O;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_40
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v0

    if-eqz v0, :cond_4e

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/N;->a:Lcom/google/googlenav/ui/p;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Lcom/google/googlenav/ui/p;)V

    :cond_4e
    iget v0, p1, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_82

    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    check-cast v0, Lax/aP;

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/android/H;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_65
    :goto_65
    move-object p2, v1

    goto :goto_1d

    :cond_67
    invoke-static {p1, p3}, Lcom/google/googlenav/ui/view/android/N;->c(Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v1

    goto :goto_2c

    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_7a
    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    goto :goto_40

    :cond_7e
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_65

    :cond_82
    iget v0, p1, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v2, 0x28

    if-eq v0, v2, :cond_8e

    iget v0, p1, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v2, 0x21

    if-ne v0, v2, :cond_92

    :cond_8e
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_65

    :cond_92
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_65

    iget v0, p1, Lcom/google/googlenav/ui/bl;->r:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_65

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_65

    const v0, 0x7f080013

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_65

    :cond_ae
    move v0, v1

    move-object v1, p2

    goto/16 :goto_2c
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/N;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;Landroid/widget/ListView;)V
    .registers 7

    new-instance v0, Lcom/google/googlenav/ui/view/android/N;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/ui/view/android/N;-><init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/P;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/P;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/android/TemplateView;)V
    .registers 4

    const v0, 0x7f0f0002

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/N;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/N;->b:Z

    return p1
.end method

.method private b(Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->I:Lcom/google/googlenav/ui/o;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v2, v1, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    new-instance v0, Lcom/google/googlenav/ui/android/OfferView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/android/OfferView;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/OfferView;->c(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static c(Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/bl;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->clear()V

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/N;->d:Lbb/o;

    invoke-virtual {v1}, Lbb/o;->g()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/N;->d:Lbb/o;

    invoke-virtual {v1, v0}, Lbb/o;->a(I)Lcom/google/googlenav/ui/bl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/N;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/N;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v1, v0, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/google/googlenav/ui/bl;->r:I

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    invoke-interface {v0}, Lbd/k;->c()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_15
    return v0

    :cond_16
    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    goto :goto_15
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/N;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget v1, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_11

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget v1, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1c

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/N;->b(Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_10

    :cond_1c
    iget-object v1, v0, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/N;->a(Lbd/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_10

    :cond_27
    invoke-direct {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/bl;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v0

    goto :goto_10
.end method

.method public getViewTypeCount()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/N;->e:I

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/N;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    sparse-switch v0, :sswitch_data_18

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_16
    move v0, v1

    goto :goto_8

    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_16
        0x7 -> :sswitch_16
        0x14 -> :sswitch_16
        0x38 -> :sswitch_16
    .end sparse-switch
.end method
