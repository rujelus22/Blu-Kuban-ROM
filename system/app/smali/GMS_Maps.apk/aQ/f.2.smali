.class public LaQ/f;
.super LaQ/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, LaQ/a;-><init>(Ljava/lang/CharSequence;II)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 47
    new-instance v1, LaQ/h;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/h;-><init>(LaQ/g;)V

    .line 48
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/h;->a(LaQ/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 49
    invoke-static {v1, p1}, LaQ/h;->a(LaQ/h;Landroid/view/View;)Landroid/view/View;

    .line 50
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 55
    check-cast p2, LaQ/h;

    .line 56
    invoke-static {p2}, LaQ/h;->a(LaQ/h;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/f;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, LaQ/f;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 32
    const v0, 0x7f04005c

    return v0
.end method
