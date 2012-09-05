.class Lcom/google/googlenav/ui/j;
.super Lbb/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/j;->a:Lcom/google/googlenav/ui/f;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/j;->a:Lcom/google/googlenav/ui/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/f;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/j;->a:Lcom/google/googlenav/ui/f;

    invoke-static {v1}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/f;)Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(LaY/Y;Z)V

    return v2
.end method
