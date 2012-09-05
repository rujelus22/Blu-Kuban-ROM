.class public Lcom/google/googlenav/ui/bF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/ai;


# instance fields
.field private final a:Lay/r;

.field private final b:Lah/f;


# direct methods
.method public constructor <init>(Lay/r;Lah/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/bF;->a:Lay/r;

    iput-object p2, p0, Lcom/google/googlenav/ui/bF;->b:Lah/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aj;)Lah/f;
    .registers 3

    check-cast p1, Lcom/google/googlenav/ui/bG;

    iget-object v0, p0, Lcom/google/googlenav/ui/bF;->a:Lay/r;

    invoke-virtual {v0, p1}, Lay/r;->a(Lcom/google/googlenav/ui/bG;)Lah/f;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/bF;->b:Lah/f;

    goto :goto_a
.end method

.method public a()Lay/r;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bF;->a:Lay/r;

    return-object v0
.end method
