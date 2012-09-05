.class public Lcom/google/android/maps/driveabout/vector/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/aE;

.field private final b:Lcom/google/android/maps/driveabout/vector/cc;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->e:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/aE;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cb;-><init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;)V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cd;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cd;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/m;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_2d
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cd;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cd;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/m;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_57
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cb;-><init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;)V

    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_28

    aget-object v3, p3, v1

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/cd;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/m;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_28
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cb;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cb;->b()Lcom/google/android/maps/driveabout/vector/cc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cc;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_4d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cb;->a()Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v2

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aE;->s_()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aE;->s_()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1f
    if-nez v0, :cond_4d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cd;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cd;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cd;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :cond_4d
    return v0
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/aE;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/aE;

    return-object v0
.end method

.method public a(Lt/m;)Lcom/google/android/maps/driveabout/vector/cd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cd;

    return-object v0
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cb;->e:Z

    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/cc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    return-object v0
.end method

.method public b(Lt/m;)Lcom/google/android/maps/driveabout/vector/cd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cd;

    return-object v0
.end method

.method b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Z

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->a:Lcom/google/android/maps/driveabout/vector/cc;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->c:Lcom/google/android/maps/driveabout/vector/cc;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->h:Lcom/google/android/maps/driveabout/vector/cc;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->f:Lcom/google/android/maps/driveabout/vector/cc;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->i:Lcom/google/android/maps/driveabout/vector/cc;

    if-ne v0, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/cb;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->g:Lcom/google/android/maps/driveabout/vector/cc;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->b:Lcom/google/android/maps/driveabout/vector/cc;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->e:Lcom/google/android/maps/driveabout/vector/cc;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->e:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "overlay"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "order"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->b:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "isFirstPassForOverlay"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "isLastPassForOverlay"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "overlayRenderTweaks"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "featureRenderTweaks"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cb;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
