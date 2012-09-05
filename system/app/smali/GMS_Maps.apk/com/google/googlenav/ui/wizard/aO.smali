.class Lcom/google/googlenav/ui/wizard/aO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bY;


# instance fields
.field final synthetic a:Lax/aP;

.field final synthetic b:Lcom/google/googlenav/E;

.field final synthetic c:Lcom/google/googlenav/a;

.field final synthetic d:Lcom/google/googlenav/ui/wizard/aM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aM;Lax/aP;Lcom/google/googlenav/E;Lcom/google/googlenav/a;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aO;->d:Lcom/google/googlenav/ui/wizard/aM;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aO;->a:Lax/aP;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aO;->b:Lcom/google/googlenav/E;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/aO;->c:Lcom/google/googlenav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 7

    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aO;->d:Lcom/google/googlenav/ui/wizard/aM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aO;->d:Lcom/google/googlenav/ui/wizard/aM;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aM;->b:Lcom/google/googlenav/ui/wizard/aS;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/ui/wizard/aS;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aO;->a:Lax/aP;

    invoke-virtual {v0}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aO;->d:Lcom/google/googlenav/ui/wizard/aM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aL;->b(Lcom/google/googlenav/ui/wizard/aL;)LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aO;->b:Lcom/google/googlenav/E;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/googlenav/ui/wizard/aP;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/aP;-><init>(Lcom/google/googlenav/ui/wizard/aO;)V

    invoke-virtual {v0, v1, v2, v3, v4}, LaY/a;->a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V

    goto :goto_d
.end method
