.class Lcom/google/googlenav/ui/view/dialog/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/f;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/f;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/d;->c(Lcom/google/googlenav/ui/view/dialog/d;)Lcom/google/googlenav/ui/view/dialog/o;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/f;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/d;->c(Lcom/google/googlenav/ui/view/dialog/d;)Lcom/google/googlenav/ui/view/dialog/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/o;->a()V

    :cond_11
    return-void
.end method
