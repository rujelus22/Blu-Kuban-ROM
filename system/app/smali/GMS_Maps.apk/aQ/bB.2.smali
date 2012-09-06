.class public LaQ/bB;
.super LaQ/a;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/CharSequence;

.field private final f:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p4, p5, p6}, LaQ/a;-><init>(Ljava/lang/CharSequence;III)V

    .line 38
    iput-object p2, p0, LaQ/bB;->f:Ljava/lang/CharSequence;

    .line 39
    iput-object p3, p0, LaQ/bB;->e:Ljava/lang/CharSequence;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 54
    new-instance v1, LaQ/bD;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/bD;-><init>(LaQ/bC;)V

    .line 55
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/bD;->a(LaQ/bD;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 56
    const v0, 0x7f100497

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/bD;->b(LaQ/bD;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 57
    const v0, 0x7f100498

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/bD;->c(LaQ/bD;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 58
    invoke-static {v1, p1}, LaQ/bD;->a(LaQ/bD;Landroid/view/View;)Landroid/view/View;

    .line 59
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    check-cast p2, LaQ/bD;

    .line 65
    invoke-static {p2}, LaQ/bD;->a(LaQ/bD;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/bB;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {p2}, LaQ/bD;->a(LaQ/bD;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 67
    invoke-static {p2}, LaQ/bD;->b(LaQ/bD;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/bB;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, LaQ/bB;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 69
    invoke-static {p2}, LaQ/bD;->c(LaQ/bD;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_2d
    return-void

    .line 71
    :cond_2e
    invoke-static {p2}, LaQ/bD;->c(LaQ/bD;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-static {p2}, LaQ/bD;->c(LaQ/bD;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/bB;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 49
    iget v0, p0, LaQ/bB;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c()I
    .registers 2

    .prologue
    .line 44
    const v0, 0x7f0401de

    return v0
.end method
