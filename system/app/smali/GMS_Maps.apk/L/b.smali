.class public Ll/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/O;
.implements Lr/aF;


# instance fields
.field private final a:Lr/aH;

.field private final b:Lr/Q;

.field private final c:Ln/am;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Collection;

.field private volatile f:Z

.field private volatile g:Ll/d;


# direct methods
.method public constructor <init>(Lr/aH;Lr/Q;Ln/am;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ll/b;->d:Ljava/util/Map;

    .line 62
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll/b;->e:Ljava/util/Collection;

    .line 117
    iput-object p1, p0, Ll/b;->a:Lr/aH;

    .line 118
    iput-object p2, p0, Ll/b;->b:Lr/Q;

    .line 119
    iput-object p3, p0, Ll/b;->c:Ln/am;

    .line 120
    return-void
.end method

.method private static a(Ln/aF;)Ljava/util/Collection;
    .registers 6
    .parameter

    .prologue
    .line 144
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Ln/aF;->k()Ln/aI;

    move-result-object v2

    .line 147
    :cond_8
    :goto_8
    invoke-interface {v2}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 148
    invoke-interface {v2}, Ln/aI;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    .line 149
    invoke-interface {v0}, Ln/l;->h()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 150
    check-cast v0, Ln/d;

    .line 151
    invoke-virtual {v0}, Ln/d;->k()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 152
    invoke-virtual {v0}, Ln/d;->a()Ln/m;

    move-result-object v3

    .line 153
    if-eqz v3, :cond_8

    sget-object v4, Ln/m;->a:Ln/m;

    if-eq v3, v4, :cond_8

    .line 154
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 160
    :cond_31
    return-object v1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Ll/b;->g:Ll/d;

    if-nez v0, :cond_5

    .line 249
    :goto_4
    return-void

    .line 244
    :cond_5
    iget-boolean v0, p0, Ll/b;->f:Z

    if-eqz v0, :cond_10

    .line 245
    iget-object v0, p0, Ll/b;->g:Ll/d;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ll/d;->a(Ll/b;Ljava/util/Collection;)V

    goto :goto_4

    .line 247
    :cond_10
    iget-object v0, p0, Ll/b;->g:Ll/d;

    iget-object v1, p0, Ll/b;->e:Ljava/util/Collection;

    invoke-interface {v0, p0, v1}, Ll/d;->a(Ll/b;Ljava/util/Collection;)V

    goto :goto_4
.end method


# virtual methods
.method public a()Ln/am;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Ll/b;->c:Ln/am;

    return-object v0
.end method

.method public a(Ll/d;)V
    .registers 4
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Ll/b;->g:Ll/d;

    .line 130
    iget-object v0, p0, Ll/b;->a:Lr/aH;

    iget-object v1, p0, Ll/b;->c:Ln/am;

    invoke-interface {v0, v1, p0}, Lr/aH;->a(Ln/am;Lr/aF;)V

    .line 131
    return-void
.end method

.method public a(Ln/am;ILn/al;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 168
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 206
    :cond_4
    :goto_4
    return-void

    .line 173
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1d

    .line 180
    :cond_8
    :goto_8
    const/4 v0, 0x0

    .line 181
    if-eqz p3, :cond_11

    .line 182
    check-cast p3, Ln/aF;

    invoke-static {p3}, Ll/b;->a(Ln/aF;)Ljava/util/Collection;

    move-result-object v0

    .line 186
    :cond_11
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 188
    :cond_19
    invoke-direct {p0}, Ll/b;->b()V

    goto :goto_4

    .line 175
    :cond_1d
    if-ne p2, v1, :cond_8

    .line 177
    iput-boolean v1, p0, Ll/b;->f:Z

    goto :goto_8

    .line 193
    :cond_22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    .line 194
    new-instance v2, Ll/c;

    invoke-direct {v2, v0}, Ll/c;-><init>(Ln/d;)V

    .line 195
    iget-object v0, p0, Ll/b;->d:Ljava/util/Map;

    invoke-static {v2}, Ll/c;->a(Ll/c;)Ln/p;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 201
    :cond_41
    iget-object v0, p0, Ll/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/c;

    .line 203
    iget-object v2, p0, Ll/b;->b:Lr/Q;

    invoke-static {v0}, Ll/c;->a(Ll/c;)Ln/p;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Lr/Q;->a(Ln/p;Lr/O;)V

    goto :goto_4f
.end method

.method public a(Ln/p;ILn/w;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 214
    iget-object v1, p0, Ll/b;->d:Ljava/util/Map;

    monitor-enter v1

    .line 215
    :try_start_4
    iget-object v0, p0, Ll/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/c;

    .line 216
    iget-object v2, p0, Ll/b;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    .line 217
    monitor-exit v1

    .line 218
    if-nez v0, :cond_19

    .line 236
    :cond_15
    :goto_15
    return-void

    .line 217
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v0

    .line 223
    :cond_19
    if-eqz p3, :cond_2b

    .line 224
    invoke-virtual {p3}, Ln/w;->e()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll/c;->a(Ln/Q;)V

    .line 225
    iget-object v1, p0, Ll/b;->e:Ljava/util/Collection;

    invoke-virtual {v0}, Ll/c;->a()Ll/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_2b
    if-ne p2, v3, :cond_2f

    .line 229
    iput-boolean v3, p0, Ll/b;->f:Z

    .line 233
    :cond_2f
    if-eqz v2, :cond_15

    .line 234
    invoke-direct {p0}, Ll/b;->b()V

    goto :goto_15
.end method
