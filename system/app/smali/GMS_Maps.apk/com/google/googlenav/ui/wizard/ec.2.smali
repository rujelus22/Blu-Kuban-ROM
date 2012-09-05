.class Lcom/google/googlenav/ui/wizard/ec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eb;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ec;->a:Lcom/google/googlenav/ui/wizard/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->a:Lcom/google/googlenav/ui/wizard/eb;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eb;->b:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->b(Lcom/google/googlenav/ui/wizard/dY;)LaR/i;

    move-result-object v0

    invoke-interface {v0}, LaR/i;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ec;->a:Lcom/google/googlenav/ui/wizard/eb;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eb;->b:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->d(Lcom/google/googlenav/ui/wizard/dY;)LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->n()V

    return-void
.end method
