.class Lcom/google/googlenav/ui/an;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ak;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->a(Lcom/google/googlenav/ui/ak;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_16

    :cond_a
    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, -0x1

    new-instance v2, Lcom/google/googlenav/ui/ao;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/ao;-><init>(Lcom/google/googlenav/ui/an;)V

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bj;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/ak;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/ak;->a(Lcom/google/googlenav/ui/ak;Z)Z

    goto :goto_15
.end method
