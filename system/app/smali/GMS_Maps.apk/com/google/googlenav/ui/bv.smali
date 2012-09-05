.class Lcom/google/googlenav/ui/bv;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bu;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bv;->a:Lcom/google/googlenav/ui/bu;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->a:Lcom/google/googlenav/ui/bu;

    iget-object v0, v0, Lcom/google/googlenav/ui/bu;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->e()V

    return-void
.end method
