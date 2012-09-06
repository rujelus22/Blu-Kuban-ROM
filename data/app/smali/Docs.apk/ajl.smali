.class public final Lajl;
.super Laiq;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laiq",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field a:J

.field a:LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field a:Lage;

.field a:Lajp;

.field a:Lakh;

.field a:Z

.field b:I

.field b:J

.field b:LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Lakh;

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 144
    invoke-direct {p0}, Laiq;-><init>()V

    .line 123
    iput v0, p0, Lajl;->a:I

    .line 124
    iput v0, p0, Lajl;->b:I

    .line 125
    iput v0, p0, Lajl;->c:I

    .line 130
    iput-wide v1, p0, Lajl;->a:J

    .line 131
    iput-wide v1, p0, Lajl;->b:J

    .line 144
    return-void
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lajl;->a:Lajp;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method a()I
    .registers 3

    .prologue
    .line 211
    iget v0, p0, Lajl;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lajl;->a:I

    goto :goto_7
.end method

.method a()J
    .registers 5

    .prologue
    .line 484
    iget-wide v0, p0, Lajl;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lajl;->a:J

    goto :goto_a
.end method

.method a()LafD;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lajl;->a:LafD;

    invoke-virtual {p0}, Lajl;->a()Lakh;

    move-result-object v1

    invoke-virtual {v1}, Lakh;->a()LafD;

    move-result-object v1

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LafD;

    return-object v0
.end method

.method a()Lage;
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lajl;->a:Lage;

    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage;

    return-object v0
.end method

.method public a()Lajl;
    .registers 2

    .prologue
    .line 306
    sget-object v0, Lakh;->c:Lakh;

    invoke-virtual {p0, v0}, Lajl;->a(Lakh;)Lajl;

    move-result-object v0

    return-object v0
.end method

.method a(Lakh;)Lajl;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 337
    iget-object v0, p0, Lajl;->a:Lakh;

    if-nez v0, :cond_21

    move v0, v1

    :goto_7
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lajl;->a:Lakh;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, LafQ;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakh;

    iput-object v0, p0, Lajl;->a:Lakh;

    .line 339
    sget-object v0, Lakh;->a:Lakh;

    if-eq p1, v0, :cond_20

    .line 341
    iput-boolean v1, p0, Lajl;->a:Z

    .line 343
    :cond_20
    return-object p0

    :cond_21
    move v0, v2

    .line 337
    goto :goto_7
.end method

.method a()Lakh;
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lajl;->a:Lakh;

    sget-object v1, Lakh;->a:Lakh;

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakh;

    return-object v0
.end method

.method public a(LafH;)Ljava/util/concurrent/ConcurrentMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LafH",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    invoke-direct {p0}, Lajl;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Laif;

    invoke-direct {v0, p0, p1}, Laif;-><init>(Lajl;LafH;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lajn;

    invoke-direct {v0, p0, p1}, Lajn;-><init>(Lajl;LafH;)V

    goto :goto_b
.end method

.method b()I
    .registers 3

    .prologue
    .line 279
    iget v0, p0, Lajl;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lajl;->b:I

    goto :goto_6
.end method

.method b()J
    .registers 5

    .prologue
    .line 525
    iget-wide v0, p0, Lajl;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lajl;->b:J

    goto :goto_a
.end method

.method b()LafD;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lajl;->b:LafD;

    invoke-virtual {p0}, Lajl;->b()Lakh;

    move-result-object v1

    invoke-virtual {v1}, Lakh;->a()LafD;

    move-result-object v1

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LafD;

    return-object v0
.end method

.method public b()Lajl;
    .registers 2

    .prologue
    .line 380
    sget-object v0, Lakh;->c:Lakh;

    invoke-virtual {p0, v0}, Lajl;->b(Lakh;)Lajl;

    move-result-object v0

    return-object v0
.end method

.method b(Lakh;)Lajl;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 410
    iget-object v0, p0, Lajl;->b:Lakh;

    if-nez v0, :cond_21

    move v0, v1

    :goto_7
    const-string v3, "Value strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lajl;->b:Lakh;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, LafQ;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakh;

    iput-object v0, p0, Lajl;->b:Lakh;

    .line 412
    sget-object v0, Lakh;->a:Lakh;

    if-eq p1, v0, :cond_20

    .line 414
    iput-boolean v1, p0, Lajl;->a:Z

    .line 416
    :cond_20
    return-object p0

    :cond_21
    move v0, v2

    .line 410
    goto :goto_7
.end method

.method b()Lakh;
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, Lajl;->b:Lakh;

    sget-object v1, Lakh;->a:Lakh;

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakh;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 679
    invoke-static {p0}, LafL;->a(Ljava/lang/Object;)LafN;

    move-result-object v0

    .line 680
    iget v1, p0, Lajl;->a:I

    if-eq v1, v3, :cond_12

    .line 681
    const-string v1, "initialCapacity"

    iget v2, p0, Lajl;->a:I

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;I)LafN;

    .line 683
    :cond_12
    iget v1, p0, Lajl;->b:I

    if-eq v1, v3, :cond_1d

    .line 684
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lajl;->b:I

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;I)LafN;

    .line 686
    :cond_1d
    iget v1, p0, Lajl;->c:I

    if-eq v1, v3, :cond_28

    .line 687
    const-string v1, "maximumSize"

    iget v2, p0, Lajl;->c:I

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;I)LafN;

    .line 689
    :cond_28
    iget-wide v1, p0, Lajl;->a:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_48

    .line 690
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lajl;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 692
    :cond_48
    iget-wide v1, p0, Lajl;->b:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_68

    .line 693
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lajl;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 695
    :cond_68
    iget-object v1, p0, Lajl;->a:Lakh;

    if-eqz v1, :cond_7b

    .line 696
    const-string v1, "keyStrength"

    iget-object v2, p0, Lajl;->a:Lakh;

    invoke-virtual {v2}, Lakh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 698
    :cond_7b
    iget-object v1, p0, Lajl;->b:Lakh;

    if-eqz v1, :cond_8e

    .line 699
    const-string v1, "valueStrength"

    iget-object v2, p0, Lajl;->b:Lakh;

    invoke-virtual {v2}, Lakh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 701
    :cond_8e
    iget-object v1, p0, Lajl;->a:LafD;

    if-eqz v1, :cond_97

    .line 702
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, LafN;->a(Ljava/lang/Object;)LafN;

    .line 704
    :cond_97
    iget-object v1, p0, Lajl;->b:LafD;

    if-eqz v1, :cond_a0

    .line 705
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, LafN;->a(Ljava/lang/Object;)LafN;

    .line 707
    :cond_a0
    iget-object v1, p0, Lajl;->a:Lajv;

    if-eqz v1, :cond_a9

    .line 708
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, LafN;->a(Ljava/lang/Object;)LafN;

    .line 710
    :cond_a9
    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
