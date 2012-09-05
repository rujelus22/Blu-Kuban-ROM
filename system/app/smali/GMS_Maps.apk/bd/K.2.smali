.class Lbd/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:I

.field final b:I

.field final synthetic c:Lbd/I;


# direct methods
.method constructor <init>(Lbd/I;II)V
    .registers 4

    iput-object p1, p0, Lbd/K;->c:Lbd/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lbd/K;->a:I

    iput p3, p0, Lbd/K;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/K;->c:Lbd/I;

    invoke-static {v0}, Lbd/I;->a(Lbd/I;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    iget v1, p0, Lbd/K;->a:I

    iget v2, p0, Lbd/K;->b:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
