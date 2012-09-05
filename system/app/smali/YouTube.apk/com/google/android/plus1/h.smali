.class public abstract Lcom/google/android/plus1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/PlusOneReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/google/android/plus1/u;
    .registers 4
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/plus1/h;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/Map;
    .registers 6
    .parameter

    .prologue
    .line 31
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/plus1/h;->a(Landroid/net/Uri;)Lcom/google/android/plus1/u;

    move-result-object v3

    .line 34
    if-eqz v3, :cond_8

    .line 35
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 38
    :cond_1e
    return-object v1
.end method
