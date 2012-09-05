.class public LaQ/g;
.super Lcom/google/googlenav/ui/view/android/ap;

# interfaces
.implements LaQ/s;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private final d:LaQ/a;

.field private final k:LaQ/u;

.field private l:LaQ/v;

.field private m:LaQ/p;

.field private final n:LaQ/F;

.field private o:Lcom/google/googlenav/ui/wizard/ez;

.field private p:Ljava/lang/String;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:LaQ/e;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZLaQ/m;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 14

    const/4 v0, 0x3

    new-array v0, v0, [Laq/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/n;->Z:Laq/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/googlenav/ui/n;->aa:Laq/a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/googlenav/ui/n;->aB:Laq/a;

    aput-object v2, v0, v1

    const v1, 0x7f0d001b

    invoke-direct {p0, p9, v0, v1}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    iput-boolean p6, p0, LaQ/g;->a:Z

    iput-boolean p7, p0, LaQ/g;->b:Z

    iput-object p3, p0, LaQ/g;->c:Ljava/lang/String;

    iput-object p2, p0, LaQ/g;->p:Ljava/lang/String;

    iput-object p10, p0, LaQ/g;->o:Lcom/google/googlenav/ui/wizard/ez;

    new-instance v0, LaQ/a;

    invoke-direct {v0, p1}, LaQ/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, LaQ/g;->d:LaQ/a;

    new-instance v0, LaQ/u;

    invoke-direct {v0, p5}, LaQ/u;-><init>(Ljava/util/List;)V

    iput-object v0, p0, LaQ/g;->k:LaQ/u;

    new-instance v0, LaQ/v;

    invoke-direct {v0, p4, p10}, LaQ/v;-><init>(Ljava/util/List;Lcom/google/googlenav/ui/wizard/ez;)V

    iput-object v0, p0, LaQ/g;->l:LaQ/v;

    new-instance v0, LaQ/p;

    invoke-direct {v0, p8, p0}, LaQ/p;-><init>(LaQ/m;LaQ/s;)V

    iput-object v0, p0, LaQ/g;->m:LaQ/p;

    new-instance v0, LaQ/F;

    invoke-direct {v0, p6, p3, p10}, LaQ/F;-><init>(ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/ez;)V

    iput-object v0, p0, LaQ/g;->n:LaQ/F;

    new-instance v0, LaQ/e;

    invoke-direct {v0, p10}, LaQ/e;-><init>(Lcom/google/googlenav/ui/wizard/ez;)V

    iput-object v0, p0, LaQ/g;->s:LaQ/e;

    return-void
.end method

.method static synthetic a(LaQ/g;)Lcom/google/googlenav/ui/wizard/ez;
    .registers 2

    iget-object v0, p0, LaQ/g;->o:Lcom/google/googlenav/ui/wizard/ez;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    const/16 v2, 0x8

    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2d9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f02b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LaQ/h;

    invoke-direct {v1, p0}, LaQ/h;-><init>(LaQ/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_50

    const v0, 0x7f0f017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0201cd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    new-instance v2, LaQ/i;

    invoke-direct {v2, p0}, LaQ/i;-><init>(LaQ/g;)V

    invoke-virtual {v0, v1, v2}, Law/g;->a(Landroid/view/View;Law/f;)V

    :goto_4f
    return-void

    :cond_50
    const v0, 0x7f0f017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f
.end method

.method static synthetic b(LaQ/g;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, LaQ/g;->f:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method static synthetic c(LaQ/g;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, LaQ/g;->f:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method private h()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, LaQ/g;->l:LaQ/v;

    invoke-virtual {v0}, LaQ/v;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LaQ/g;->k:LaQ/u;

    invoke-virtual {v1}, LaQ/u;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_13

    if-nez v1, :cond_1e

    :cond_13
    iget-object v0, p0, LaQ/g;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LaQ/g;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    return-void

    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, LaQ/g;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LaQ/g;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    :cond_35
    iget-object v0, p0, LaQ/g;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LaQ/g;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d
.end method


# virtual methods
.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaQ/g;->requestWindowFeature(I)Z

    :cond_e
    return-void
.end method

.method public a(LaQ/m;)V
    .registers 3

    iget-object v0, p0, LaQ/g;->m:LaQ/p;

    invoke-virtual {v0, p1}, LaQ/p;->a(LaQ/m;)V

    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4

    iget-object v0, p0, LaQ/g;->o:Lcom/google/googlenav/ui/wizard/ez;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ez;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f02029f

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    const/16 v0, 0x2d9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    new-instance v1, LaQ/j;

    invoke-direct {v1, p0}, LaQ/j;-><init>(LaQ/g;)V

    invoke-virtual {v0, p1, v1}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 6

    iput-object p1, p0, LaQ/g;->c:Ljava/lang/String;

    iget-object v0, p0, LaQ/g;->n:LaQ/F;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaQ/g;->n:LaQ/F;

    iget-boolean v1, p0, LaQ/g;->a:Z

    iget-object v2, p0, LaQ/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LaQ/F;->a(ZLjava/lang/String;)V

    :cond_f
    iget-object v0, p0, LaQ/g;->l:LaQ/v;

    invoke-virtual {v0, p2}, LaQ/v;->a(Ljava/util/List;)V

    if-eqz p2, :cond_19

    invoke-direct {p0}, LaQ/g;->h()V

    :cond_19
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    iput-boolean p2, p0, LaQ/g;->a:Z

    iget-object v0, p0, LaQ/g;->s:LaQ/e;

    if-eqz v0, :cond_d

    iget-object v0, p0, LaQ/g;->s:LaQ/e;

    iget-boolean v1, p0, LaQ/g;->b:Z

    invoke-virtual {v0, p1, p2, v1}, LaQ/e;->a(Ljava/lang/String;ZZ)V

    :cond_d
    iget-object v0, p0, LaQ/g;->n:LaQ/F;

    if-eqz v0, :cond_18

    iget-object v0, p0, LaQ/g;->n:LaQ/F;

    iget-object v1, p0, LaQ/g;->c:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, LaQ/F;->a(ZLjava/lang/String;)V

    :cond_18
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean p2, p0, LaQ/g;->b:Z

    iput-object p1, p0, LaQ/g;->p:Ljava/lang/String;

    iput-boolean p3, p0, LaQ/g;->a:Z

    iput-object v1, p0, LaQ/g;->c:Ljava/lang/String;

    iget-object v0, p0, LaQ/g;->l:LaQ/v;

    invoke-virtual {v0, v1}, LaQ/v;->a(Ljava/util/List;)V

    iget-object v0, p0, LaQ/g;->k:LaQ/u;

    invoke-virtual {v0, v1}, LaQ/u;->a(Ljava/util/List;)V

    iget-object v0, p0, LaQ/g;->p:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, LaQ/g;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, LaQ/g;->h()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, LaQ/g;->d:LaQ/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaQ/g;->d:LaQ/a;

    iget-object v1, p0, LaQ/g;->o:Lcom/google/googlenav/ui/wizard/ez;

    invoke-virtual {v0, v1, p1}, LaQ/a;->a(Lcom/google/googlenav/ui/wizard/ez;Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method public b(LaQ/m;)V
    .registers 6

    iget-object v0, p1, LaQ/m;->a:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p1, LaQ/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, LaQ/g;->o:Lcom/google/googlenav/ui/wizard/ez;

    iget-object v1, p1, LaQ/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, LaQ/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ez;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, LaQ/g;->k:LaQ/u;

    invoke-virtual {v0, p1}, LaQ/u;->a(Ljava/util/List;)V

    if-eqz p1, :cond_a

    invoke-direct {p0}, LaQ/g;->h()V

    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, LaQ/g;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_21

    const v0, 0x7f0f02b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    const v0, 0x7f0f02cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaQ/g;->q:Landroid/view/View;

    const v0, 0x7f0f02ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaQ/g;->r:Landroid/view/View;

    iget-object v0, p0, LaQ/g;->r:Landroid/view/View;

    const v2, 0x7f0f014e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x2ea

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, LaQ/g;->a(Landroid/view/View;)V

    iget-object v0, p0, LaQ/g;->s:LaQ/e;

    const v2, 0x7f0f02b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, LaQ/e;->a(Landroid/view/View;)V

    iget-object v0, p0, LaQ/g;->p:Ljava/lang/String;

    iget-boolean v2, p0, LaQ/g;->a:Z

    invoke-virtual {p0, v0, v2}, LaQ/g;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, LaQ/g;->d:LaQ/a;

    iget-object v2, p0, LaQ/g;->o:Lcom/google/googlenav/ui/wizard/ez;

    invoke-virtual {v0, v2, v1}, LaQ/a;->a(Lcom/google/googlenav/ui/wizard/ez;Landroid/view/View;)V

    iget-object v0, p0, LaQ/g;->k:LaQ/u;

    invoke-virtual {v0, v1}, LaQ/u;->a(Landroid/view/View;)V

    iget-object v0, p0, LaQ/g;->l:LaQ/v;

    invoke-virtual {v0, v1}, LaQ/v;->a(Landroid/view/View;)V

    iget-object v0, p0, LaQ/g;->m:LaQ/p;

    invoke-virtual {v0, v1}, LaQ/p;->a(Landroid/view/View;)V

    iget-object v0, p0, LaQ/g;->n:LaQ/F;

    if-eqz v0, :cond_7c

    iget-object v0, p0, LaQ/g;->n:LaQ/F;

    invoke-virtual {v0, v1}, LaQ/F;->a(Landroid/view/View;)V

    :cond_7c
    return-object v1
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x2d9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0f0429

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0f0423

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x436

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0f0424

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x1ce

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0f040d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v0, 0x40d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    new-instance v3, LaQ/k;

    invoke-direct {v3, p0}, LaQ/k;-><init>(LaQ/g;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    const/4 v0, 0x1

    :goto_6f
    return v0

    :cond_70
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_6f
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0, p2}, LaQ/g;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f0424

    if-ne v1, v2, :cond_31

    sget-object v1, LaQ/g;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->g()Lcom/google/googlenav/android/h;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;)V

    goto :goto_f

    :cond_31
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f0423

    if-ne v1, v2, :cond_71

    sget-object v1, LaQ/g;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->g()Lcom/google/googlenav/android/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/h;->h()V

    sget-object v1, LaQ/g;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    sget-object v1, LaQ/g;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->l()I

    goto :goto_f

    :cond_71
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f0429

    if-ne v1, v2, :cond_f

    iget-object v1, p0, LaQ/g;->o:Lcom/google/googlenav/ui/wizard/ez;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/ez;->g()V

    goto :goto_f
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_b
.end method
