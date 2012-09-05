.class Lbd/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbd/p;


# direct methods
.method constructor <init>(Lbd/p;Lcom/google/googlenav/ui/p;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lbd/q;->c:Lbd/p;

    iput-object p2, p0, Lbd/q;->a:Lcom/google/googlenav/ui/p;

    iput-object p3, p0, Lbd/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/q;->a:Lcom/google/googlenav/ui/p;

    const/4 v1, 0x5

    const/4 v2, -0x1

    iget-object v3, p0, Lbd/q;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
