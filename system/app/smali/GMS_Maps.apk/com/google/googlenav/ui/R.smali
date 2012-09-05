.class Lcom/google/googlenav/ui/R;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/R;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/f;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/R;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->y()V

    iget-object v0, p0, Lcom/google/googlenav/ui/R;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->D_()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/R;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v1}, Lcom/google/googlenav/ui/D;->f(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/S;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/S;-><init>(Lcom/google/googlenav/ui/R;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
