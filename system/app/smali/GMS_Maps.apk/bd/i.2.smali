.class Lbd/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lbd/g;


# direct methods
.method constructor <init>(Lbd/g;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lbd/i;->b:Lbd/g;

    iput-object p2, p0, Lbd/i;->a:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/i;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x909

    const/4 v2, -0x1

    const-string v3, "it"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
