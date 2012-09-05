.class Lbd/af;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bG;

.field final synthetic b:Lbd/ae;


# direct methods
.method constructor <init>(Lbd/ae;Lcom/google/googlenav/ui/bG;)V
    .registers 3

    iput-object p1, p0, Lbd/af;->b:Lbd/ae;

    iput-object p2, p0, Lbd/af;->a:Lcom/google/googlenav/ui/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 3

    iget-object v0, p0, Lbd/af;->b:Lbd/ae;

    iget-object v1, p0, Lbd/af;->a:Lcom/google/googlenav/ui/bG;

    invoke-virtual {v0, v1}, Lbd/ae;->a(Lcom/google/googlenav/ui/bG;)V

    return-void
.end method
