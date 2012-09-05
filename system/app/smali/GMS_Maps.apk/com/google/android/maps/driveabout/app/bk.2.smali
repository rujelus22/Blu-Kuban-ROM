.class public Lcom/google/android/maps/driveabout/app/bk;
.super Landroid/app/Dialog;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/bo;

.field private final b:Lcom/google/android/maps/driveabout/app/bn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZLcom/google/android/maps/driveabout/app/bo;)V
    .registers 15

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bk;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f020171

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/bk;->requestWindowFeature(I)Z

    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bk;->setContentView(I)V

    invoke-static {p1}, Ln/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_40

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/bl;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/bl;-><init>(Lcom/google/android/maps/driveabout/app/bk;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    invoke-static/range {p1 .. p6}, Lcom/google/android/maps/driveabout/app/bk;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZ)[Lcom/google/android/maps/driveabout/app/bx;

    move-result-object v3

    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v4, Lcom/google/android/maps/driveabout/app/bn;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v3, v5}, Lcom/google/android/maps/driveabout/app/bn;-><init>(Lcom/google/android/maps/driveabout/app/bk;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bx;Lcom/google/android/maps/driveabout/app/bl;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/app/bk;->b:Lcom/google/android/maps/driveabout/app/bn;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bk;->b:Lcom/google/android/maps/driveabout/app/bn;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bk;->b:Lcom/google/android/maps/driveabout/app/bn;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object p7, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bk;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v0, Lcom/google/android/maps/driveabout/app/bm;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bm;-><init>(Lcom/google/android/maps/driveabout/app/bk;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    array-length v5, v3

    move v0, v2

    :goto_72
    if-ge v0, v5, :cond_84

    aget-object v6, v3, v0

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v6

    if-eqz v6, :cond_81

    move v0, v1

    :goto_7d
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_84
    move v0, v2

    goto :goto_7d
.end method

.method private a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bo;->a()V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bk;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bk;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bk;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bk;Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bk;->a(Lcom/google/android/maps/driveabout/app/bx;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    if-eqz v2, :cond_1c

    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/bq;

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v2

    if-nez v2, :cond_20

    :goto_10
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bx;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(Z)V

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bk;->dismiss()V

    return-void

    :cond_20
    move v0, v1

    goto :goto_10

    :cond_22
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/br;

    if-nez v2, :cond_2a

    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/bp;

    if-eqz v2, :cond_3f

    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v2

    if-nez v2, :cond_3d

    :goto_30
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bx;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->b(Z)V

    goto :goto_1c

    :cond_3d
    move v0, v1

    goto :goto_30

    :cond_3f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bk;->a:Lcom/google/android/maps/driveabout/app/bo;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/bo;->a(Lcom/google/android/maps/driveabout/app/bx;)V

    goto :goto_1c
.end method

.method private static a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/bB;I)V
    .registers 6

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bB;->i()I

    move-result v0

    if-ge v2, v0, :cond_22

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bB;->d(I)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v1

    instance-of v0, v1, Lcom/google/android/maps/driveabout/app/bx;

    if-eqz v0, :cond_1e

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    check-cast v1, Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_22
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZ)[Lcom/google/android/maps/driveabout/app/bx;
    .registers 9

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_31

    new-instance v0, Lcom/google/android/maps/driveabout/app/br;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/br;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bl;)V

    :goto_d
    invoke-virtual {v0, p5}, Lcom/google/android/maps/driveabout/app/bx;->a(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/bq;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/bq;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bl;)V

    invoke-virtual {v0, p4}, Lcom/google/android/maps/driveabout/app/bq;->a(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, p1, p3}, Lcom/google/android/maps/driveabout/app/bk;->a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/bB;I)V

    invoke-static {v1, p2, p3}, Lcom/google/android/maps/driveabout/app/bk;->a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/bB;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/bx;

    return-object v0

    :cond_31
    new-instance v0, Lcom/google/android/maps/driveabout/app/bp;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/bp;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bl;)V

    goto :goto_d
.end method
