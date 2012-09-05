.class public final Lcom/google/android/plus1/au;
.super Lcom/google/android/plus1/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ar;


# instance fields
.field protected final c:Lcom/google/android/plus1/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/ar;Lcom/google/android/plus1/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/ao;-><init>(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/ar;)V

    .line 25
    iput-object p1, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lcom/google/android/plus1/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/plus1/ar;->a(Landroid/net/Uri;Lcom/google/android/plus1/u;)V

    .line 96
    return-void
.end method

.method public final a(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/plus1/ar;->a(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public final a(Lcom/google/android/plus1/ap;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/ar;->a(Lcom/google/android/plus1/ap;)V

    .line 65
    return-void
.end method

.method public final a(Lcom/google/android/plus1/as;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/ar;->a(Lcom/google/android/plus1/as;)V

    .line 31
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/ar;->a(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public final b()Ljava/util/Map;
    .registers 8

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0}, Lcom/google/android/plus1/ar;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/google/android/plus1/au;->b:Lcom/google/android/plus1/ar;

    invoke-interface {v0}, Lcom/google/android/plus1/ar;->c()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/as;

    .line 43
    instance-of v3, v0, Lcom/google/android/plus1/at;

    if-eqz v3, :cond_14

    .line 44
    check-cast v0, Lcom/google/android/plus1/at;

    .line 45
    iget-object v3, v0, Lcom/google/android/plus1/at;->a:Landroid/net/Uri;

    .line 46
    iget-object v4, v0, Lcom/google/android/plus1/at;->b:Ljava/lang/Boolean;

    .line 47
    iget-object v5, v0, Lcom/google/android/plus1/at;->c:Ljava/lang/String;

    .line 48
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    .line 50
    if-nez v0, :cond_3d

    .line 51
    new-instance v0, Lcom/google/android/plus1/u;

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/plus1/u;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 56
    :goto_39
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 53
    :cond_3d
    new-instance v6, Lcom/google/android/plus1/v;

    invoke-direct {v6, v0}, Lcom/google/android/plus1/v;-><init>(Lcom/google/android/plus1/u;)V

    iput-object v4, v6, Lcom/google/android/plus1/v;->b:Ljava/lang/Boolean;

    iput-object v5, v6, Lcom/google/android/plus1/v;->e:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/plus1/v;->a()Lcom/google/android/plus1/u;

    move-result-object v0

    goto :goto_39

    .line 59
    :cond_4b
    return-object v1
.end method

.method public final b(Lcom/google/android/plus1/as;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/ar;->b(Lcom/google/android/plus1/as;)V

    .line 70
    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/plus1/au;->c:Lcom/google/android/plus1/ar;

    invoke-interface {v0}, Lcom/google/android/plus1/ar;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
