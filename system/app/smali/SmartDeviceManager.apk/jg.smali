.class public final Ljg;
.super Lih;
.source "a"


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lih;-><init>(Lnd;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final b(Lfd;Lhc;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 40
    iget-object v0, p0, Ljg;->f:Lil$c;

    if-eqz v0, :cond_b

    .line 41
    invoke-virtual {p0, p1, p2}, Ljg;->c(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    :goto_a
    return-object v0

    .line 43
    :cond_b
    iget-object v0, p0, Ljg;->e:Lil$a;

    if-eqz v0, :cond_16

    .line 44
    iget-object v0, p0, Ljg;->e:Lil$a;

    invoke-virtual {v0, p1, p2}, Lil$a;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 46
    :cond_16
    iget-object v0, p0, Ljg;->a:Lnd;

    invoke-virtual {v0}, Lnd;->b()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate abstract type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljg;->a:Lnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhg;->a(Lfd;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 51
    :cond_3e
    iget-object v0, p0, Ljg;->c:Lil$d;

    if-nez v0, :cond_63

    .line 52
    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not deserialize Throwable of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljg;->a:Lnd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without having either single-String-arg constructor; or explicit @JsonCreator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    move v1, v7

    move-object v2, v6

    move-object v3, v6

    .line 60
    :goto_66
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v4, Lfg;->END_OBJECT:Lfg;

    if-eq v0, v4, :cond_fa

    .line 61
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v0, p0, Ljg;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liy;

    .line 63
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 65
    if-eqz v0, :cond_a9

    .line 66
    if-eqz v3, :cond_8e

    .line 67
    invoke-virtual {v0, p1, p2, v3}, Liy;->a(Lfd;Lhc;Ljava/lang/Object;)V

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 60
    :goto_87
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_66

    .line 71
    :cond_8e
    if-nez v2, :cond_99

    .line 72
    iget-object v2, p0, Ljg;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 73
    add-int/2addr v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    :cond_99
    add-int/lit8 v4, v1, 0x1

    aput-object v0, v2, v1

    .line 76
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, p1, p2}, Liy;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v4

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 77
    goto :goto_87

    .line 81
    :cond_a9
    const-string v0, "message"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 82
    iget-object v0, p0, Ljg;->c:Lil$d;

    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lil$d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    if-eqz v2, :cond_f6

    move v4, v7

    .line 85
    :goto_be
    if-ge v4, v1, :cond_cf

    .line 86
    aget-object v0, v2, v4

    check-cast v0, Liy;

    .line 87
    add-int/lit8 v5, v4, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v0, v3, v5}, Liy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_be

    :cond_cf
    move v0, v1

    move-object v2, v3

    move-object v1, v6

    .line 89
    goto :goto_87

    .line 96
    :cond_d3
    iget-object v0, p0, Ljg;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Ljg;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 97
    invoke-virtual {p1}, Lfd;->c()Lfd;

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 98
    goto :goto_87

    .line 100
    :cond_e6
    iget-object v0, p0, Ljg;->h:Lix;

    if-eqz v0, :cond_f3

    .line 101
    iget-object v0, p0, Ljg;->h:Lix;

    invoke-virtual {v0, p1, p2, v3, v4}, Lix;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 102
    goto :goto_87

    .line 105
    :cond_f3
    invoke-virtual {p0, p1, p2, v3, v4}, Ljg;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f6
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_87

    .line 108
    :cond_fa
    if-nez v3, :cond_117

    .line 109
    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No \'message\' property found: could not deserialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljg;->a:Lnd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_117
    move-object v0, v3

    .line 111
    goto/16 :goto_a
.end method
