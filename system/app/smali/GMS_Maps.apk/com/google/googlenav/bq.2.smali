.class Lcom/google/googlenav/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/hu;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bq;->a:Lcom/google/googlenav/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bq;->a:Lcom/google/googlenav/bp;

    iget-object v0, v0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bl;

    invoke-static {v0}, Lcom/google/googlenav/bl;->b(Lcom/google/googlenav/bl;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bq;->a:Lcom/google/googlenav/bp;

    invoke-static {v1}, Lcom/google/googlenav/bp;->a(Lcom/google/googlenav/bp;)Lax/bq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method
