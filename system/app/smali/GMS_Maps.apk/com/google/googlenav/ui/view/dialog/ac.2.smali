.class Lcom/google/googlenav/ui/view/dialog/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aa;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ac;->a:Lcom/google/googlenav/ui/view/dialog/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ac;->a:Lcom/google/googlenav/ui/view/dialog/aa;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aa;->a(Lcom/google/googlenav/ui/view/dialog/aa;)Lcom/google/googlenav/ui/view/dialog/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/ae;->b()V

    return-void
.end method
