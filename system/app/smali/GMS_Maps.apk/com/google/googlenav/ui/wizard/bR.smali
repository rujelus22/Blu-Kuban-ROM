.class Lcom/google/googlenav/ui/wizard/bR;
.super Lap/b;


# instance fields
.field final synthetic a:Lam/b;

.field final synthetic e:Lcom/google/googlenav/ui/wizard/bU;

.field final synthetic f:Lcom/google/googlenav/ui/wizard/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bO;Lap/c;Lam/b;Lcom/google/googlenav/ui/wizard/bU;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bR;->f:Lcom/google/googlenav/ui/wizard/bO;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bR;->a:Lam/b;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/bR;->e:Lcom/google/googlenav/ui/wizard/bU;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bR;->a:Lam/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bR;->e:Lcom/google/googlenav/ui/wizard/bU;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bU;->a()I

    move-result v1

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bO;->a(Ljava/lang/String;)Lai/f;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bR;->f:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/bS;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/bS;-><init>(Lcom/google/googlenav/ui/wizard/bR;Lai/f;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
