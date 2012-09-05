.class Lbd/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lbd/g;


# direct methods
.method constructor <init>(Lbd/g;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lbd/h;->b:Lbd/g;

    iput-object p2, p0, Lbd/h;->a:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v1, p0, Lbd/h;->a:Lcom/google/googlenav/ui/p;

    iget-object v0, p0, Lbd/h;->b:Lbd/g;

    invoke-static {v0}, Lbd/g;->a(Lbd/g;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bN()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x843

    :goto_10
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void

    :cond_16
    const/16 v0, 0x834

    goto :goto_10
.end method
