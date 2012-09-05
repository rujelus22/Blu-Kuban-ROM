.class final Lcom/google/android/youtube/app/ui/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/bw;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/cc;-><init>(Lcom/google/android/youtube/app/ui/bw;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/bw;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    const-string v0, "Error retrieving user profile "

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 105
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bw;->a(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/app/a/s;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/a/s;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bw;->c(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cc;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bw;->b(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/af;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method
