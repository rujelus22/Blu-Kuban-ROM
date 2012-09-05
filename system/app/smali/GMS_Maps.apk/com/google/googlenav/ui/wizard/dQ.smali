.class Lcom/google/googlenav/ui/wizard/dQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbb/m;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dP;Lbb/m;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dQ;->b:Lcom/google/googlenav/ui/wizard/dP;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dQ;->a:Lbb/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dQ;->b:Lcom/google/googlenav/ui/wizard/dP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dQ;->b:Lcom/google/googlenav/ui/wizard/dP;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/wizard/dP;->d:Z

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dQ;->b:Lcom/google/googlenav/ui/wizard/dP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dS;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dQ;->a:Lbb/m;

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dO;ZLcom/google/googlenav/ui/wizard/dS;Lbb/m;)V

    return-void
.end method
