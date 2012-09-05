.class Lcom/google/googlenav/ui/wizard/l;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/e;

.field private final b:Lam/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/e;Lam/b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/l;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/l;->b:Lam/b;

    return-void
.end method


# virtual methods
.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/l;->b:Lam/b;

    return-object v0
.end method

.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/wizard/m;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/m;-><init>(Lcom/google/googlenav/ui/wizard/l;Lcom/google/googlenav/ui/wizard/f;)V

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/m;->a:Landroid/widget/TextView;

    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/m;->b:Landroid/widget/TextView;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 6

    check-cast p2, Lcom/google/googlenav/ui/wizard/m;

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/m;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/l;->b:Lam/b;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/m;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/l;->b:Lam/b;

    invoke-static {v1, v2}, Lcom/google/googlenav/d;->a(ILam/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x1090004

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
