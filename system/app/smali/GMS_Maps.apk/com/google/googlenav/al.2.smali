.class public Lcom/google/googlenav/al;
.super Lcom/google/googlenav/ap;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ap;-><init>(Lam/b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/al;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
