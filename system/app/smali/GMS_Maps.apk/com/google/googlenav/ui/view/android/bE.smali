.class public Lcom/google/googlenav/ui/view/android/bE;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/google/googlenav/ui/p;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bE;->f:Lcom/google/googlenav/ui/p;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bE;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bE;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/bE;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/bE;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 5

    new-instance v1, Lcom/google/googlenav/ui/view/android/bG;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/bG;-><init>()V

    iput-object p1, v1, Lcom/google/googlenav/ui/view/android/bG;->a:Landroid/view/View;

    const v0, 0x7f0f0372

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bG;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0373

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bG;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0374

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bG;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0375

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bG;->e:Landroid/widget/TextView;

    new-instance v0, Lcom/google/googlenav/ui/view/android/bH;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/view/android/bH;-><init>(Lcom/google/googlenav/ui/view/android/bE;Lcom/google/googlenav/ui/view/android/bF;)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bG;->f:Lcom/google/googlenav/ui/view/android/bH;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lcom/google/googlenav/ui/view/android/bG;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->a:Ljava/lang/String;

    if-nez v0, :cond_34

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->f:Lcom/google/googlenav/ui/view/android/bH;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bH;->a:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->f:Lcom/google/googlenav/ui/view/android/bH;

    iput-object p1, v0, Lcom/google/googlenav/ui/view/android/bH;->b:Lcom/google/googlenav/ui/p;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->a:Landroid/view/View;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bG;->f:Lcom/google/googlenav/ui/view/android/bH;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_34
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bG;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public b()I
    .registers 2

    const v0, 0x7f03013e

    return v0
.end method

.method public c()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
