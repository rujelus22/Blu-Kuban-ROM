.class final Lcom/google/android/youtube/app/ui/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/dh;)V
    .registers 3
    .parameter

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/dl;-><init>(Lcom/google/android/youtube/app/ui/dh;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/dh;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dl;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 303
    const-string v0, "Error retrieving user profile"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dl;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->e(Lcom/google/android/youtube/app/ui/dh;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 303
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dl;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->d(Lcom/google/android/youtube/app/ui/dh;)Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dl;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/dh;->b(Lcom/google/android/youtube/app/ui/dh;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dl;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/dh;->c(Lcom/google/android/youtube/app/ui/dh;)Lcom/google/android/youtube/app/ui/dk;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/af;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    :cond_21
    return-void
.end method
