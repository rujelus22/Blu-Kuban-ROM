.class LaY/aJ;
.super Lbb/b;


# instance fields
.field final synthetic a:LaY/aG;


# direct methods
.method constructor <init>(LaY/aG;)V
    .registers 2

    iput-object p1, p0, LaY/aJ;->a:LaY/aG;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 5

    iget-object v0, p0, LaY/aJ;->a:LaY/aG;

    invoke-static {v0}, LaY/aG;->e(LaY/aG;)V

    iget-object v0, p0, LaY/aJ;->a:LaY/aG;

    iget-object v0, v0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    iget-object v1, p0, LaY/aJ;->a:LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, LaY/Y;->a(Lcom/google/googlenav/aV;I)V

    const/4 v0, 0x1

    return v0
.end method
