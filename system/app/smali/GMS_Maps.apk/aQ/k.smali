.class LaQ/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/actionbar/b;


# instance fields
.field final synthetic a:LaQ/g;


# direct methods
.method constructor <init>(LaQ/g;)V
    .registers 2

    iput-object p1, p0, LaQ/k;->a:LaQ/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/bb;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v1, 0x40a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
