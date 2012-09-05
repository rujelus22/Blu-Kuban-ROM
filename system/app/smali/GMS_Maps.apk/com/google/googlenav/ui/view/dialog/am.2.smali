.class Lcom/google/googlenav/ui/view/dialog/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:LaY/br;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/al;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/al;Landroid/view/View;LaY/br;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/am;->c:Lcom/google/googlenav/ui/view/dialog/al;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/am;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/am;->b:LaY/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/am;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/am;->b:LaY/br;

    invoke-virtual {v0}, LaY/br;->j()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
