.class public Lcom/google/googlenav/layer/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:LaJ/B;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:[Lcom/google/googlenav/layer/o;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 8

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v2}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/j;->a:I

    invoke-virtual {p1, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v1, v5}, Lam/b;->d(I)I

    move-result v3

    invoke-virtual {v1, v4}, Lam/b;->d(I)I

    move-result v1

    invoke-static {v2, v3, v1}, LaJ/B;->a(III)LaJ/B;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/layer/j;->b:LaJ/B;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/j;->c:I

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/j;->d:I

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/google/googlenav/layer/j;->e:I

    const/16 v1, 0x23

    iget v2, p0, Lcom/google/googlenav/layer/j;->e:I

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/j;->f:I

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/layer/j;->g:I

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v1

    new-array v0, v1, [Lcom/google/googlenav/layer/o;

    iput-object v0, p0, Lcom/google/googlenav/layer/j;->h:[Lcom/google/googlenav/layer/o;

    const/4 v0, 0x0

    :goto_5d
    if-ge v0, v1, :cond_6f

    iget-object v2, p0, Lcom/google/googlenav/layer/j;->h:[Lcom/google/googlenav/layer/o;

    new-instance v3, Lcom/google/googlenav/layer/o;

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/o;-><init>(Lam/b;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6f
    return-void
.end method


# virtual methods
.method public a()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/j;->b:LaJ/B;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/j;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/j;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/j;->e:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/j;->f:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/j;->g:I

    return v0
.end method

.method public g()[Lcom/google/googlenav/layer/o;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/j;->h:[Lcom/google/googlenav/layer/o;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CenterPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/j;->b:LaJ/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/j;->h:[Lcom/google/googlenav/layer/o;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
