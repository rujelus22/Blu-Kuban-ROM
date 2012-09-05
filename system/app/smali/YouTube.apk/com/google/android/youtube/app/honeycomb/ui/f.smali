.class final Lcom/google/android/youtube/app/honeycomb/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;

.field final synthetic c:Lcom/google/android/youtube/app/honeycomb/ui/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Ljava/lang/String;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->a:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->b:Ljava/util/Set;

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->b:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/d;->b(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 185
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/app/honeycomb/ui/b;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->c(Landroid/net/Uri;)V

    goto :goto_11

    .line 187
    :cond_29
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/f;->a()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 157
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/f;->a()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/d;->b(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/e;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->b:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/ui/e;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Ljava/lang/String;Ljava/util/Set;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/d;->c(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/d;->e(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/core/client/af;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/f;->c:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v3}, Lcom/google/android/youtube/app/honeycomb/ui/d;->d(Lcom/google/android/youtube/app/honeycomb/ui/d;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/client/af;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_b
.end method
