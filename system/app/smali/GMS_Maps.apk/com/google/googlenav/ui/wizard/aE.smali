.class Lcom/google/googlenav/ui/wizard/aE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/hg;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aG;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aE;->b:Lcom/google/googlenav/ui/wizard/aB;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aE;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aE;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aG;->b()V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aE;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aG;->a()V

    return-void
.end method
