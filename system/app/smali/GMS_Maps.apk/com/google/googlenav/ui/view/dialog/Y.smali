.class Lcom/google/googlenav/ui/view/dialog/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/V;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/V;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/V;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/V;->a(Lcom/google/googlenav/ui/view/dialog/V;)Lcom/google/googlenav/ui/view/dialog/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/Z;->b()V

    return-void
.end method
