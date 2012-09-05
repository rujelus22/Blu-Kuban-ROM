.class Lcom/google/googlenav/ui/wizard/gR;
.super Lax/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gQ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gQ;Lax/by;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gQ;

    invoke-direct {p0, p2}, Lax/a;-><init>(Lax/by;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gQ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gQ;->b:Lax/bz;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gQ;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gQ;->a:Lax/by;

    invoke-virtual {v1}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/bz;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gQ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gQ;->c:Lcom/google/googlenav/ui/wizard/gP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gP;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->e()V

    const/16 v0, 0x45

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method
