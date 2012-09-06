.class Lcom/google/googlenav/ui/view/dialog/C;
.super Landroid/support/v4/view/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/s;)V
    .registers 2
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 409
    const/4 v0, 0x3

    return v0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/dialog/s;->a(Lcom/google/googlenav/ui/view/dialog/s;I)Lam/d;

    move-result-object v0

    invoke-virtual {v0}, Lam/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/C;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/s;->e(Lcom/google/googlenav/ui/view/dialog/s;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p2

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 424
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
