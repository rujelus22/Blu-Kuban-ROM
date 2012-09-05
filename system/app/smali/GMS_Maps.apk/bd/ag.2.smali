.class Lbd/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lbd/ae;


# direct methods
.method constructor <init>(Lbd/ae;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lbd/ag;->b:Lbd/ae;

    iput-object p2, p0, Lbd/ag;->a:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/ag;->a:Lcom/google/googlenav/ui/p;

    sget-object v1, Lbd/ae;->b:Lbb/a;

    invoke-virtual {v1}, Lbb/a;->a()I

    move-result v1

    sget-object v2, Lbd/ae;->b:Lbb/a;

    invoke-virtual {v2}, Lbb/a;->b()I

    move-result v2

    sget-object v3, Lbd/ae;->b:Lbb/a;

    invoke-virtual {v3}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
