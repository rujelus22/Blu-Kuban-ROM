.class final Laeb;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic a:LadZ;

.field private a:Z


# direct methods
.method constructor <init>(LadZ;)V
    .registers 2
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Laeb;->a:LadZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 378
    iget v0, p0, Laeb;->a:I

    .line 379
    iget-object v1, p0, Laeb;->a:LadZ;

    iget v1, v1, LadZ;->a:I

    if-ne v0, v1, :cond_e

    .line 380
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 382
    :cond_e
    iget v1, p0, Laeb;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laeb;->a:I

    .line 383
    new-instance v1, Laea;

    iget-object v2, p0, Laeb;->a:LadZ;

    invoke-direct {v1, v2, v0}, Laea;-><init>(LadZ;I)V

    return-object v1
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 374
    iget v0, p0, Laeb;->a:I

    iget-object v1, p0, Laeb;->a:LadZ;

    iget v1, v1, LadZ;->a:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 368
    invoke-virtual {p0}, Laeb;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 387
    iget v0, p0, Laeb;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 388
    iget-boolean v1, p0, Laeb;->a:Z

    if-nez v1, :cond_a

    if-gez v0, :cond_10

    .line 389
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 391
    :cond_10
    iget-object v1, p0, Laeb;->a:LadZ;

    invoke-virtual {v1, v0}, LadZ;->c(I)Ljava/lang/Object;

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Laeb;->a:Z

    .line 393
    return-void
.end method
