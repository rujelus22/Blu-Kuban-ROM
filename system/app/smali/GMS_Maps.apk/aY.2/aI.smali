.class LaY/aI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/aH;


# direct methods
.method constructor <init>(LaY/aH;)V
    .registers 2

    iput-object p1, p0, LaY/aI;->a:LaY/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, LaY/aI;->a:LaY/aH;

    iget-object v0, v0, LaY/aH;->a:Lcom/google/googlenav/aV;

    iget-object v1, p0, LaY/aI;->a:LaY/aH;

    iget-object v1, v1, LaY/aH;->c:LaY/aG;

    invoke-static {v1}, LaY/aG;->a(LaY/aG;)Lab/b;

    move-result-object v1

    invoke-virtual {v1}, Lab/b;->i()[Lcom/google/googlenav/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aV;->a([Lcom/google/googlenav/ah;)V

    const/4 v0, 0x1

    iget-object v1, p0, LaY/aI;->a:LaY/aH;

    iget-object v1, v1, LaY/aH;->c:LaY/aG;

    iget-object v2, p0, LaY/aI;->a:LaY/aH;

    iget-object v2, v2, LaY/aH;->a:Lcom/google/googlenav/aV;

    iget-object v3, p0, LaY/aI;->a:LaY/aH;

    iget-boolean v3, v3, LaY/aH;->b:Z

    invoke-static {v1, v2, v3, v0}, LaY/aG;->a(LaY/aG;Lcom/google/googlenav/aV;ZZ)V

    iget-object v0, p0, LaY/aI;->a:LaY/aH;

    iget-object v0, v0, LaY/aH;->c:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->R()V

    iget-object v0, p0, LaY/aI;->a:LaY/aH;

    iget-object v0, v0, LaY/aH;->c:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->h()V

    return-void
.end method
