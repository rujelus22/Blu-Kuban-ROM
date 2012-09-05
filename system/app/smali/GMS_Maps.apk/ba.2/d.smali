.class public Lba/d;
.super Lba/a;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 5

    iget-object v0, p0, Lba/d;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/google/googlenav/D;->c()B

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    if-nez v1, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    iget-object v1, p0, Lba/d;->b:Lcom/google/googlenav/ui/bw;

    invoke-interface {v0}, Lcom/google/googlenav/D;->c()B

    move-result v0

    invoke-virtual {p0, p1}, Lba/d;->a(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/bw;->a(BZ)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_19
.end method
