.class public Lmx;
.super Lmp;
.source "a"


# instance fields
.field protected c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lfb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmt;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lmp;-><init>(Lmt;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lfb;)Lfb;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_b

    .line 563
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    .line 565
    :cond_b
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfb;

    return-object p0
.end method

.method public final a(Lez;Lhs;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Lez;->d()V

    .line 187
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_30

    .line 188
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lez;->a(Ljava/lang/String;)V

    .line 195
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmm;

    invoke-virtual {p0, p1, p2}, Lmm;->a(Lez;Lhs;)V

    goto :goto_11

    .line 198
    :cond_30
    invoke-virtual {p1}, Lez;->e()V

    .line 199
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    goto :goto_5
.end method

.method public final c()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lfb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_9

    invoke-static {}, Lmp$a;->a()Lmp$a;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 503
    if-ne p1, p0, :cond_6

    move v0, v4

    .line 524
    :goto_5
    return v0

    .line 504
    :cond_6
    if-nez p1, :cond_a

    move v0, v3

    goto :goto_5

    .line 505
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v3

    .line 506
    goto :goto_5

    .line 508
    :cond_16
    check-cast p1, Lmx;

    .line 509
    invoke-virtual {p1}, Lmx;->b()I

    move-result v0

    invoke-virtual {p0}, Lmx;->b()I

    move-result v1

    if-eq v0, v1, :cond_24

    move v0, v3

    .line 510
    goto :goto_5

    .line 512
    :cond_24
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_62

    .line 513
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 515
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfb;

    .line 517
    iget-object v2, p1, Lmx;->c:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_60

    iget-object v2, p1, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfb;

    .line 519
    :goto_56
    if-eqz v0, :cond_5e

    invoke-virtual {v0, p0}, Lfb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_5e
    move v0, v3

    .line 520
    goto :goto_5

    .line 517
    :cond_60
    const/4 v0, 0x0

    goto :goto_56

    :cond_62
    move v0, v4

    .line 524
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmx;->b()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 537
    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object v0, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_53

    .line 539
    const/4 v0, 0x0

    .line 540
    iget-object v2, p0, Lmx;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 541
    if-lez v0, :cond_34

    .line 542
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_34
    add-int/lit8 v3, v0, 0x1

    .line 545
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lmy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 546
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfb;

    invoke-virtual {p0}, Lfb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_21

    .line 550
    :cond_53
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
