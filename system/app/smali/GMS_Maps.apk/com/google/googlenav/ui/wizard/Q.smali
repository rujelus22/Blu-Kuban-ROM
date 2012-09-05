.class Lcom/google/googlenav/ui/wizard/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/P;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/Q;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aV;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Z)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->q()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x66

    const-string v1, "a"

    const-string v2, "z"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 v0, 0x25

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aV;->b(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 2

    return-void
.end method
