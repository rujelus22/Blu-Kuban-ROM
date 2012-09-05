.class public abstract Lax/p;
.super Ljava/lang/Object;

# interfaces
.implements Lax/d;


# instance fields
.field private final a:Lax/bq;


# direct methods
.method public constructor <init>(Lax/bq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax/p;->a:Lax/bq;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lax/p;->a:Lax/bq;

    invoke-virtual {v0}, Lax/bq;->f()I

    move-result v0

    return v0
.end method

.method public a(Lam/b;)V
    .registers 2

    return-void
.end method

.method public b(Lam/b;)V
    .registers 3

    iget-object v0, p0, Lax/p;->a:Lax/bq;

    invoke-virtual {v0}, Lax/bq;->n()V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lax/p;->a:Lax/bq;

    invoke-virtual {v0}, Lax/bq;->r()Z

    move-result v0

    return v0
.end method
