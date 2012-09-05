.class public Lax/at;
.super Lax/p;


# direct methods
.method public constructor <init>(Lax/bq;)V
    .registers 2

    invoke-direct {p0, p1}, Lax/p;-><init>(Lax/bq;)V

    return-void
.end method


# virtual methods
.method public c(Lam/b;)Z
    .registers 4

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    goto :goto_9
.end method
