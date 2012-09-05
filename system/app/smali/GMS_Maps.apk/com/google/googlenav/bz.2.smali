.class Lcom/google/googlenav/bz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/by;


# direct methods
.method constructor <init>(Lcom/google/googlenav/by;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bz;->a:Lcom/google/googlenav/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "a"

    const-string v1, "f"

    invoke-static {v0, v1}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bz;->a:Lcom/google/googlenav/by;

    invoke-static {v1}, Lcom/google/googlenav/by;->a(Lcom/google/googlenav/by;)Lax/bq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/google/googlenav/bw;->b(Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "s"

    invoke-static {v0, v1}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/bz;->a:Lcom/google/googlenav/by;

    iget-object v0, v0, Lcom/google/googlenav/by;->a:Lcom/google/googlenav/bw;

    invoke-static {v0}, Lcom/google/googlenav/bw;->b(Lcom/google/googlenav/bw;)V

    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "a"

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bz;->a:Lcom/google/googlenav/by;

    invoke-static {v1}, Lcom/google/googlenav/by;->b(Lcom/google/googlenav/by;)Lax/bq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method
