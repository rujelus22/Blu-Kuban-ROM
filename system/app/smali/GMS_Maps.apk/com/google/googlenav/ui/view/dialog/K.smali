.class public Lcom/google/googlenav/ui/view/dialog/K;
.super Lcom/google/googlenav/ui/view/dialog/aP;


# instance fields
.field protected a:Landroid/widget/ViewSwitcher;

.field private d:Lcom/google/googlenav/ui/view/dialog/O;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 7

    const v0, 0x7f0d001a

    const/16 v1, 0x31a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x307

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aP;-><init>(Lcom/google/googlenav/ui/p;ILjava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/K;)Lcom/google/googlenav/ui/view/dialog/O;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/K;->d:Lcom/google/googlenav/ui/view/dialog/O;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/K;->m()V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/dialog/aP;->a(Landroid/view/View;)V

    const v0, 0x7f0f01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/K;->a:Landroid/widget/ViewSwitcher;

    const v0, 0x7f0f01ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x319

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/dialog/O;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/K;->d:Lcom/google/googlenav/ui/view/dialog/O;

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/P;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/view/dialog/P;-><init>(Lcom/google/googlenav/ui/view/dialog/O;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/K;->a(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public h()I
    .registers 2

    const v0, 0x7f030070

    return v0
.end method

.method public i()Landroid/widget/ViewSwitcher;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/K;->a:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method public k()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/K;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/L;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/view/dialog/L;-><init>(Lcom/google/googlenav/ui/view/dialog/K;Landroid/os/Handler;)V

    invoke-direct {v1, v2, v3}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lap/b;->g()V

    return-void
.end method
