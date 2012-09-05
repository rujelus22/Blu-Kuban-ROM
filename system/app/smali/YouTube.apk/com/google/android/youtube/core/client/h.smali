.class final Lcom/google/android/youtube/core/client/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/e;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Iterator;

.field private d:J

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/client/e;Ljava/lang/String;Ljava/util/Iterator;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/google/android/youtube/core/client/h;->b:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/google/android/youtube/core/client/h;->c:Ljava/util/Iterator;

    .line 183
    iput-wide p4, p0, Lcom/google/android/youtube/core/client/h;->d:J

    .line 184
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 172
    const-string v0, "Error retrieving VAST ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    iget-object v0, v0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/client/h;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/h;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2a
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 172
    check-cast p2, Lcom/google/android/youtube/core/model/o;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/o;->b()Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_a
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/o;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->e:Ljava/util/List;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/h;->e:Ljava/util/List;

    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->e:Ljava/util/List;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    iget-object v0, v0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/client/h;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/h;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    :goto_49
    return-void

    :cond_4a
    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/h;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_49

    :cond_57
    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->e:Ljava/util/List;

    if-eqz v0, :cond_69

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/o;->a()Lcom/google/android/youtube/core/model/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/h;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/p;->a(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/p;->b()Lcom/google/android/youtube/core/model/o;

    move-result-object p2

    :cond_69
    iget-object v0, p2, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->c(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/e;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/client/i;

    iget-object v3, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    iget-object v4, p0, Lcom/google/android/youtube/core/client/h;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p2}, Lcom/google/android/youtube/core/client/i;-><init>(Lcom/google/android/youtube/core/client/e;Ljava/lang/String;Lcom/google/android/youtube/core/model/o;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_49

    :cond_8a
    iget-object v0, p0, Lcom/google/android/youtube/core/client/h;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_49
.end method
