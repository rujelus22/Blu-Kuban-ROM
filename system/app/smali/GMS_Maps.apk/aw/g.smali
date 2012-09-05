.class public Law/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Law/g;


# instance fields
.field private final b:Law/e;

.field private c:Law/a;

.field private d:Law/b;

.field private e:Lcom/google/googlenav/ui/view/dialog/I;

.field private final f:Lcom/google/googlenav/android/ac;


# direct methods
.method private constructor <init>(Law/e;Lcom/google/googlenav/android/ac;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law/g;->b:Law/e;

    iput-object p2, p0, Law/g;->f:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method private a(Landroid/content/Context;)Law/b;
    .registers 3

    iget-object v0, p0, Law/g;->d:Law/b;

    if-nez v0, :cond_b

    new-instance v0, Law/b;

    invoke-direct {v0, p1}, Law/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Law/g;->d:Law/b;

    :cond_b
    iget-object v0, p0, Law/g;->d:Law/b;

    return-object v0
.end method

.method static synthetic a(Law/g;)Law/b;
    .registers 2

    iget-object v0, p0, Law/g;->d:Law/b;

    return-object v0
.end method

.method public static a()Law/g;
    .registers 1

    sget-object v0, Law/g;->a:Law/g;

    return-object v0
.end method

.method public static a(Law/e;Lcom/google/googlenav/android/ac;)V
    .registers 3

    new-instance v0, Law/g;

    invoke-direct {v0, p0, p1}, Law/g;-><init>(Law/e;Lcom/google/googlenav/android/ac;)V

    sput-object v0, Law/g;->a:Law/g;

    return-void
.end method

.method static synthetic b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;
    .registers 2

    iget-object v0, p0, Law/g;->e:Lcom/google/googlenav/ui/view/dialog/I;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/ActionBar;Law/f;)V
    .registers 7

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const-string v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030062

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v0, 0x7f0f0006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Law/i;

    invoke-direct {v0, p0, v1, v2, p2}, Law/i;-><init>(Law/g;Landroid/content/Context;Landroid/view/View;Law/f;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Law/f;)V
    .registers 7

    iget-object v0, p0, Law/g;->c:Law/a;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Law/l;

    invoke-direct {p0, p1}, Law/g;->a(Landroid/content/Context;)Law/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Law/l;-><init>(Landroid/content/Context;Landroid/view/View;Law/b;)V

    iput-object v0, p0, Law/g;->c:Law/a;

    :cond_15
    :goto_15
    iget-object v0, p0, Law/g;->c:Law/a;

    iget-object v1, p0, Law/g;->b:Law/e;

    iget-object v2, p0, Law/g;->c:Law/a;

    invoke-interface {v1, v2, p3}, Law/e;->a(Law/a;Law/f;)Law/d;

    move-result-object v1

    invoke-interface {v0, v1}, Law/a;->a(Law/d;)V

    iget-object v0, p0, Law/g;->c:Law/a;

    invoke-interface {v0, p2}, Law/a;->a(Landroid/view/View;)V

    const/16 v0, 0x6c

    const-string v1, "a"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Law/g;->d:Law/b;

    invoke-virtual {v0}, Law/b;->a()V

    iget-object v0, p0, Law/g;->c:Law/a;

    invoke-interface {v0}, Law/a;->a()V

    return-void

    :cond_39
    invoke-static {}, Lcom/google/googlenav/ui/view/android/ap;->s()Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Law/m;

    invoke-direct {p0, p1}, Law/g;->a(Landroid/content/Context;)Law/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Law/m;-><init>(Landroid/content/Context;Landroid/view/View;Law/b;)V

    iput-object v0, p0, Law/g;->c:Law/a;

    goto :goto_15

    :cond_4b
    new-instance v0, Law/n;

    invoke-direct {p0, p1}, Law/g;->a(Landroid/content/Context;)Law/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Law/n;-><init>(Landroid/content/Context;Landroid/view/View;Law/b;)V

    iput-object v0, p0, Law/g;->c:Law/a;

    goto :goto_15
.end method

.method public a(Landroid/view/View;Law/f;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Law/j;

    invoke-direct {v1, p0, v0, p1, p2}, Law/j;-><init>(Law/g;Landroid/content/Context;Landroid/view/View;Law/f;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .registers 6

    sget v0, Law/c;->a:I

    if-le p2, v0, :cond_13

    iget-object v0, p0, Law/g;->f:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    iget-object v1, p0, Law/g;->f:Lcom/google/googlenav/android/ac;

    new-instance v2, Law/k;

    invoke-direct {v2, p0, p2, p1}, Law/k;-><init>(Law/g;ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_13
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Law/g;->c:Law/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Law/g;->c:Law/a;

    invoke-interface {v0}, Law/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Law/g;->f:Lcom/google/googlenav/android/ac;

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Law/g;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Law/g;->f:Lcom/google/googlenav/android/ac;

    new-instance v2, Law/h;

    invoke-direct {v2, p0}, Law/h;-><init>(Law/g;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Law/g;->c:Law/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Law/g;->c:Law/a;

    invoke-interface {v0}, Law/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Law/g;->c:Law/a;

    :cond_c
    return-void
.end method
