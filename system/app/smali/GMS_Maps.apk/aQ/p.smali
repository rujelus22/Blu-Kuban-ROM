.class public LaQ/p;
.super LaQ/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, LaQ/a;-><init>(Ljava/lang/CharSequence;II)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 40
    new-instance v1, LaQ/r;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/r;-><init>(LaQ/q;)V

    .line 41
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/r;->a(LaQ/r;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 42
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 47
    check-cast p2, LaQ/r;

    .line 48
    invoke-static {p2}, LaQ/r;->a(LaQ/r;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/p;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 30
    const v0, 0x7f040066

    return v0
.end method
