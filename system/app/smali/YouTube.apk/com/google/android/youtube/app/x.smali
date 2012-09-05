.class final Lcom/google/android/youtube/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/v;

.field private final b:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/v;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/youtube/app/x;->a:Lcom/google/android/youtube/app/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/app/x;->b:Lcom/google/android/youtube/core/async/g;

    .line 158
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 152
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/x;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 152
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p0, Lcom/google/android/youtube/app/x;->a:Lcom/google/android/youtube/app/v;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/v;->a(Lcom/google/android/youtube/app/v;Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/youtube/app/x;->a:Lcom/google/android/youtube/app/v;

    iget-object v1, p0, Lcom/google/android/youtube/app/x;->b:Lcom/google/android/youtube/core/async/g;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/youtube/app/v;->a(Lcom/google/android/youtube/app/v;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;Lcom/google/android/youtube/core/model/UserAuth;)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v3, p0, Lcom/google/android/youtube/app/x;->a:Lcom/google/android/youtube/app/v;

    invoke-static {v3}, Lcom/google/android/youtube/app/v;->a(Lcom/google/android/youtube/app/v;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/app/v;->b()Lcom/google/android/youtube/app/a/y;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3e
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/youtube/app/x;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/myfeed/users/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v0, Lcom/google/android/youtube/core/model/Page;

    iget v1, p2, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    iget v2, p2, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    iget v3, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    iget-object v6, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Page;-><init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/x;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b
.end method
