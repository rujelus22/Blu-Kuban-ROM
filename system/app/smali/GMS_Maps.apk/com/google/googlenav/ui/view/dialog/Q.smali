.class public Lcom/google/googlenav/ui/view/dialog/Q;
.super Lcom/google/googlenav/ui/view/android/bs;


# instance fields
.field private a:Lax/aP;

.field private b:Z

.field private final c:Lcom/google/googlenav/ui/view/dialog/U;

.field private d:Z

.field private final e:Ljava/lang/CharSequence;

.field private f:Lay/a;

.field private g:LaX/i;

.field private h:Lay/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lax/aP;ZLay/a;LaX/i;Lcom/google/googlenav/ui/view/dialog/U;)V
    .registers 9

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bs;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->b:Z

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/Q;->e:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/Q;->a:Lax/aP;

    iput-object p7, p0, Lcom/google/googlenav/ui/view/dialog/Q;->c:Lcom/google/googlenav/ui/view/dialog/U;

    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/dialog/Q;->d:Z

    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/Q;->f:Lay/a;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/dialog/Q;->g:LaX/i;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->setCancelable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/Q;)Lax/aP;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->a:Lax/aP;

    return-object v0
.end method

.method private a()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->setTitle(Ljava/lang/CharSequence;)V

    :goto_b
    return-void

    :cond_c
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/Q;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/Q;->b(Landroid/widget/ImageView;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->b:Z

    if-nez v0, :cond_40

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->b:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Lay/o;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/Q;->a:Lax/aP;

    invoke-virtual {v2}, Lax/aP;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/Q;->a:Lax/aP;

    invoke-virtual {v3}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lay/o;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/S;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/googlenav/ui/view/dialog/S;-><init>(Lcom/google/googlenav/ui/view/dialog/Q;Landroid/os/Handler;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/view/dialog/Q;->h:Lay/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/Q;->f:Lay/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/Q;->h:Lay/q;

    invoke-virtual {v1, v2}, Lay/a;->a(Lay/q;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/Q;->f:Lay/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/Q;->h:Lay/q;

    invoke-virtual {v1, v0, v2}, Lay/a;->a(Ljava/util/Vector;Lay/q;)Z

    :cond_40
    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .registers 6

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x158

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const/16 v2, 0x159

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const/16 v2, 0x15a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/Q;->d:Z

    if-eqz v1, :cond_30

    const/4 v1, 0x3

    const/16 v2, 0x156

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_30
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/Q;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030081

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/R;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/R;-><init>(Lcom/google/googlenav/ui/view/dialog/Q;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/Q;Landroid/widget/ImageView;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/Q;->b(Landroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/Q;)Lcom/google/googlenav/ui/view/dialog/U;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->c:Lcom/google/googlenav/ui/view/dialog/U;

    return-object v0
.end method

.method private b(Landroid/widget/ImageView;)Z
    .registers 6

    const/4 v1, 0x0

    new-instance v0, LaX/j;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/Q;->a:Lax/aP;

    invoke-virtual {v2}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, LaX/j;-><init>(Ljava/lang/Long;IZ)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/Q;->g:LaX/i;

    invoke-virtual {v2, v0}, LaX/i;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/Q;)Lay/q;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->h:Lay/q;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/Q;)Lay/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->f:Lay/a;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Q;->c:Lcom/google/googlenav/ui/view/dialog/U;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/U;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/dialog/Q;->requestWindowFeature(I)Z

    :cond_a
    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/Q;->a()V

    const v0, 0x7f0f01e0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x15b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/Q;->a:Lax/aP;

    invoke-virtual {v4}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01df

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->a(Landroid/widget/ImageView;)V

    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;->a(Landroid/widget/ListView;)V

    return-void
.end method
