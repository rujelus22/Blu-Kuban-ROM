.class Lt/K;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ar;


# instance fields
.field final synthetic a:Lt/I;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lt/I;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lt/K;->a:Lt/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lt/K;->b:I

    iput v0, p0, Lt/K;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lt/I;Lt/J;)V
    .registers 3

    invoke-direct {p0, p1}, Lt/K;-><init>(Lt/I;)V

    return-void
.end method


# virtual methods
.method public a()Lt/l;
    .registers 4

    iget-object v0, p0, Lt/K;->a:Lt/I;

    invoke-static {v0}, Lt/I;->a(Lt/I;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lt/K;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt/K;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    return-object v0
.end method

.method public b()Lt/l;
    .registers 3

    iget-object v0, p0, Lt/K;->a:Lt/I;

    invoke-static {v0}, Lt/I;->a(Lt/I;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lt/K;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    return-object v0
.end method

.method public c()V
    .registers 2

    iget v0, p0, Lt/K;->b:I

    iput v0, p0, Lt/K;->c:I

    return-void
.end method

.method public d()V
    .registers 2

    iget v0, p0, Lt/K;->c:I

    iput v0, p0, Lt/K;->b:I

    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lt/K;->b:I

    iget-object v1, p0, Lt/K;->a:Lt/I;

    invoke-static {v1}, Lt/I;->a(Lt/I;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lt/K;->a()Lt/l;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
