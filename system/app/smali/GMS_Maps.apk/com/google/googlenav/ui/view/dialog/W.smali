.class Lcom/google/googlenav/ui/view/dialog/W;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/V;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/V;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/W;->a:Lcom/google/googlenav/ui/view/dialog/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/W;->a:Lcom/google/googlenav/ui/view/dialog/V;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/V;->a(Lcom/google/googlenav/ui/view/dialog/V;)Lcom/google/googlenav/ui/view/dialog/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/Z;->a()V

    return-void
.end method
