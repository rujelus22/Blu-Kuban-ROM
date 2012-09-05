.class Lcom/google/googlenav/ui/wizard/dX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dU;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dX;->a:Lcom/google/googlenav/ui/wizard/dU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->a:Lcom/google/googlenav/ui/wizard/dU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dO;->a()V

    return-void
.end method
