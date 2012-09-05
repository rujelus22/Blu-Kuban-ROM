.class public LaX/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/ai;


# instance fields
.field private final a:I

.field private final b:Lay/a;

.field private final c:Lax/aS;


# direct methods
.method public constructor <init>(Lay/a;Lax/aS;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaX/i;->b:Lay/a;

    iput-object p2, p0, LaX/i;->c:Lax/aS;

    iput p3, p0, LaX/i;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aj;)Lah/f;
    .registers 7

    check-cast p1, LaX/j;

    invoke-static {p1}, LaX/j;->a(LaX/j;)Ljava/lang/Long;

    move-result-object v1

    iget-object v0, p0, LaX/i;->b:Lay/a;

    new-instance v2, LaX/j;

    iget v3, p0, LaX/i;->a:I

    invoke-direct {v2, v1, v3}, LaX/j;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v0, v2}, Lay/a;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    if-nez v0, :cond_3c

    iget-object v2, p0, LaX/i;->c:Lax/aS;

    if-eqz v2, :cond_2f

    iget-object v2, p0, LaX/i;->c:Lax/aS;

    invoke-virtual {v2, v1}, Lax/aS;->a(Ljava/lang/Long;)Lax/aP;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v1}, Lax/aP;->m()Z

    move-result v1

    iget v2, p0, LaX/i;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(ZI)Lah/f;

    move-result-object v0

    :cond_2f
    if-nez v0, :cond_3c

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, LaX/i;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(ZI)Lah/f;

    move-result-object v0

    :cond_3c
    invoke-static {p1}, LaX/j;->b(LaX/j;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p1}, LaX/j;->b()Lah/f;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-static {p1}, LaX/j;->c(LaX/j;)Lah/f;

    move-result-object v1

    if-ne v1, v0, :cond_53

    invoke-virtual {p1}, LaX/j;->b()Lah/f;

    move-result-object v0

    :cond_52
    :goto_52
    return-object v0

    :cond_53
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    const v2, 0x7f020274

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bw;->a(I)Lah/f;

    move-result-object v1

    invoke-static {v1}, Lah/j;->d(Lah/f;)Lah/f;

    move-result-object v1

    invoke-interface {v1}, Lah/f;->a()I

    move-result v2

    invoke-interface {v0}, Lah/f;->a()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1}, Lah/f;->b()I

    move-result v3

    invoke-interface {v0}, Lah/f;->b()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v0}, Lah/f;->a()I

    invoke-interface {v0}, Lah/f;->b()I

    invoke-interface {v1}, Lah/f;->c()Lah/e;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Lah/e;->a(Lah/f;II)V

    invoke-static {p1, v0}, LaX/j;->a(LaX/j;Lah/f;)Lah/f;

    invoke-virtual {p1, v1}, LaX/j;->a(Lah/f;)V

    move-object v0, v1

    goto :goto_52
.end method
