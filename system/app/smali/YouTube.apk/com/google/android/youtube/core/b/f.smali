.class final Lcom/google/android/youtube/core/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/d;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Iterator;

.field private d:J

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/b/d;Ljava/lang/String;Ljava/util/Iterator;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p2, p0, Lcom/google/android/youtube/core/b/f;->b:Ljava/lang/String;

    .line 193
    iput-object p3, p0, Lcom/google/android/youtube/core/b/f;->c:Ljava/util/Iterator;

    .line 194
    iput-wide p4, p0, Lcom/google/android/youtube/core/b/f;->d:J

    .line 195
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 183
    const-string v0, "Error retrieving VAST ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/b/d;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/b/f;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->a(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2a
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 183
    check-cast p2, Lcom/google/android/youtube/core/model/n;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/n;->c()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/n;->b()Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_10
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->e:Ljava/util/List;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/f;->e:Ljava/util/List;

    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->e:Ljava/util/List;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/n;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/b/d;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/b/f;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->a(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    :goto_4f
    return-void

    :cond_50
    iget-object v0, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4f

    :cond_5d
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/n;->a()Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/o;->b()Lcom/google/android/youtube/core/model/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->e:Ljava/util/List;

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/n;->a()Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->a(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/o;->b()Lcom/google/android/youtube/core/model/n;

    move-result-object v0

    :cond_7d
    iget-object v1, v0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/d;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/d;->c(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/d;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/b/g;

    iget-object v4, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    iget-object v5, p0, Lcom/google/android/youtube/core/b/f;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/youtube/core/b/g;-><init>(Lcom/google/android/youtube/core/b/d;Ljava/lang/String;Lcom/google/android/youtube/core/model/n;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/b/ae;->c(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_4f

    :cond_9e
    iget-object v1, p0, Lcom/google/android/youtube/core/b/f;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/f;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4f
.end method
