.class Lbd/Z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lcom/google/googlenav/aO;

.field final synthetic c:Lbd/Y;


# direct methods
.method constructor <init>(Lbd/Y;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/aO;)V
    .registers 4

    iput-object p1, p0, Lbd/Z;->c:Lbd/Y;

    iput-object p2, p0, Lbd/Z;->a:Lcom/google/googlenav/ui/p;

    iput-object p3, p0, Lbd/Z;->b:Lcom/google/googlenav/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/16 v2, 0x11

    iget-object v0, p0, Lbd/Z;->a:Lcom/google/googlenav/ui/p;

    iget-object v1, p0, Lbd/Z;->b:Lcom/google/googlenav/aO;

    iget-object v1, v1, Lcom/google/googlenav/aO;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v2, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
