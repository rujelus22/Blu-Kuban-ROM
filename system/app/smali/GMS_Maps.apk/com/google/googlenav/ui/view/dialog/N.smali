.class Lcom/google/googlenav/ui/view/dialog/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/L;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/L;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/N;->a:Lcom/google/googlenav/ui/view/dialog/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/N;->a:Lcom/google/googlenav/ui/view/dialog/L;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/L;->b:Lcom/google/googlenav/ui/view/dialog/K;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/K;->a(Lcom/google/googlenav/ui/view/dialog/K;)Lcom/google/googlenav/ui/view/dialog/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/O;->c()V

    return-void
.end method
