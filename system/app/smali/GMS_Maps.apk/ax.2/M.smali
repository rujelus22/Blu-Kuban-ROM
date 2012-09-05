.class Lax/M;
.super Ljava/lang/Object;

# interfaces
.implements LaI/e;


# instance fields
.field final synthetic a:Lax/L;


# direct methods
.method constructor <init>(Lax/L;)V
    .registers 2

    iput-object p1, p0, Lax/M;->a:Lax/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, LaI/c;->k()Z

    move-result v0

    invoke-static {v0}, LaY/bu;->a(Z)V

    iget-object v0, p0, Lax/M;->a:Lax/L;

    iget-object v0, v0, Lax/L;->a:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->J()V

    return-void
.end method
