.class Lcom/google/googlenav/ui/wizard/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dZ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dZ;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ea;->a:Lcom/google/googlenav/ui/wizard/dZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ea;->a:Lcom/google/googlenav/ui/wizard/dZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dZ;->c:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->b(Lcom/google/googlenav/ui/wizard/dY;)LaR/i;

    move-result-object v0

    invoke-interface {v0}, LaR/i;->b()V

    return-void
.end method
