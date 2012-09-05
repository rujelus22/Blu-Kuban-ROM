.class public Lcom/google/googlenav/ui/wizard/cS;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/view/View$OnClickListener;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cS;->c:Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cS;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/wizard/cT;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/cT;-><init>(Lcom/google/googlenav/ui/wizard/cS;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/cT;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 6

    check-cast p2, Lcom/google/googlenav/ui/wizard/cT;

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/cT;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/cT;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cS;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f030140

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
