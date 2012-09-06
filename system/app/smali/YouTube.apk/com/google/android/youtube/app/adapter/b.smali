.class final Lcom/google/android/youtube/app/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/a;

.field private final b:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/a;Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/b;->a:Lcom/google/android/youtube/app/adapter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/b;->b:Lcom/google/android/youtube/core/async/l;

    .line 45
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 40
    const-string v0, "Error retrieving user profile"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/b;->b:Lcom/google/android/youtube/core/async/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/b;->a:Lcom/google/android/youtube/app/adapter/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/a;->a(Lcom/google/android/youtube/app/adapter/a;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/b;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->d(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method
