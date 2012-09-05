.class public final Lkn;
.super Lkc;
.source "a"


# instance fields
.field protected a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lkb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lkc;-><init>()V

    return-void
.end method

.method private a(Ljl;Lkb;Lhl;Lgy;Ljava/util/HashMap;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljl;",
            "Lkb;",
            "Lhl",
            "<*>;",
            "Lgy;",
            "Ljava/util/HashMap",
            "<",
            "Lkb;",
            "Lkb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p2}, Lkb;->c()Z

    move-result v0

    if-nez v0, :cond_76

    .line 134
    invoke-virtual {p4, p1}, Lgy;->e(Ljl;)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_76

    .line 136
    new-instance v1, Lkb;

    invoke-virtual {p2}, Lkb;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkb;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v1

    .line 141
    :goto_16
    invoke-virtual {p5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 143
    invoke-virtual {v0}, Lkb;->c()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 144
    invoke-virtual {p5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkb;

    .line 145
    invoke-virtual {p0}, Lkb;->c()Z

    move-result v1

    if-nez v1, :cond_31

    .line 146
    invoke-virtual {p5, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_31
    return-void

    .line 152
    :cond_32
    invoke-virtual {p5, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p4, p1}, Lgy;->a(Ljk;)Ljava/util/List;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 155
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkb;

    .line 156
    invoke-virtual {v0}, Lkb;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p4, p3}, Ljl;->b(Ljava/lang/Class;Lgy;Lha$a;)Ljl;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lkb;->c()Z

    move-result v2

    if-nez v2, :cond_74

    .line 159
    new-instance v2, Lkb;

    invoke-virtual {v0}, Lkb;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v1}, Lgy;->e(Ljl;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lkb;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_6c
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 161
    invoke-direct/range {v0 .. v5}, Lkn;->a(Ljl;Lkb;Lhl;Lgy;Ljava/util/HashMap;)V

    goto :goto_45

    :cond_74
    move-object v2, v0

    goto :goto_6c

    :cond_76
    move-object v0, p2

    goto :goto_16
.end method


# virtual methods
.method public final a(Ljl;Lhl;Lgy;)Ljava/util/Collection;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljl;",
            "Lhl",
            "<*>;",
            "Lgy;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lkb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v0, p0, Lkn;->a:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_38

    .line 69
    invoke-virtual {p1}, Ljl;->c()Ljava/lang/Class;

    move-result-object v6

    .line 70
    iget-object v0, p0, Lkn;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkb;

    .line 72
    invoke-virtual {v2}, Lkb;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    invoke-virtual {v2}, Lkb;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Ljl;->b(Ljava/lang/Class;Lgy;Lha$a;)Ljl;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 74
    invoke-direct/range {v0 .. v5}, Lkn;->a(Ljl;Lkb;Lhl;Lgy;Ljava/util/HashMap;)V

    goto :goto_13

    .line 79
    :cond_38
    new-instance v2, Lkb;

    invoke-virtual {p1}, Ljl;->c()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lkb;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 80
    invoke-direct/range {v0 .. v5}, Lkn;->a(Ljl;Lkb;Lhl;Lgy;Ljava/util/HashMap;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
