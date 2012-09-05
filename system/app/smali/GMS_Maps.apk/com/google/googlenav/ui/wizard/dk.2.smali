.class Lcom/google/googlenav/ui/wizard/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/I;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dg;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dk;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dg;Lcom/google/googlenav/ui/wizard/dh;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dk;-><init>(Lcom/google/googlenav/ui/wizard/dg;)V

    return-void
.end method


# virtual methods
.method public a(Lax/j;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dk;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lax/j;->a(Lam/b;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lax/j;->b(Lam/b;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/h;->a(ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dk;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/h;)V

    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_1b
.end method
