.class Lcom/google/googlenav/ui/bx;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bx;->a:Lcom/google/googlenav/ui/bw;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    invoke-interface {v0}, Lah/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v0

    invoke-interface {v0}, Lah/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->i()Lah/g;

    move-result-object v0

    invoke-interface {v0}, Lah/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    return-void
.end method
