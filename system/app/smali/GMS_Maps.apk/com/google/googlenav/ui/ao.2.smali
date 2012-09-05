.class Lcom/google/googlenav/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/an;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/an;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/ao;->a:Lcom/google/googlenav/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->a:Lcom/google/googlenav/ui/an;

    iget-object v0, v0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->b(Lcom/google/googlenav/ui/ak;)V

    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->a:Lcom/google/googlenav/ui/an;

    iget-object v0, v0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/ak;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/ak;->a(Lcom/google/googlenav/ui/ak;Z)Z

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->a:Lcom/google/googlenav/ui/an;

    iget-object v0, v0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->c(Lcom/google/googlenav/ui/ak;)V

    goto :goto_18
.end method
