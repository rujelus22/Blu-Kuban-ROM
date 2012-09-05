.class public final Lcom/google/android/plus1/al;
.super Lcom/google/android/plus1/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ar;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Set;

.field private c:Lcom/google/android/plus1/ap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/plus1/h;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/al;->a:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/plus1/al;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/plus1/ap;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/plus1/al;->c:Lcom/google/android/plus1/ap;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/android/plus1/u;
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/plus1/al;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Lcom/google/android/plus1/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/plus1/al;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final a(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-object v0, p0, Lcom/google/android/plus1/al;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    .line 51
    if-nez v0, :cond_2b

    .line 52
    if-eqz p2, :cond_29

    move v0, v1

    .line 53
    :goto_e
    new-instance v1, Lcom/google/android/plus1/v;

    invoke-direct {v1}, Lcom/google/android/plus1/v;-><init>()V

    iput-object p1, v1, Lcom/google/android/plus1/v;->a:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/plus1/v;->b:Ljava/lang/Boolean;

    iput v0, v1, Lcom/google/android/plus1/v;->d:I

    iput-object p3, v1, Lcom/google/android/plus1/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/plus1/v;->a()Lcom/google/android/plus1/u;

    move-result-object v0

    .line 65
    :goto_23
    iget-object v1, p0, Lcom/google/android/plus1/al;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void

    .line 52
    :cond_29
    const/4 v0, 0x0

    goto :goto_e

    .line 56
    :cond_2b
    new-instance v2, Lcom/google/android/plus1/v;

    invoke-direct {v2, v0}, Lcom/google/android/plus1/v;-><init>(Lcom/google/android/plus1/u;)V

    .line 57
    iget-object v3, v0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 58
    if-eqz p2, :cond_50

    .line 59
    :goto_3e
    iget v0, v0, Lcom/google/android/plus1/u;->d:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/google/android/plus1/v;->d:I

    .line 61
    :cond_43
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/plus1/v;->b:Ljava/lang/Boolean;

    .line 62
    iput-object p3, v2, Lcom/google/android/plus1/v;->e:Ljava/lang/String;

    .line 63
    invoke-virtual {v2}, Lcom/google/android/plus1/v;->a()Lcom/google/android/plus1/u;

    move-result-object v0

    goto :goto_23

    .line 58
    :cond_50
    const/4 v1, -0x1

    goto :goto_3e
.end method

.method public final a(Lcom/google/android/plus1/ap;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/plus1/al;->c:Lcom/google/android/plus1/ap;

    .line 40
    return-void
.end method

.method public final a(Lcom/google/android/plus1/as;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/plus1/al;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/plus1/al;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/plus1/al;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/as;

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/plus1/al;->a(Lcom/google/android/plus1/as;)V

    goto :goto_9

    .line 91
    :cond_19
    return-void
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/plus1/al;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/plus1/as;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/plus1/al;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/plus1/al;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
