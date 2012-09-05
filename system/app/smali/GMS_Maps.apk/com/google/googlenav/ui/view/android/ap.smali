.class public abstract Lcom/google/googlenav/ui/view/android/ap;
.super Lcom/google/googlenav/ui/view/android/bs;


# static fields
.field protected static e:Lcom/google/googlenav/android/BaseMapsActivity;

.field public static final i:Lcom/google/googlenav/ui/p;


# instance fields
.field private a:[Laq/a;

.field protected f:Lcom/google/googlenav/ui/p;

.field protected final g:Lcom/google/googlenav/ui/view/android/aB;

.field protected h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/googlenav/ui/view/android/aq;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/aq;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/ap;->i:Lcom/google/googlenav/ui/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->i:Lcom/google/googlenav/ui/p;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->i:Lcom/google/googlenav/ui/p;

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Laq/a;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ap;->b()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;I)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Laq/a;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;[Laq/a;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ap;->b()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V
    .registers 6

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-static {p3}, Lcom/google/googlenav/ui/view/android/ap;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bs;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ap;->a:[Laq/a;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    new-instance v0, Lcom/google/googlenav/ui/view/android/aB;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aB;-><init>(Lcom/google/googlenav/ui/view/android/ap;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->g:Lcom/google/googlenav/ui/view/android/aB;

    return-void
.end method

.method private static a(I)I
    .registers 1

    return p0
.end method

.method private a(Laq/a;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Laq/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_3
.end method

.method private a(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public static a(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 1

    sput-object p0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method public static b()I
    .registers 1

    const v0, 0x7f0d001a

    return v0
.end method

.method private b([Laq/a;I)Laq/a;
    .registers 4

    if-ltz p2, :cond_5

    array-length v0, p1

    if-lt p2, v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    aget-object v0, p1, p2

    goto :goto_6
.end method

.method public static s()Z
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public L_()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected N_()V
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->L_()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/ap;->requestWindowFeature(I)Z

    goto :goto_18
.end method

.method protected a([Laq/a;I)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->b([Laq/a;I)Laq/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;->a(Laq/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 2

    return-void
.end method

.method public a([Laq/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->closeOptionsMenu()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ap;->a:[Laq/a;

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->invalidateOptionsMenu()V

    :cond_e
    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/cb;->a([Laq/a;)V

    :cond_1f
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0}, Lcom/google/googlenav/ui/p;->o()V

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected abstract c()Landroid/view/View;
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method protected final d(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method public final dismiss()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->l()V

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/view/android/cb;->a(Landroid/app/Dialog;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/android/BaseMapsActivity;->b(Landroid/app/Dialog;)V

    goto :goto_14
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->h:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method protected g()V
    .registers 1

    return-void
.end method

.method public hide()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->dismiss()V

    return-void
.end method

.method protected l()V
    .registers 1

    return-void
.end method

.method public o()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->h:Landroid/view/View;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bs;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;->setCanceledOnTouchOutside(Z)V

    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->N_()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v0, 0x1

    const/16 v1, 0x54

    if-ne p1, v1, :cond_b

    sget-object v1, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->onSearchRequested()Z

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    sget-object v2, Lcom/google/googlenav/ui/view/android/ap;->i:Lcom/google/googlenav/ui/p;

    if-ne v1, v2, :cond_16

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bs;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a

    :cond_16
    const/4 v1, 0x5

    if-ne p1, v1, :cond_29

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_24
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bs;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a

    :cond_29
    const/4 v1, 0x4

    if-ne p1, v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v1}, Lcom/google/googlenav/ui/p;->o()V

    goto :goto_a
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->a(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/ap;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->q()[Laq/a;

    move-result-object v1

    if-eqz v1, :cond_1a

    array-length v3, v1

    if-nez v3, :cond_1c

    :cond_1a
    move v0, v2

    goto :goto_a

    :cond_1c
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/googlenav/ui/view/android/ap;->b([Laq/a;I)Laq/a;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/ap;->a(Laq/a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2c

    move v0, v2

    goto :goto_a

    :cond_2c
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object v2, Lcom/google/googlenav/ui/n;->I:Laq/a;

    invoke-virtual {v2, v3}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object v1, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aD()Lcom/google/googlenav/ui/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/f;->c()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->invalidateOptionsMenu()V

    goto :goto_a

    :cond_53
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0, v4, v5}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/googlenav/ui/D;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bs;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/ap;->a(Landroid/view/Menu;)V

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bs;->onOptionsMenuClosed(Landroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bs;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->q()[Laq/a;

    move-result-object v4

    if-eqz v4, :cond_62

    invoke-static {}, Lcom/google/googlenav/ui/android/a;->a()Lcom/google/googlenav/ui/android/a;

    move-result-object v5

    move v0, v1

    :goto_10
    array-length v2, v4

    if-ge v0, v2, :cond_62

    aget-object v2, v4, v0

    invoke-virtual {v2}, Laq/a;->b()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Laq/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v1, v0, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {v5, v2}, Lcom/google/googlenav/ui/android/a;->b(Laq/a;)Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-virtual {v5, v2}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_30
    sget-object v7, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    invoke-virtual {v2, v7}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    sget-object v7, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v7}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ui/D;->aI()Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_49
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/M;->ap()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-virtual {v2}, Laq/a;->e()Z

    move-result v2

    if-eqz v2, :cond_60

    move v2, v3

    :goto_5a
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_60
    move v2, v1

    goto :goto_5a

    :cond_62
    if-eqz v4, :cond_68

    array-length v0, v4

    if-lez v0, :cond_68

    :goto_67
    return v3

    :cond_68
    move v3, v1

    goto :goto_67
.end method

.method protected final p()V
    .registers 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;->a(Landroid/app/ActionBar;)V

    :cond_1a
    return-void
.end method

.method public q()[Laq/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->a:[Laq/a;

    return-object v0
.end method

.method public r()Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method public final show()V
    .registers 7

    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->e()Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->c()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/ap;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ap;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/ap;->a:[Laq/a;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/cb;->a(Landroid/app/Dialog;Landroid/view/View;Lcom/google/googlenav/ui/p;Ljava/lang/CharSequence;[Laq/a;)V

    :goto_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->d()V

    return-void

    :cond_26
    sget-object v0, Lcom/google/googlenav/ui/view/android/ap;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/android/BaseMapsActivity;->a(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->p()V

    goto :goto_22
.end method

.method public final t()V
    .registers 1

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method public final u()V
    .registers 1

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    return-void
.end method
