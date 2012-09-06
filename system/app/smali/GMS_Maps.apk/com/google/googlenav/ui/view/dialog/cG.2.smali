.class Lcom/google/googlenav/ui/view/dialog/cG;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cF;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cF;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cG;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cG;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cG;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/cF;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Landroid/content/Context;I)V

    .line 133
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/cF;->o()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cH;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cH;-><init>(Lcom/google/googlenav/ui/view/dialog/cG;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 141
    return-void
.end method
