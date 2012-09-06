.class Ln/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/aI;


# instance fields
.field final synthetic a:Ln/M;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Ln/M;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    iput-object p1, p0, Ln/O;->a:Ln/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput v0, p0, Ln/O;->b:I

    .line 224
    iput v0, p0, Ln/O;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ln/M;Ln/N;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1}, Ln/O;-><init>(Ln/M;)V

    return-void
.end method


# virtual methods
.method public a()Ln/l;
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Ln/O;->a:Ln/M;

    invoke-static {v0}, Ln/M;->a(Ln/M;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Ln/O;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln/O;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    return-object v0
.end method

.method public b()Ln/l;
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Ln/O;->a:Ln/M;

    invoke-static {v0}, Ln/M;->a(Ln/M;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Ln/O;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Ln/O;->b:I

    iput v0, p0, Ln/O;->c:I

    .line 250
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Ln/O;->c:I

    iput v0, p0, Ln/O;->b:I

    .line 255
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Ln/O;->b:I

    iget-object v1, p0, Ln/O;->a:Ln/M;

    invoke-static {v1}, Ln/M;->a(Ln/M;)Ljava/util/ArrayList;

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

    .prologue
    .line 219
    invoke-virtual {p0}, Ln/O;->a()Ln/l;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
