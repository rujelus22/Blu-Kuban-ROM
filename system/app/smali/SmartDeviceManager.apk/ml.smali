.class public final Lml;
.super Lmp;
.source "a"


# instance fields
.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmt;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lmp;-><init>(Lmt;)V

    return-void
.end method


# virtual methods
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
    .line 77
    invoke-virtual {p1}, Lez;->b()V

    .line 78
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 79
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfb;

    .line 85
    check-cast p0, Lmm;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lmm;->a(Lez;Lhs;)V

    goto :goto_d

    .line 88
    :cond_20
    invoke-virtual {p1}, Lez;->c()V

    .line 89
    return-void
.end method

.method public final a(Lfb;)V
    .registers 3
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    .line 567
    :cond_b
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    .line 40
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Lmp$a;->a()Lmp$a;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 501
    if-ne p1, p0, :cond_6

    move v0, v5

    .line 510
    :goto_5
    return v0

    .line 502
    :cond_6
    if-nez p1, :cond_a

    move v0, v4

    goto :goto_5

    .line 503
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v4

    .line 504
    goto :goto_5

    .line 506
    :cond_16
    check-cast p1, Lml;

    .line 507
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 508
    :cond_24
    invoke-virtual {p1}, Lml;->b()I

    move-result v0

    if-nez v0, :cond_2c

    move v0, v5

    goto :goto_5

    :cond_2c
    move v0, v4

    goto :goto_5

    .line 510
    :cond_2e
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lml;->b()I

    move-result v2

    if-eq v2, v1, :cond_3c

    move v0, v4

    goto :goto_5

    :cond_3c
    move v2, v4

    :goto_3d
    if-ge v2, v1, :cond_56

    iget-object v3, p1, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfb;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lfb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    move v0, v4

    goto :goto_5

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_56
    move v0, v5

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 517
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 518
    const/4 v0, 0x1

    .line 527
    :cond_5
    return v0

    .line 520
    :cond_6
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 521
    iget-object v1, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfb;

    .line 522
    if-eqz p0, :cond_12

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_12
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lml;->b()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 535
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 537
    const/4 v0, 0x0

    iget-object v2, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_1e
    if-ge v3, v2, :cond_3a

    .line 538
    if-lez v3, :cond_27

    .line 539
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    :cond_27
    iget-object v0, p0, Lml;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfb;

    invoke-virtual {v0}, Lfb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1e

    .line 544
    :cond_3a
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
