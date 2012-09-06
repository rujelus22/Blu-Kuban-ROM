.class final Lcom/google/android/youtube/app/honeycomb/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field public final a:Ljava/util/Set;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/ui/d;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/d;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->b:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->c:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->a:Ljava/util/Set;

    .line 202
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->b:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/d;->c(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->b:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/app/honeycomb/ui/b;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->c(Landroid/net/Uri;)V

    goto :goto_11

    :cond_29
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 194
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->b:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/d;->c(Lcom/google/android/youtube/app/honeycomb/ui/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/e;->b:Lcom/google/android/youtube/app/honeycomb/ui/d;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a(Lcom/google/android/youtube/app/honeycomb/ui/d;)Lcom/google/android/youtube/app/honeycomb/ui/b;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/youtube/app/honeycomb/ui/b;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_13

    :cond_2b
    return-void
.end method
