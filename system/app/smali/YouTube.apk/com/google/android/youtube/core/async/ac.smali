.class final Lcom/google/android/youtube/core/async/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/aa;

.field private final b:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/aa;Lcom/google/android/youtube/core/async/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ac;->b:Lcom/google/android/youtube/core/async/g;

    .line 50
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ac;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_d

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/aa;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/aa;->a(Lcom/google/android/youtube/core/async/aa;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/async/ab;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/aa;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/ac;->b:Lcom/google/android/youtube/core/async/g;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/android/youtube/core/async/ab;-><init>(Lcom/google/android/youtube/core/async/aa;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method
