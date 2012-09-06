.class public abstract Lcom/google/android/youtube/core/ui/q;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"


# instance fields
.field protected final h:Lcom/google/android/youtube/core/a/d;

.field protected final i:Lcom/google/android/youtube/core/b/ag;

.field protected final j:Lcom/google/android/youtube/core/async/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/d;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 47
    const-string v0, "imageClient may not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/q;->i:Lcom/google/android/youtube/core/b/ag;

    .line 48
    const-string v0, "adapter may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/a/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/q;->h:Lcom/google/android/youtube/core/a/d;

    .line 49
    new-instance v0, Lcom/google/android/youtube/core/ui/r;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/r;-><init>(Lcom/google/android/youtube/core/ui/q;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/q;->j:Lcom/google/android/youtube/core/async/c;

    .line 51
    return-void
.end method


# virtual methods
.method protected final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/q;->j:Lcom/google/android/youtube/core/async/c;

    const-string v1, "callback can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/q;->h:Lcom/google/android/youtube/core/a/d;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/a/d;->a(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/q;->i:Lcom/google/android/youtube/core/b/ag;

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/b/ag;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 68
    :cond_13
    return-void
.end method

.method protected a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/q;->b(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/q;->a(Landroid/net/Uri;)V

    goto :goto_4

    .line 58
    :cond_16
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)Landroid/net/Uri;
.end method
