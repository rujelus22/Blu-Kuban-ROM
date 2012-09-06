.class Lcom/google/googlenav/ui/view/dialog/bE;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/bD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bD;LY/c;Landroid/widget/ListView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bE;->b:Lcom/google/googlenav/ui/view/dialog/bD;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bE;->a:Landroid/widget/ListView;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bE;->b:Lcom/google/googlenav/ui/view/dialog/bD;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bE;->b:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/bD;->a(Lcom/google/googlenav/ui/view/dialog/bD;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/view/dialog/bD;->a:Lcom/google/googlenav/ui/view/android/L;

    .line 101
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/bD;->l()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bF;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bF;-><init>(Lcom/google/googlenav/ui/view/dialog/bE;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 110
    return-void
.end method
