.class Lcom/google/googlenav/ui/i;
.super Lbb/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/i;->a:Lcom/google/googlenav/ui/f;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/ui/i;->a:Lcom/google/googlenav/ui/f;

    invoke-static {v1}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/f;)Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->b(I)V

    const/4 v0, 0x1

    return v0
.end method
