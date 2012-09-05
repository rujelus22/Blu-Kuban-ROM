.class public Lcom/google/googlenav/ui/aB;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/w;


# instance fields
.field private a:LaJ/p;


# direct methods
.method public constructor <init>(LaJ/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/aB;->a:LaJ/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/aB;->a:LaJ/p;

    if-eqz v0, :cond_1f

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/aB;->a:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->n()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/googlenav/ui/bg;->bT:Lcom/google/googlenav/ui/bg;

    :goto_14
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbb/e;->a(Lcom/google/googlenav/ui/bh;)V

    :cond_1f
    return-void

    :cond_20
    sget-object v0, Lcom/google/googlenav/ui/bg;->bS:Lcom/google/googlenav/ui/bg;

    goto :goto_14
.end method
