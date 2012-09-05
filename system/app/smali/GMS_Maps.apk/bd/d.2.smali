.class Lbd/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbd/a;


# direct methods
.method constructor <init>(Lbd/a;)V
    .registers 2

    iput-object p1, p0, Lbd/d;->a:Lbd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lbd/d;->a:Lbd/a;

    invoke-static {v0}, Lbd/a;->a(Lbd/a;)Lcom/google/googlenav/ui/wizard/bO;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/wizard/hh;->b:Lcom/google/googlenav/ui/wizard/hh;

    iget-object v2, p0, Lbd/d;->a:Lbd/a;

    invoke-static {v2}, Lbd/a;->b(Lbd/a;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bO;->a(Lcom/google/googlenav/ui/wizard/hh;Lam/b;)V

    return-void
.end method
