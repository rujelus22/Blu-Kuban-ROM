.class final Lcom/google/android/youtube/app/adapter/bd;
.super Lcom/google/android/youtube/app/adapter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/ag;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/google/android/youtube/core/b/ag;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/bd;->a:Lcom/google/android/youtube/core/b/ag;

    const v0, 0x7f08003a

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/adapter/l;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 336
    check-cast p1, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bd;->a:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p3}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :goto_e
    return-void

    :cond_f
    invoke-interface {p3, v1, v1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e
.end method
