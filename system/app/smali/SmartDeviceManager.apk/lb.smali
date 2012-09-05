.class public final Llb;
.super Lkz;
.source "a"

# interfaces
.implements Lhp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkz",
        "<",
        "Ljava/util/EnumMap",
        "<+",
        "Ljava/lang/Enum",
        "<*>;*>;>;",
        "Lhp;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lmf;

.field protected final c:Lnd;

.field protected d:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lhu;


# direct methods
.method public constructor <init>(Lnd;ZLmf;Lhu;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const-class v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0}, Lkz;-><init>(Ljava/lang/Class;)V

    .line 55
    if-nez p2, :cond_f

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lnd;->n()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Llb;->a:Z

    .line 56
    iput-object p1, p0, Llb;->c:Lnd;

    .line 57
    iput-object p3, p0, Llb;->b:Lmf;

    .line 58
    iput-object p4, p0, Llb;->e:Lhu;

    .line 59
    return-void

    .line 55
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(Ljava/util/EnumMap;Lez;Lhs;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lez;",
            "Lhs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v0, p0, Llb;->d:Lhj;

    if-eqz v0, :cond_5e

    .line 94
    iget-object v2, p0, Llb;->d:Lhj;

    iget-object v0, p0, Llb;->b:Lmf;

    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    if-nez v1, :cond_36

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v1}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v1

    check-cast v1, Llm;

    check-cast v1, Llc;

    invoke-virtual {v1}, Llc;->a()Lmf;

    move-result-object v1

    :cond_36
    invoke-virtual {v1, v0}, Lmf;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4b

    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v0

    invoke-virtual {v0, v6, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_12

    :cond_4b
    :try_start_4b
    invoke-virtual {v2, v0, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_12

    :catch_4f
    move-exception v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Llb;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    .line 99
    :cond_5e
    iget-object v0, p0, Llb;->b:Lmf;

    .line 101
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    move-object v3, v6

    move-object v4, v6

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 104
    if-nez v1, :cond_8f

    .line 110
    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v1}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v1

    check-cast v1, Llm;

    .line 111
    check-cast v1, Llc;

    invoke-virtual {v1}, Llc;->a()Lmf;

    move-result-object v1

    .line 113
    :cond_8f
    invoke-virtual {v1, v0}, Lmf;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->a(Ljava/lang/String;)V

    .line 115
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 116
    if-nez v0, :cond_a4

    .line 117
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v0

    invoke-virtual {v0, v6, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_6b

    .line 119
    :cond_a4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 121
    if-ne v5, v3, :cond_b4

    move-object v5, v4

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    .line 129
    :goto_ae
    :try_start_ae
    invoke-virtual {v3, v0, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_bb

    move-object v3, v4

    move-object v4, v5

    .line 133
    goto :goto_6b

    .line 124
    :cond_b4
    invoke-virtual {p3, v5}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v3

    move-object v4, v5

    move-object v5, v3

    .line 126
    goto :goto_ae

    .line 130
    :catch_bb
    move-exception v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Llb;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    move-object v4, v5

    .line 135
    goto :goto_6b

    .line 136
    :cond_cc
    return-void
.end method


# virtual methods
.method public final a(Lhu;)Lkz;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu;",
            ")",
            "Lkz",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Llb;

    iget-object v1, p0, Llb;->c:Lnd;

    iget-boolean v2, p0, Llb;->a:Z

    iget-object v3, p0, Llb;->b:Lmf;

    invoke-direct {v0, v1, v2, v3, p1}, Llb;-><init>(Lnd;ZLmf;Lhu;)V

    return-object v0
.end method

.method public final a(Lhs;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Llb;->a:Z

    if-eqz v0, :cond_c

    .line 169
    iget-object v0, p0, Llb;->c:Lnd;

    invoke-virtual {p1, v0}, Lhs;->a(Lnd;)Lhj;

    move-result-object v0

    iput-object v0, p0, Llb;->d:Lhj;

    .line 171
    :cond_c
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p2}, Lez;->d()V

    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2, p3}, Llb;->a(Ljava/util/EnumMap;Lez;Lhs;)V

    :cond_e
    invoke-virtual {p2}, Lez;->e()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 6
    .parameter
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
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p4, p1, p2}, Lhu;->b(Ljava/lang/Object;Lez;)V

    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2, p3}, Llb;->a(Ljava/util/EnumMap;Lez;Lhs;)V

    :cond_e
    invoke-virtual {p4, p2}, Lhu;->b(Lez;)V

    return-void
.end method
