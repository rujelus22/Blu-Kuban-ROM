.class public Lcom/google/googlenav/ui/view/android/cb;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/google/googlenav/android/E;


# instance fields
.field private final a:Lcom/google/googlenav/android/BaseMapsActivity;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/view/View;

.field private d:Lcom/google/googlenav/ui/p;

.field private e:Ljava/lang/CharSequence;

.field private f:[Laq/a;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 3

    const v0, 0x7f0d0017

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Laq/a;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->f:[Laq/a;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/cb;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->d:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/cb;->b(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method private b(Landroid/view/Menu;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aC;->a(Landroid/view/MenuItem;)Laq/a;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Laq/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method private c(Landroid/view/Menu;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/cb;->f:[Laq/a;

    array-length v5, v4

    move v2, v3

    :goto_6
    if-ge v2, v5, :cond_29

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/google/googlenav/ui/aC;->a(Laq/a;)I

    move-result v0

    if-nez v0, :cond_15

    const/high16 v0, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v1, v1, 0x1

    :cond_15
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-nez v7, :cond_25

    const v7, 0x7f0f042c

    invoke-virtual {v6}, Laq/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v0, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_29
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/cb;->g:Z

    return-void
.end method

.method private d()Landroid/widget/LinearLayout;
    .registers 6

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cb;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030198

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f040a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/cb;->e:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f00d3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/cc;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/cc;-><init>(Lcom/google/googlenav/ui/view/android/cb;)V

    new-instance v3, Lbb/a;

    invoke-direct {v3, v4, v4}, Lbb/a;-><init>(II)V

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    :cond_3d
    new-instance v1, Lcom/google/googlenav/ui/view/android/cd;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/cd;-><init>(Lcom/google/googlenav/ui/view/android/cb;)V

    new-instance v2, Lbb/a;

    invoke-direct {v2, v4, v4}, Lbb/a;-><init>(II)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cb;->invalidateOptionsMenu()V

    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->b:Landroid/app/Dialog;

    if-ne p1, v0, :cond_e

    const-string v4, ""

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/cb;->a(Landroid/app/Dialog;Landroid/view/View;Lcom/google/googlenav/ui/p;Ljava/lang/CharSequence;[Laq/a;)V

    :cond_e
    return-void
.end method

.method public a(Landroid/app/Dialog;Landroid/view/View;Lcom/google/googlenav/ui/p;Ljava/lang/CharSequence;[Laq/a;)V
    .registers 9

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cb;->b:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/cb;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/cb;->d:Lcom/google/googlenav/ui/p;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/cb;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p5}, Lcom/google/googlenav/ui/view/android/cb;->a([Laq/a;)V

    const v0, 0x7f0f0273

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/cb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0274

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/cb;->c:Landroid/view/View;

    if-nez v2, :cond_28

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_27
    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/cb;->d()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27
.end method

.method public a([Laq/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cb;->closeOptionsMenu()V

    if-nez p1, :cond_8

    const/4 v0, 0x0

    new-array p1, v0, [Laq/a;

    :cond_8
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cb;->f:[Laq/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cb;->g:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->c:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->Z()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cb;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/cb;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cb;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->b()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    check-cast v0, Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v3, v0, p0, v2}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/D;)V

    :cond_20
    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->h()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/cb;->a(Landroid/view/Menu;)Z

    move-result v1

    :goto_2e
    return v1

    :cond_2f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->al()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_66

    move v0, v1

    :goto_4a
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v3}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    if-eqz v0, :cond_68

    const v0, 0x7f0e0012

    :goto_55
    invoke-virtual {v3, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/cb;->b(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/cb;->c(Landroid/view/Menu;)V

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/aC;->a(Landroid/view/Menu;Lcom/google/googlenav/ui/av;)V

    goto :goto_2e

    :cond_66
    const/4 v0, 0x0

    goto :goto_4a

    :cond_68
    const v0, 0x7f0e0011

    goto :goto_55
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 14

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v7

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v3, 0x7f0f042c

    if-ne v0, v3, :cond_62

    iget-object v9, p0, Lcom/google/googlenav/ui/view/android/cb;->f:[Laq/a;

    array-length v10, v9

    move v6, v2

    move v5, v1

    :goto_1f
    if-ge v6, v10, :cond_92

    aget-object v0, v9, v6

    invoke-static {v0}, Lcom/google/googlenav/ui/aC;->a(Laq/a;)I

    move-result v3

    if-nez v3, :cond_2e

    const/high16 v3, 0x3

    add-int/2addr v3, v5

    add-int/lit8 v5, v5, 0x1

    :cond_2e
    if-ne v3, v8, :cond_3f

    move-object v3, v0

    :goto_31
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Laq/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d

    instance-of v5, v0, Ljava/lang/Integer;

    if-nez v5, :cond_43

    :cond_3d
    move v0, v2

    :goto_3e
    return v0

    :cond_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1f

    :cond_43
    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/cb;->d:Lcom/google/googlenav/ui/p;

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/cb;->d:Lcom/google/googlenav/ui/p;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, -0x1

    invoke-interface {v5, v0, v6, v4}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    move v2, v1

    :cond_57
    if-nez v2, :cond_60

    invoke-virtual {v7}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    :cond_60
    move v0, v1

    goto :goto_3e

    :cond_62
    const v0, 0x102002c

    if-ne v8, v0, :cond_72

    invoke-virtual {v7}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/n;->I:Laq/a;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    move v0, v1

    goto :goto_3e

    :cond_72
    const v0, 0x7f0f0220

    if-ne v8, v0, :cond_89

    invoke-virtual {v7}, Lcom/google/googlenav/ui/D;->aD()Lcom/google/googlenav/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/f;->c()V

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/cb;->invalidateOptionsMenu()V

    :cond_87
    move v0, v1

    goto :goto_3e

    :cond_89
    invoke-virtual {v7}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/av;->a(Landroid/view/MenuItem;)V

    move v0, v1

    goto :goto_3e

    :cond_92
    move-object v3, v4

    goto :goto_31
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cb;->g:Z

    if-eqz v0, :cond_d

    const v0, 0x7f0f042c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/cb;->c(Landroid/view/Menu;)V

    :cond_d
    const v0, 0x7f0f0422

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aI()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_27
    const v0, 0x7f0f0220

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v1, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v1}, Lcom/google/googlenav/android/D;->b()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cb;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    sget-object v2, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v2}, Lcom/google/googlenav/android/D;->k()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aC;->a(Lcom/google/googlenav/android/BaseMapsActivity;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_47
    const/4 v0, 0x1

    return v0
.end method
