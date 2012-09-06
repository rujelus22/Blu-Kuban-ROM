.class final Lcom/google/android/youtube/app/ui/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dc;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/dc;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/de;->a:Lcom/google/android/youtube/app/ui/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/dc;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/de;-><init>(Lcom/google/android/youtube/app/ui/dc;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    const-string v0, "Error retrieving user profile "

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 64
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/de;->a:Lcom/google/android/youtube/app/ui/dc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dc;->a(Lcom/google/android/youtube/app/ui/dc;)Lcom/google/android/youtube/app/adapter/bm;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/adapter/bm;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/de;->a:Lcom/google/android/youtube/app/ui/dc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dc;->c(Lcom/google/android/youtube/app/ui/dc;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/de;->a:Lcom/google/android/youtube/app/ui/dc;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/dc;->b(Lcom/google/android/youtube/app/ui/dc;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method
