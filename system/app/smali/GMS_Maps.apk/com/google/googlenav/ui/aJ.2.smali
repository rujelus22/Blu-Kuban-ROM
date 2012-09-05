.class Lcom/google/googlenav/ui/aJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/aJ;->a:Lcom/google/googlenav/ui/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aJ;->a:Lcom/google/googlenav/ui/aH;

    iget-object v0, v0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/aJ;->a:Lcom/google/googlenav/ui/aH;

    iget-object v0, v0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/aJ;->a:Lcom/google/googlenav/ui/aH;

    iget-object v1, v1, Lcom/google/googlenav/ui/aH;->a:LaJ/B;

    invoke-virtual {v0, v1}, LaY/Y;->a(LaJ/B;)LaY/al;

    return-void
.end method
