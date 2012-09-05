.class Lbd/O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lbd/N;


# direct methods
.method constructor <init>(Lbd/N;Lcom/google/googlenav/ui/p;ILjava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lbd/O;->d:Lbd/N;

    iput-object p2, p0, Lbd/O;->a:Lcom/google/googlenav/ui/p;

    iput p3, p0, Lbd/O;->b:I

    iput-object p4, p0, Lbd/O;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/O;->a:Lcom/google/googlenav/ui/p;

    iget v1, p0, Lbd/O;->b:I

    const/4 v2, -0x1

    iget-object v3, p0, Lbd/O;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
