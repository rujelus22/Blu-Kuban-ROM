.class Lax/L;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lax/x;


# direct methods
.method constructor <init>(Lax/x;)V
    .registers 2

    iput-object p1, p0, Lax/L;->a:Lax/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    invoke-static {}, LaY/bu;->c()V

    new-instance v0, Lax/M;

    invoke-direct {v0, p0}, Lax/M;-><init>(Lax/L;)V

    invoke-static {v0}, LaI/c;->a(LaI/e;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    invoke-static {}, LaY/bu;->d()V

    const/4 v0, 0x1

    iget-object v1, p0, Lax/L;->a:Lax/x;

    invoke-static {v1}, Lax/x;->d(Lax/x;)LaX/g;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, LaX/g;->a(Ljava/lang/Boolean;Z)V

    iget-object v0, p0, Lax/L;->a:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->J()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    invoke-static {}, LaY/bu;->e()V

    return-void
.end method
