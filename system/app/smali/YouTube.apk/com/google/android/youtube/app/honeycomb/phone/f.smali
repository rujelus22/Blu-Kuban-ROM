.class abstract Lcom/google/android/youtube/app/honeycomb/phone/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/e;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V
    .registers 3
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/f;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/youtube/core/model/Page;)Landroid/net/Uri;
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 180
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->a(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/e;->e(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/app/honeycomb/ui/a;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 180
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/f;->a(Lcom/google/android/youtube/core/model/Page;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->a(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    if-eqz v2, :cond_50

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/e;->b(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/e;->b(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_2e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->d(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/e;->c(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/youtube/core/client/af;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    :goto_40
    return-void

    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v3}, Lcom/google/android/youtube/app/honeycomb/phone/e;->b(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_50
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/e;->e(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/app/honeycomb/ui/a;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/a;->a(Ljava/lang/String;)V

    goto :goto_40
.end method
