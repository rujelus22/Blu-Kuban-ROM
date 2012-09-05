.class public Lbd/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:I

.field final b:Ljava/lang/CharSequence;

.field final c:Lcom/google/googlenav/ui/bg;

.field final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/googlenav/ui/bg;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbd/ac;->a:I

    if-nez p2, :cond_f

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lbd/ac;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lbd/ac;->c:Lcom/google/googlenav/ui/bg;

    iput-boolean p4, p0, Lbd/ac;->d:Z

    return-void

    :cond_f
    invoke-static {p2, p3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lbd/ad;

    invoke-direct {v1}, Lbd/ad;-><init>()V

    const v0, 0x7f0f0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/ad;->a:Landroid/widget/TextView;

    const v0, 0x7f0f014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/ad;->b:Landroid/view/View;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lbd/ad;

    iget-object v0, p2, Lbd/ad;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbd/ac;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbd/ac;->c:Lcom/google/googlenav/ui/bg;

    sget-object v1, Lcom/google/googlenav/ui/bg;->ae:Lcom/google/googlenav/ui/bg;

    if-ne v0, v1, :cond_22

    iget-object v0, p2, Lbd/ad;->a:Landroid/widget/TextView;

    const v1, 0x7f02033d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_17
    iget-object v1, p2, Lbd/ad;->b:Landroid/view/View;

    iget-boolean v0, p0, Lbd/ac;->d:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_22
    iget-object v0, p2, Lbd/ad;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    :cond_29
    const/16 v0, 0x8

    goto :goto_1e
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300e5

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/ac;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
