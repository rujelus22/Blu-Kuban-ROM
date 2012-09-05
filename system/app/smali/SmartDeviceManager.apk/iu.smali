.class public final Liu;
.super Lik;
.source "a"

# interfaces
.implements Lho;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lik",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lho;"
    }
.end annotation


# instance fields
.field final a:Lnd;

.field final b:Lhk;

.field final c:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lht;

.field final e:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected f:Lil$c;

.field protected g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnd;Ljava/lang/reflect/Constructor;Lhk;Lhf;Lht;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lhk;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lht;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lik;-><init>(Ljava/lang/Class;)V

    .line 77
    iput-object p1, p0, Liu;->a:Lnd;

    .line 78
    iput-object p2, p0, Liu;->e:Ljava/lang/reflect/Constructor;

    .line 79
    iput-object p3, p0, Liu;->b:Lhk;

    .line 80
    iput-object p4, p0, Liu;->c:Lhf;

    .line 81
    iput-object p5, p0, Liu;->d:Lht;

    .line 82
    return-void
.end method

.method private a(Lfd;Lhc;Ljava/util/Map;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 215
    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_c

    .line 216
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    .line 218
    :cond_c
    iget-object v1, p0, Liu;->b:Lhk;

    .line 219
    iget-object v2, p0, Liu;->c:Lhf;

    .line 220
    iget-object v3, p0, Liu;->d:Lht;

    .line 221
    :goto_12
    sget-object v4, Lfg;->FIELD_NAME:Lfg;

    if-ne v0, v4, :cond_4f

    .line 223
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v0

    .line 224
    if-nez v1, :cond_35

    move-object v4, v0

    .line 226
    :goto_1d
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v5

    .line 227
    iget-object v6, p0, Liu;->g:Ljava/util/HashSet;

    if-eqz v6, :cond_3a

    iget-object v6, p0, Liu;->g:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 228
    invoke-virtual {p1}, Lfd;->c()Lfd;

    .line 221
    :goto_30
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    goto :goto_12

    .line 224
    :cond_35
    invoke-virtual {v1, v0, p2}, Lhk;->a(Ljava/lang/String;Lhc;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1d

    .line 233
    :cond_3a
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    if-ne v5, v0, :cond_43

    .line 234
    const/4 v0, 0x0

    .line 244
    :goto_3f
    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 235
    :cond_43
    if-nez v3, :cond_4a

    .line 236
    invoke-virtual {v2, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3f

    .line 238
    :cond_4a
    invoke-virtual {v2, p1, p2, v3}, Lhf;->a(Lfd;Lhc;Lht;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3f

    .line 246
    :cond_4f
    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/util/Map;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd;",
            "Lhc;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 150
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 151
    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-eq v0, v1, :cond_17

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-eq v0, v1, :cond_17

    .line 152
    iget-object v0, p0, Liu;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 154
    :cond_17
    iget-object v0, p0, Liu;->f:Lil$c;

    if-eqz v0, :cond_a4

    .line 155
    iget-object v0, p0, Liu;->f:Lil$c;

    invoke-virtual {v0, p1, p2}, Lil$c;->a(Lfd;Lhc;)Liw;

    move-result-object v1

    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v2

    sget-object v3, Lfg;->START_OBJECT:Lfg;

    if-ne v2, v3, :cond_2d

    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v2

    :cond_2d
    iget-object v3, p0, Liu;->c:Lhf;

    iget-object v4, p0, Liu;->d:Lht;

    :goto_31
    sget-object v5, Lfg;->FIELD_NAME:Lfg;

    if-ne v2, v5, :cond_9c

    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v5

    iget-object v6, p0, Liu;->g:Ljava/util/HashSet;

    if-eqz v6, :cond_51

    iget-object v6, p0, Liu;->g:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {p1}, Lfd;->c()Lfd;

    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v2

    goto :goto_31

    :cond_51
    invoke-virtual {v0, v2}, Lil$c;->a(Ljava/lang/String;)Liy;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-virtual {v2, p1, p2}, Liy;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Liy;->f()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Liw;->a(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {p1}, Lfd;->b()Lfg;

    invoke-virtual {v0, v1}, Lil$c;->a(Liw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Liu;->a(Lfd;Lhc;Ljava/util/Map;)V

    .line 167
    :goto_71
    return-object v0

    .line 155
    :cond_72
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Liu;->b:Lhk;

    if-nez v6, :cond_89

    :goto_7a
    sget-object v6, Lfg;->VALUE_NULL:Lfg;

    if-ne v5, v6, :cond_90

    const/4 v5, 0x0

    :goto_7f
    new-instance v6, Liv$b;

    iget-object v7, v1, Liw;->d:Liv;

    invoke-direct {v6, v7, v5, v2}, Liv$b;-><init>(Liv;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v1, Liw;->d:Liv;

    goto :goto_4c

    :cond_89
    iget-object v6, p0, Liu;->b:Lhk;

    invoke-virtual {v6, v2, p2}, Lhk;->a(Ljava/lang/String;Lhc;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7a

    :cond_90
    if-nez v4, :cond_97

    invoke-virtual {v3, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7f

    :cond_97
    invoke-virtual {v3, p1, p2, v4}, Lhf;->a(Lfd;Lhc;Lht;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7f

    :cond_9c
    invoke-virtual {v0, v1}, Lil$c;->a(Liw;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    move-object v0, p0

    goto :goto_71

    .line 158
    :cond_a4
    iget-object v0, p0, Liu;->e:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_b5

    .line 159
    iget-object v0, p0, Liu;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "No default constructor found"

    invoke-virtual {p2, v0, v1}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 162
    :cond_b5
    :try_start_b5
    iget-object v0, p0, Liu;->e:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c0} :catch_c4

    .line 166
    invoke-direct {p0, p1, p2, v0}, Liu;->a(Lfd;Lhc;Ljava/util/Map;)V

    goto :goto_71

    .line 163
    :catch_c4
    move-exception v0

    .line 164
    iget-object v1, p0, Liu;->a:Lnd;

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
    .line 24
    invoke-direct {p0, p1, p2}, Liu;->b(Lfd;Lhc;)Ljava/util/Map;

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
    .line 190
    invoke-virtual {p3, p1, p2}, Lht;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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
    .line 24
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-eq v0, v1, :cond_19

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Liu;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    :cond_19
    invoke-direct {p0, p1, p2, p3}, Liu;->a(Lfd;Lhc;Ljava/util/Map;)V

    return-object p3
.end method

.method public final a(Lhb;Lhe;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Liu;->f:Lil$c;

    if-eqz v0, :cond_2b

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    iget-object v1, p0, Liu;->f:Lil$c;

    invoke-virtual {v1}, Lil$c;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liy;

    .line 134
    invoke-virtual {p0}, Liy;->c()Lnd;

    move-result-object v2

    invoke-static {p1, p2, v2, v0}, Liu;->a(Lhb;Lhe;Lnd;Ljava/util/Map;)Lhf;

    move-result-object v2

    invoke-virtual {p0, v2}, Liy;->a(Lhf;)V

    goto :goto_13

    .line 137
    :cond_2b
    return-void
.end method

.method public final a(Lim;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1}, Lim;->a()Lil$c;

    move-result-object v0

    iput-object v0, p0, Liu;->f:Lil$c;

    .line 91
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 95
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_9

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Liu;->g:Ljava/util/HashSet;

    .line 97
    return-void

    .line 95
    :cond_9
    invoke-static {p1}, Lmd;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_6
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
    .line 112
    iget-object v0, p0, Liu;->c:Lhf;

    return-object v0
.end method
