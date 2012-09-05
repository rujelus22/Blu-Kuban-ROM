.class Lbd/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lbd/m;


# direct methods
.method constructor <init>(Lbd/m;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lbd/n;->b:Lbd/m;

    iput-object p2, p0, Lbd/n;->a:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/n;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0xfa1

    iget-object v2, p0, Lbd/n;->b:Lbd/m;

    invoke-static {v2}, Lbd/m;->a(Lbd/m;)Lcom/google/googlenav/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/Y;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
