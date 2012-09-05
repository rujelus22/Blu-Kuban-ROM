.class LaY/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/bd;


# direct methods
.method constructor <init>(LaY/bd;)V
    .registers 2

    iput-object p1, p0, LaY/be;->a:LaY/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/y;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, LaY/be;->a:LaY/bd;

    iget-object v1, v1, LaY/bd;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v0, p0, LaY/be;->a:LaY/bd;

    invoke-static {v0}, LaY/bd;->a(LaY/bd;)V

    return-void
.end method
