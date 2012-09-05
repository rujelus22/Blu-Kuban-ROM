.class public Lcom/google/googlenav/layer/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/googlenav/layer/m;

.field private final f:I


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    invoke-static {p1, v1, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/e;->b:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->d:Ljava/lang/String;

    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/e;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->d:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/layer/e;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/layer/e;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/layer/m;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/layer/e;->e:Lcom/google/googlenav/layer/m;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/e;->f:I

    return v0
.end method

.method public d()Lcom/google/googlenav/layer/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/e;->e:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method public e()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/layer/e;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public f()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/layer/e;->b:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/r;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/layer/e;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_21
    iget-object v1, p0, Lcom/google/googlenav/layer/e;->d:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/layer/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_2f
    iget v1, p0, Lcom/google/googlenav/layer/e;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlenav/layer/e;->f:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_3a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "categoryId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/layer/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
