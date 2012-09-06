.class public Laob;
.super LanW;
.source "BindingBuilder.java"

# interfaces
.implements LanQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LanW",
        "<TT;>;",
        "LanQ",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lant;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;",
            "Ljava/lang/Object;",
            "Lant",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, LanW;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lant;)V

    .line 48
    return-void
.end method

.method private a(Lani;)V
    .registers 5
    .parameter

    .prologue
    .line 176
    invoke-virtual {p1}, Lani;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqF;

    .line 177
    iget-object v2, p0, Laob;->a:Lcom/google/inject/Binder;

    invoke-interface {v2, v0}, Lcom/google/inject/Binder;->a(LaqF;)V

    goto :goto_8

    .line 179
    :cond_1a
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/annotation/Annotation;)LanU;
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Laob;->a(Ljava/lang/annotation/Annotation;)Laob;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(LanD;)LanV;
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Laob;->a(LanD;)Laob;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Class;)LanV;
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Laob;->a(Ljava/lang/Class;)Laob;

    move-result-object v0

    return-object v0
.end method

.method public a(LanD;)Laob;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<+TT;>;)",
            "Laob",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "provider"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Laob;->a()V

    .line 106
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laqt;->a(Ljava/lang/Class;)Ljava/util/Set;
    :try_end_f
    .catch Lani; {:try_start_8 .. :try_end_f} :catch_2a

    move-result-object v4

    .line 112
    :goto_10
    invoke-virtual {p0}, Laob;->a()Laoc;

    move-result-object v3

    .line 113
    new-instance v0, Lapt;

    invoke-virtual {v3}, Laoc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Laoc;->a()Lant;

    move-result-object v2

    invoke-virtual {v3}, Laoc;->a()LapG;

    move-result-object v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lapt;-><init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;LanD;)V

    invoke-virtual {p0, v0}, Laob;->a(Laoc;)Laoc;

    .line 115
    return-object p0

    .line 107
    :catch_2a
    move-exception v0

    .line 108
    invoke-direct {p0, v0}, Laob;->a(Lani;)V

    .line 109
    invoke-virtual {v0}, Lani;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    goto :goto_10
.end method

.method public a(Lant;)Laob;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<+TT;>;)",
            "Laob",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "linkedKey"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Laob;->a()V

    .line 71
    invoke-virtual {p0}, Laob;->a()Laoc;

    move-result-object v0

    .line 72
    new-instance v1, Lapf;

    invoke-virtual {v0}, Laoc;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Laoc;->a()Lant;

    move-result-object v3

    invoke-virtual {v0}, Laoc;->a()LapG;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lapf;-><init>(Ljava/lang/Object;Lant;LapG;Lant;)V

    invoke-virtual {p0, v1}, Laob;->a(Laoc;)Laoc;

    .line 74
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Laob;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Laob",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, Laob;->a(Lant;)Laob;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/annotation/Annotation;)Laob;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Laob",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Laob;->a(Ljava/lang/annotation/Annotation;)Laoc;

    .line 57
    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Laob;->a()V

    .line 82
    if-eqz p1, :cond_31

    .line 84
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laqt;->a(Ljava/lang/Class;)Ljava/util/Set;
    :try_end_c
    .catch Lani; {:try_start_5 .. :try_end_c} :catch_25

    move-result-object v4

    .line 94
    :goto_d
    invoke-virtual {p0}, Laob;->a()Laoc;

    move-result-object v2

    .line 95
    new-instance v0, Lapa;

    invoke-virtual {v2}, Laoc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Laoc;->a()Lant;

    move-result-object v2

    sget-object v3, LapG;->d:LapG;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lapa;-><init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Laob;->a(Laoc;)Laoc;

    .line 97
    return-void

    .line 85
    :catch_25
    move-exception v0

    .line 86
    invoke-direct {p0, v0}, Laob;->a(Lani;)V

    .line 87
    invoke-virtual {v0}, Lani;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    .line 88
    goto :goto_d

    .line 90
    :cond_31
    iget-object v0, p0, Laob;->a:Lcom/google/inject/Binder;

    const-string v1, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v4

    goto :goto_d
.end method

.method public bridge synthetic b(Ljava/lang/Class;)LanV;
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Laob;->b(Ljava/lang/Class;)Laob;

    move-result-object v0

    return-object v0
.end method

.method public b(Lant;)Laob;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<+",
            "LasT",
            "<+TT;>;>;)",
            "Laob",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "providerKey"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Laob;->a()V

    .line 133
    invoke-virtual {p0}, Laob;->a()Laoc;

    move-result-object v0

    .line 134
    new-instance v1, Lapg;

    invoke-virtual {v0}, Laoc;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Laoc;->a()Lant;

    move-result-object v3

    invoke-virtual {v0}, Laoc;->a()LapG;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lapg;-><init>(Ljava/lang/Object;Lant;LapG;Lant;)V

    invoke-virtual {p0, v1}, Laob;->a(Laoc;)Laoc;

    .line 136
    return-object p0
.end method

.method public b(Ljava/lang/Class;)Laob;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "LasT",
            "<+TT;>;>;)",
            "Laob",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, Laob;->b(Lant;)Laob;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindingBuilder<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laob;->a()Laoc;

    move-result-object v1

    invoke-virtual {v1}, Laoc;->a()Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->a()LanP;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
