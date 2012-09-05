.class public Lbd/at;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lbd/at;->a:Ljava/lang/CharSequence;

    iput p3, p0, Lbd/at;->b:I

    return-void

    :cond_b
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbd/at;->b:I

    return v0
.end method

.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lbd/au;

    invoke-direct {v1}, Lbd/au;-><init>()V

    const v0, 0x7f0f0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/au;->a:Landroid/widget/TextView;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lbd/au;

    iget-object v0, p2, Lbd/au;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbd/at;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f030138

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
