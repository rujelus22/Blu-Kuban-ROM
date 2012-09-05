.class Lbd/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lbd/x;


# direct methods
.method constructor <init>(Lbd/x;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lbd/y;->b:Lbd/x;

    iput-object p2, p0, Lbd/y;->a:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/y;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x2cf

    const/16 v2, 0x13

    iget-object v3, p0, Lbd/y;->b:Lbd/x;

    invoke-static {v3}, Lbd/x;->b(Lbd/x;)Lbd/G;

    move-result-object v3

    iget-object v3, v3, Lbd/G;->a:Ljava/lang/String;

    invoke-static {v3}, LaY/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
