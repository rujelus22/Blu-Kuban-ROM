.class Lcom/google/googlenav/ui/wizard/eL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eL;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aV;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Z)V
    .registers 3

    return-void
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eL;->a:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eL;->a:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    :cond_1f
    return-void
.end method
