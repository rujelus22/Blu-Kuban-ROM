.class final Lcom/google/android/youtube/core/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/d;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/b/d;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/youtube/core/b/e;->a:Lcom/google/android/youtube/core/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/b/d;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/b/e;-><init>(Lcom/google/android/youtube/core/b/d;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 162
    check-cast p1, Lcom/google/android/youtube/core/converter/http/b;

    const-string v0, "Error retrieving ad tag"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/b/e;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 162
    check-cast p1, Lcom/google/android/youtube/core/converter/http/b;

    check-cast p2, Lcom/google/android/youtube/core/model/a;

    if-eqz p2, :cond_2e

    iget-object v0, p2, Lcom/google/android/youtube/core/model/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/youtube/core/b/e;->a:Lcom/google/android/youtube/core/b/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/b/d;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    new-instance v0, Lcom/google/android/youtube/core/b/f;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/e;->a:Lcom/google/android/youtube/core/b/d;

    iget-object v2, p1, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/b/f;-><init>(Lcom/google/android/youtube/core/b/d;Ljava/lang/String;Ljava/util/Iterator;J)V

    iget-object v1, p0, Lcom/google/android/youtube/core/b/e;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/d;->a(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/core/b/e;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2d
.end method
