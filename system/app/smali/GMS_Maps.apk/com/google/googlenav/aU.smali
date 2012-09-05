.class public Lcom/google/googlenav/aU;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:I

.field private final c:Lam/b;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;Lam/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/aU;->b:I

    iput-object p2, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/aU;->c:Lam/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public b()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aU;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aU;->c:Lam/b;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/aU;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/aU;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aU;->c:Lam/b;

    return-object v0
.end method
