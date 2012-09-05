.class Lcom/google/googlenav/ui/wizard/aQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aP;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aQ;->a:Lcom/google/googlenav/ui/wizard/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aQ;->a:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aP;->a:Lcom/google/googlenav/ui/wizard/aO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aO;->d:Lcom/google/googlenav/ui/wizard/aM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aM;->b:Lcom/google/googlenav/ui/wizard/aS;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aQ;->a:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aP;->a:Lcom/google/googlenav/ui/wizard/aO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aO;->c:Lcom/google/googlenav/a;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aS;->a(Lcom/google/googlenav/a;)V

    return-void
.end method
