.class public Lcom/google/api/client/util/p;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public f:Lcom/google/api/client/util/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final g:Lcom/google/api/client/util/h;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/api/client/util/a;->a()Lcom/google/api/client/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/p;->g:Lcom/google/api/client/util/h;

    .line 189
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/client/util/p;->g:Lcom/google/api/client/util/h;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_10

    .line 77
    invoke-virtual {v1, p0}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    invoke-virtual {v1, p0, p2}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/util/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public b()Lcom/google/api/client/util/p;
    .registers 3

    .prologue
    .line 131
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/p;

    .line 132
    invoke-static {p0, v0}, Lcom/google/api/client/util/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-static {v1}, Lcom/google/api/client/util/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/a;

    iput-object v1, v0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 134
    return-object v0

    .line 135
    :catch_14
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/client/util/p;->g:Lcom/google/api/client/util/h;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_c

    .line 92
    invoke-virtual {v0, p0, p2}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    :goto_b
    return-void

    .line 95
    :cond_c
    iget-object v0, p0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/util/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/api/client/util/p;->b()Lcom/google/api/client/util/p;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 120
    new-instance v0, Lcom/google/api/client/util/r;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/r;-><init>(Lcom/google/api/client/util/p;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 62
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 63
    const/4 v0, 0x0

    .line 70
    :goto_5
    return-object v0

    .line 65
    :cond_6
    check-cast p1, Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/google/api/client/util/p;->g:Lcom/google/api/client/util/h;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_15

    .line 68
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 70
    :cond_15
    iget-object v0, p0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/util/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 100
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/api/client/util/p;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 103
    :cond_22
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 107
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    move-object v0, p1

    .line 108
    check-cast v0, Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/google/api/client/util/p;->g:Lcom/google/api/client/util/h;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_15

    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 113
    :cond_15
    iget-object v0, p0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
