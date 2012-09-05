.class final Lcom/google/api/client/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/api/client/util/a;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/api/client/util/a;)V
    .registers 2
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/api/client/util/c;->a:Lcom/google/api/client/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 374
    iget v0, p0, Lcom/google/api/client/util/c;->c:I

    iget-object v1, p0, Lcom/google/api/client/util/c;->a:Lcom/google/api/client/util/a;

    iget v1, v1, Lcom/google/api/client/util/a;->a:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 368
    iget v0, p0, Lcom/google/api/client/util/c;->c:I

    iget-object v1, p0, Lcom/google/api/client/util/c;->a:Lcom/google/api/client/util/a;

    iget v1, v1, Lcom/google/api/client/util/a;->a:I

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_e
    iget v1, p0, Lcom/google/api/client/util/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/api/client/util/c;->c:I

    new-instance v1, Lcom/google/api/client/util/b;

    iget-object v2, p0, Lcom/google/api/client/util/c;->a:Lcom/google/api/client/util/a;

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/util/b;-><init>(Lcom/google/api/client/util/a;I)V

    return-object v1
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 387
    iget v0, p0, Lcom/google/api/client/util/c;->c:I

    add-int/lit8 v0, v0, -0x1

    .line 388
    iget-boolean v1, p0, Lcom/google/api/client/util/c;->b:Z

    if-nez v1, :cond_a

    if-gez v0, :cond_10

    .line 389
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 391
    :cond_10
    iget-object v1, p0, Lcom/google/api/client/util/c;->a:Lcom/google/api/client/util/a;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/a;->c(I)Ljava/lang/Object;

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/util/c;->b:Z

    .line 393
    return-void
.end method
