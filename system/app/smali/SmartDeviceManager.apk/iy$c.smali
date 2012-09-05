.class public final Liy$c;
.super Liy;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "c"
.end annotation


# instance fields
.field protected final g:Ljava/lang/String;

.field protected final h:Z

.field protected final i:Liy;

.field protected final j:Liy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Liy;Liy;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-virtual {p2}, Liy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Liy;->c()Lnd;

    move-result-object v1

    iget-object v2, p2, Liy;->d:Lht;

    invoke-direct {p0, v0, v1, v2}, Liy;-><init>(Ljava/lang/String;Lnd;Lht;)V

    .line 449
    iput-object p1, p0, Liy$c;->g:Ljava/lang/String;

    .line 450
    iput-object p2, p0, Liy$c;->i:Liy;

    .line 451
    iput-object p3, p0, Liy$c;->j:Liy;

    .line 452
    iput-boolean p4, p0, Liy$c;->h:Z

    .line 453
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Liy$c;->i:Liy;

    invoke-virtual {v0}, Liy;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfd;Lhc;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Liy$c;->i:Liy;

    invoke-virtual {v0, p1, p2}, Liy;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Liy$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Liy$c;->i:Liy;

    invoke-virtual {v0, p1, p2}, Liy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    if-eqz p2, :cond_95

    .line 478
    iget-boolean v0, p0, Liy$c;->h:Z

    if-eqz v0, :cond_90

    .line 479
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_21

    .line 480
    check-cast p2, [Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_95

    aget-object v2, p2, v1

    .line 481
    if-eqz v2, :cond_1e

    .line 482
    iget-object v3, p0, Liy$c;->j:Liy;

    invoke-virtual {v3, v2, p1}, Liy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 485
    :cond_21
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_3d

    .line 486
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_2b

    .line 488
    iget-object v2, p0, Liy$c;->j:Liy;

    invoke-virtual {v2, v1, p1}, Liy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    .line 491
    :cond_3d
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5d

    .line 492
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4b
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_4b

    .line 494
    iget-object v2, p0, Liy$c;->j:Liy;

    invoke-virtual {v2, v1, p1}, Liy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4b

    .line 498
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported container type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when resolving reference \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liy$c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_90
    iget-object v0, p0, Liy$c;->j:Liy;

    invoke-virtual {v0, p2, p1}, Liy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    :cond_95
    return-void
.end method
