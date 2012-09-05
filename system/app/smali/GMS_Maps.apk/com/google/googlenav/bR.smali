.class public Lcom/google/googlenav/bR;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bR;->a:Lam/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bR;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bR;->a:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bR;->a:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
