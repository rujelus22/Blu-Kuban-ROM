.class Lcom/google/googlenav/ui/wizard/eD;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eD;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eD;->a:Lcom/google/googlenav/ui/wizard/eA;

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/eA;->a:Lcom/google/googlenav/a;

    :cond_7
    :goto_7
    return-void

    :cond_8
    new-instance v0, Lax/aS;

    invoke-direct {v0, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eD;->a:Lcom/google/googlenav/ui/wizard/eA;

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/eA;->a:Lcom/google/googlenav/a;

    goto :goto_7

    :cond_18
    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v1

    invoke-virtual {v1}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eD;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    invoke-virtual {v0}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/eA;->a:Lcom/google/googlenav/a;

    goto :goto_7
.end method
