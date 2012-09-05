.class public final Lij;
.super Lik;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lik",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final a:Lnd;

.field final b:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lht;

.field final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnd;Lhf;Lht;Ljava/lang/reflect/Constructor;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lht;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lik;-><init>(Ljava/lang/Class;)V

    .line 55
    iput-object p1, p0, Lij;->a:Lnd;

    .line 56
    iput-object p2, p0, Lij;->b:Lhf;

    .line 57
    iput-object p3, p0, Lij;->c:Lht;

    .line 58
    iput-object p4, p0, Lij;->d:Ljava/lang/reflect/Constructor;

    .line 59
    return-void
.end method

.method private a(Lfd;Lhc;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-eq v0, v1, :cond_13

    .line 103
    iget-object v0, p0, Lij;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 106
    :cond_13
    iget-object v0, p0, Lij;->b:Lhf;

    .line 108
    iget-object v1, p0, Lij;->c:Lht;

    .line 110
    :goto_17
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v2

    sget-object v3, Lfg;->END_ARRAY:Lfg;

    if-eq v2, v3, :cond_34

    .line 113
    sget-object v3, Lfg;->VALUE_NULL:Lfg;

    if-ne v2, v3, :cond_28

    .line 114
    const/4 v2, 0x0

    .line 120
    :goto_24
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 115
    :cond_28
    if-nez v1, :cond_2f

    .line 116
    invoke-virtual {v0, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_24

    .line 118
    :cond_2f
    invoke-virtual {v0, p1, p2, v1}, Lhf;->a(Lfd;Lhc;Lht;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_24

    .line 122
    :cond_34
    return-object p3
.end method

.method private b(Lfd;Lhc;)Ljava/util/Collection;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lij;->d:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_10

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lij;->a(Lfd;Lhc;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 90
    :catch_10
    move-exception v0

    .line 91
    iget-object v1, p0, Lij;->a:Lnd;

    invoke-virtual {v1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lhc;->a(Ljava/lang/Class;Ljava/lang/Exception;)Lhg;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lij;->b(Lfd;Lhc;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfd;Lhc;Lht;)Ljava/lang/Object;
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
    .line 131
    invoke-virtual {p3, p1, p2}, Lht;->b(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 25
    check-cast p3, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, p3}, Lij;->a(Lfd;Lhc;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lhf;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lij;->b:Lhf;

    return-object v0
.end method
