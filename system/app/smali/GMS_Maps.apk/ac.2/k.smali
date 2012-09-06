.class LaC/k;
.super LaC/w;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, LaC/w;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    iput p4, p0, LaC/k;->a:I

    .line 97
    iput p5, p0, LaC/k;->b:I

    .line 98
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 102
    const v0, 0x7f04013b

    return v0
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 107
    const/16 v0, 0x8

    return v0
.end method

.method public c()Landroid/view/View;
    .registers 4

    .prologue
    .line 118
    invoke-super {p0}, LaC/w;->c()Landroid/view/View;

    move-result-object v1

    .line 120
    const v0, 0x7f10023f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    iget v2, p0, LaC/k;->a:I

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget v2, p0, LaC/k;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 112
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/bo;->c:Lcom/google/googlenav/bo;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bj;->a(Lcom/google/googlenav/bo;)V

    .line 114
    return-void
.end method
