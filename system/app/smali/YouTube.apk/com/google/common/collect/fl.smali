.class final Lcom/google/common/collect/fl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:I

.field b:Lcom/google/common/collect/fk;

.field c:Lcom/google/common/collect/fk;

.field d:Lcom/google/common/collect/fk;

.field final synthetic e:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/common/collect/fl;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    .line 287
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/common/collect/fl;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v1

    .line 290
    invoke-static {p2, v1}, Lcom/google/common/base/ag;->b(II)I

    .line 291
    div-int/lit8 v0, v1, 0x2

    if-lt p2, v0, :cond_21

    .line 292
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    .line 293
    iput v1, p0, Lcom/google/common/collect/fl;->a:I

    .line 294
    :goto_18
    add-int/lit8 v0, p2, 0x1

    if-ge p2, v1, :cond_30

    .line 295
    invoke-virtual {p0}, Lcom/google/common/collect/fl;->b()Lcom/google/common/collect/fk;

    move p2, v0

    goto :goto_18

    .line 298
    :cond_21
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    .line 299
    :goto_27
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_30

    .line 300
    invoke-virtual {p0}, Lcom/google/common/collect/fl;->a()Lcom/google/common/collect/fk;

    move p2, v0

    goto :goto_27

    .line 303
    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    .line 304
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/fk;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    .line 313
    iget-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    .line 314
    iget v0, p0, Lcom/google/common/collect/fl;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fl;->a:I

    .line 315
    iget-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    return-object v0
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/google/common/collect/fk;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    .line 337
    iget-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    .line 338
    iget v0, p0, Lcom/google/common/collect/fl;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fl;->a:I

    .line 339
    iget-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/common/collect/fl;->a()Lcom/google/common/collect/fk;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/google/common/collect/fl;->a:I

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/common/collect/fl;->b()Lcom/google/common/collect/fk;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Lcom/google/common/collect/fl;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    iget-object v1, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    if-eq v0, v1, :cond_27

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->d:Lcom/google/common/collect/fk;

    .line 322
    iget v0, p0, Lcom/google/common/collect/fl;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fl;->a:I

    .line 326
    :goto_1a
    iget-object v0, p0, Lcom/google/common/collect/fl;->e:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/fk;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fk;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    .line 328
    return-void

    .line 319
    :cond_25
    const/4 v0, 0x0

    goto :goto_5

    .line 324
    :cond_27
    iget-object v0, p0, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fk;

    goto :goto_1a
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
