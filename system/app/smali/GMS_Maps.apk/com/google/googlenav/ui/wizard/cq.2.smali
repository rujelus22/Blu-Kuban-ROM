.class Lcom/google/googlenav/ui/wizard/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cq;->a:Lcom/google/googlenav/ui/wizard/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cq;->a:Lcom/google/googlenav/ui/wizard/cp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cp;->e:Lcom/google/googlenav/ui/wizard/co;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/co;->a(Lcom/google/googlenav/ui/wizard/co;)Lcom/google/googlenav/ui/wizard/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cq;->a:Lcom/google/googlenav/ui/wizard/cp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/cp;->a:Lax/aB;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/cs;->a(Lax/aB;)V

    return-void
.end method
