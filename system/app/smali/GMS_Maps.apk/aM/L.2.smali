.class LaM/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, LaM/L;->a:Ljava/lang/CharSequence;

    .line 63
    iput-object p2, p0, LaM/L;->b:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 83
    new-instance v0, LaM/M;

    invoke-direct {v0, p0}, LaM/M;-><init>(LaM/L;)V

    .line 84
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, LaM/M;->a:Landroid/widget/TextView;

    .line 85
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 90
    check-cast p2, LaM/M;

    .line 91
    iget-object v0, p2, LaM/M;->a:Landroid/widget/TextView;

    iget-object v1, p0, LaM/L;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, LaM/L;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_14

    .line 93
    iget-object v0, p2, LaM/M;->a:Landroid/widget/TextView;

    iget-object v1, p0, LaM/L;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_14
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 78
    invoke-static {}, LaM/I;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 68
    const v0, 0x7f040185

    return v0
.end method
