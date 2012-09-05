.class Lcom/google/googlenav/ui/view/dialog/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:LaD/f;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/q;Landroid/view/View;LaD/f;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/w;->c:Lcom/google/googlenav/ui/view/dialog/q;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/w;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/w;->b:LaD/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/w;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/w;->b:LaD/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/C;->a(Landroid/view/View;LaD/f;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/w;->c:Lcom/google/googlenav/ui/view/dialog/q;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/dialog/q;->m:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/w;->b:LaD/f;

    invoke-virtual {v0}, LaD/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/w;->c:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/q;->b(Lcom/google/googlenav/ui/view/dialog/q;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method
