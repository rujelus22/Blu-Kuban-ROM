.class Lax/H;
.super Ljava/lang/Object;

# interfaces
.implements Lax/ai;


# instance fields
.field final synthetic a:Lax/x;


# direct methods
.method constructor <init>(Lax/x;)V
    .registers 2

    iput-object p1, p0, Lax/H;->a:Lax/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a([Lam/b;)V
    .registers 3

    iget-object v0, p0, Lax/H;->a:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->az()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lax/H;->a:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0, p1}, LaY/K;->a([Lam/b;)V

    :cond_15
    return-void
.end method
