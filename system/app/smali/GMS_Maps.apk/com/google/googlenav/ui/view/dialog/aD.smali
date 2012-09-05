.class Lcom/google/googlenav/ui/view/dialog/aD;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aC;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aC;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aD;->a:Lcom/google/googlenav/ui/view/dialog/aC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aD;->a:Lcom/google/googlenav/ui/view/dialog/aC;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aC;->a(Lcom/google/googlenav/ui/view/dialog/aC;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aD;->a:Lcom/google/googlenav/ui/view/dialog/aC;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hp;->f()V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aD;->a:Lcom/google/googlenav/ui/view/dialog/aC;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hp;->e()V

    goto :goto_f
.end method
