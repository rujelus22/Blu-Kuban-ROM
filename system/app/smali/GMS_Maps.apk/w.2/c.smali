.class public Lw/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:Lw/d;

.field c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lw/c;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lw/c;->b()V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lw/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_8
    iget-object v0, p0, Lw/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lw/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/d;

    iput-object v0, p0, Lw/c;->b:Lw/d;

    iget-object v0, p0, Lw/c;->b:Lw/d;

    invoke-virtual {v0}, Lw/d;->c()I

    move-result v0

    if-lez v0, :cond_8

    :cond_22
    :goto_22
    const/4 v0, 0x0

    iput v0, p0, Lw/c;->a:I

    return-void

    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lw/c;->b:Lw/d;

    goto :goto_22
.end method


# virtual methods
.method public a()Lw/e;
    .registers 4

    iget-object v0, p0, Lw/c;->b:Lw/d;

    iget v1, p0, Lw/c;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw/c;->a:I

    invoke-virtual {v0, v1}, Lw/d;->a(I)Lw/e;

    move-result-object v0

    iget v1, p0, Lw/c;->a:I

    iget-object v2, p0, Lw/c;->b:Lw/d;

    invoke-virtual {v2}, Lw/d;->c()I

    move-result v2

    if-lt v1, v2, :cond_19

    invoke-direct {p0}, Lw/c;->b()V

    :cond_19
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lw/c;->b:Lw/d;

    if-eqz v0, :cond_10

    iget v0, p0, Lw/c;->a:I

    iget-object v1, p0, Lw/c;->b:Lw/d;

    invoke-virtual {v1}, Lw/d;->c()I

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

    invoke-virtual {p0}, Lw/c;->a()Lw/e;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
