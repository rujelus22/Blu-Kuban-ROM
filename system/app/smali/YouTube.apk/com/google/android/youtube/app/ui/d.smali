.class final Lcom/google/android/youtube/app/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/b;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/b;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/d;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "subscriptionUri cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/d;->b:Landroid/net/Uri;

    .line 95
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/d;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/b;->d(Lcom/google/android/youtube/app/ui/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 88
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/d;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/b;->a(Lcom/google/android/youtube/app/ui/b;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/d;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/d;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/b;->c(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/d;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/b;->b(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/core/async/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/af;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/d;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/b;->d(Lcom/google/android/youtube/app/ui/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
