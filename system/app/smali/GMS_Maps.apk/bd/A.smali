.class Lbd/A;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lbd/C;

.field final synthetic c:Lam/b;

.field final synthetic d:Lbd/x;


# direct methods
.method constructor <init>(Lbd/x;Lcom/google/googlenav/ui/p;Lbd/C;Lam/b;)V
    .registers 5

    iput-object p1, p0, Lbd/A;->d:Lbd/x;

    iput-object p2, p0, Lbd/A;->a:Lcom/google/googlenav/ui/p;

    iput-object p3, p0, Lbd/A;->b:Lbd/C;

    iput-object p4, p0, Lbd/A;->c:Lam/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/A;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x906

    iget-object v2, p0, Lbd/A;->b:Lbd/C;

    iget v2, v2, Lbd/C;->i:I

    iget-object v3, p0, Lbd/A;->c:Lam/b;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
