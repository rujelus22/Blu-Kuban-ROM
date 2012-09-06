.class public abstract Lcom/google/googlenav/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bd;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:I

.field final synthetic c:Lcom/google/googlenav/ui/ah;

.field private volatile d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/ah;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x2

    .line 305
    iput-object p1, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput v0, p0, Lcom/google/googlenav/ui/ao;->b:I

    .line 303
    iput v0, p0, Lcom/google/googlenav/ui/ao;->d:I

    .line 306
    iput-object p2, p0, Lcom/google/googlenav/ui/ao;->a:Ljava/lang/String;

    .line 307
    return-void
.end method

.method private e()V
    .registers 7

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x1

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->g(Lcom/google/googlenav/ui/ah;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ao;

    .line 342
    iget v3, v0, Lcom/google/googlenav/ui/ao;->b:I

    if-eq v3, v4, :cond_20

    iget v0, v0, Lcom/google/googlenav/ui/ao;->d:I

    if-ne v0, v4, :cond_c

    .line 373
    :cond_20
    :goto_20
    return-void

    .line 350
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/ah;->a(Lcom/google/googlenav/ui/ah;Z)Z

    .line 352
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    invoke-static {v1}, Lcom/google/googlenav/ui/ah;->g(Lcom/google/googlenav/ui/ah;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ao;

    .line 354
    iget v4, v0, Lcom/google/googlenav/ui/ao;->b:I

    iget v5, v0, Lcom/google/googlenav/ui/ao;->d:I

    if-eq v4, v5, :cond_66

    .line 357
    iget v4, v0, Lcom/google/googlenav/ui/ao;->b:I

    if-ne v4, v2, :cond_4e

    .line 361
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ao;->d()V

    move v0, v1

    :goto_4c
    move v1, v0

    .line 365
    goto :goto_32

    :cond_4e
    move v0, v2

    goto :goto_4c

    .line 370
    :cond_50
    if-nez v1, :cond_5a

    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->a(Lcom/google/googlenav/ui/ah;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 371
    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    invoke-static {v1}, Lcom/google/googlenav/ui/ah;->a(Lcom/google/googlenav/ui/ah;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/ah;->b(Lcom/google/googlenav/ui/ah;Z)V

    goto :goto_20

    :cond_66
    move v0, v1

    goto :goto_4c
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->c:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->g(Lcom/google/googlenav/ui/ah;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 327
    :try_start_7
    iput p1, p0, Lcom/google/googlenav/ui/ao;->d:I

    .line 328
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ao;->a()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/ao;->b:I

    .line 329
    invoke-direct {p0}, Lcom/google/googlenav/ui/ao;->e()V

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 386
    iget v0, p0, Lcom/google/googlenav/ui/ao;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 387
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_16
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()V
    .registers 3

    .prologue
    const/4 v0, -0x2

    .line 313
    iput v0, p0, Lcom/google/googlenav/ui/ao;->b:I

    .line 314
    iput v0, p0, Lcom/google/googlenav/ui/ao;->d:I

    .line 318
    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    .line 319
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ao;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 380
    return-void
.end method
