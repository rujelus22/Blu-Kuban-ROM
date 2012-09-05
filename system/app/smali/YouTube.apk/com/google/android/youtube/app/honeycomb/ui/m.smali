.class final Lcom/google/android/youtube/app/honeycomb/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/h;

.field private final b:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/h;)V
    .registers 5
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/ui/h;->k(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/l;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/h;Z)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->b:Lcom/google/android/youtube/core/async/g;

    .line 185
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 179
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->a:Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/h;->i(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/m;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/af;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    :cond_13
    return-void
.end method
