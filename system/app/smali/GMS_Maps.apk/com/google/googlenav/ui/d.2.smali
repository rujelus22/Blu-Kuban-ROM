.class public Lcom/google/googlenav/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/ai;


# instance fields
.field private a:Lah/f;

.field private b:Lah/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->q()Lah/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/d;->a:Lah/f;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->s()Lah/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/d;->b:Lah/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aj;)Lah/f;
    .registers 3

    check-cast p1, Lcom/google/googlenav/ui/e;

    invoke-static {p1}, Lcom/google/googlenav/ui/e;->a(Lcom/google/googlenav/ui/e;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/d;->a:Lah/f;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/d;->b:Lah/f;

    goto :goto_a
.end method
