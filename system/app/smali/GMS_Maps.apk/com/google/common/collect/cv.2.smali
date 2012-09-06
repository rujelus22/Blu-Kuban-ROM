.class Lcom/google/common/collect/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/ct;

.field d:Lcom/google/common/collect/ct;

.field e:Lcom/google/common/collect/ct;

.field final synthetic f:Lcom/google/common/collect/cj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cj;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/common/collect/cv;->f:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/google/common/collect/cv;->a:Ljava/lang/Object;

    .line 338
    invoke-static {p1}, Lcom/google/common/collect/cj;->b(Lcom/google/common/collect/cj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    .line 339
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/cj;Ljava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/common/collect/cv;->f:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    invoke-static {p1}, Lcom/google/common/collect/cj;->c(Lcom/google/common/collect/cj;)Lcom/google/common/collect/cM;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/common/collect/cM;->a(Ljava/lang/Object;)I

    move-result v1

    .line 352
    invoke-static {p3, v1}, Lcom/google/common/base/P;->b(II)I

    .line 353
    div-int/lit8 v0, v1, 0x2

    if-lt p3, v0, :cond_2b

    .line 354
    invoke-static {p1}, Lcom/google/common/collect/cj;->d(Lcom/google/common/collect/cj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    .line 355
    iput v1, p0, Lcom/google/common/collect/cv;->b:I

    .line 356
    :goto_22
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_40

    .line 357
    invoke-virtual {p0}, Lcom/google/common/collect/cv;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_22

    .line 360
    :cond_2b
    invoke-static {p1}, Lcom/google/common/collect/cj;->b(Lcom/google/common/collect/cj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    .line 361
    :goto_37
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_40

    .line 362
    invoke-virtual {p0}, Lcom/google/common/collect/cv;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_37

    .line 365
    :cond_40
    iput-object p2, p0, Lcom/google/common/collect/cv;->a:Ljava/lang/Object;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    .line 367
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/common/collect/cv;->f:Lcom/google/common/collect/cj;

    iget-object v1, p0, Lcom/google/common/collect/cv;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/cj;->a(Lcom/google/common/collect/cj;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ct;)Lcom/google/common/collect/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    .line 430
    iget v0, p0, Lcom/google/common/collect/cv;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/cv;->b:I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    .line 432
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    invoke-static {v0}, Lcom/google/common/collect/cj;->e(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    .line 378
    iget-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    .line 379
    iget v0, p0, Lcom/google/common/collect/cv;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/cv;->b:I

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/common/collect/cv;->b:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    invoke-static {v0}, Lcom/google/common/collect/cj;->e(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    .line 392
    iget-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    .line 393
    iget v0, p0, Lcom/google/common/collect/cv;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/cv;->b:I

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 404
    iget v0, p0, Lcom/google/common/collect/cv;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 410
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iget-object v1, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    if-eq v0, v1, :cond_27

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->e:Lcom/google/common/collect/ct;

    .line 412
    iget v0, p0, Lcom/google/common/collect/cv;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/cv;->b:I

    .line 416
    :goto_1a
    iget-object v0, p0, Lcom/google/common/collect/cv;->f:Lcom/google/common/collect/cj;

    iget-object v1, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    invoke-static {v0, v1}, Lcom/google/common/collect/cj;->a(Lcom/google/common/collect/cj;Lcom/google/common/collect/ct;)V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    .line 418
    return-void

    .line 409
    :cond_25
    const/4 v0, 0x0

    goto :goto_5

    .line 414
    :cond_27
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cv;->c:Lcom/google/common/collect/ct;

    goto :goto_1a
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iput-object p1, v0, Lcom/google/common/collect/ct;->b:Ljava/lang/Object;

    .line 424
    return-void

    .line 422
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method
