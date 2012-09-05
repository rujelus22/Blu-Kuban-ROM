.class Lcom/google/googlenav/ui/wizard/cp;
.super Lap/b;


# instance fields
.field final synthetic a:Lax/aB;

.field final synthetic e:Lcom/google/googlenav/ui/wizard/co;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/co;Lap/c;Lax/aB;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cp;->e:Lcom/google/googlenav/ui/wizard/co;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cp;->a:Lax/aB;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cp;->e:Lcom/google/googlenav/ui/wizard/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cp;->a:Lax/aB;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/co;->b(Lax/aB;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cp;->e:Lcom/google/googlenav/ui/wizard/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cp;->a:Lax/aB;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/co;->a(Lcom/google/googlenav/ui/wizard/co;Lax/aB;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cp;->e:Lcom/google/googlenav/ui/wizard/co;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/co;->b(Lcom/google/googlenav/ui/wizard/co;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cq;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cq;-><init>(Lcom/google/googlenav/ui/wizard/cp;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
