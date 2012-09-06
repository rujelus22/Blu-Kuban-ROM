.class final Lcom/google/android/youtube/app/honeycomb/phone/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/a;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/a;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/b;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/a;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/b;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 220
    const-string v0, "Error in AccountLayer.PlaylistsCallback"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 220
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/b;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->f(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    new-instance v3, Lcom/google/android/youtube/app/ui/cg;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/b;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    iget-object v4, v4, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/b;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v5}, Lcom/google/android/youtube/app/honeycomb/phone/a;->d(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/b;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v6}, Lcom/google/android/youtube/app/honeycomb/phone/a;->e(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/app/ui/StackButton;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/app/ui/cg;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/core/b/ae;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    :cond_37
    return-void
.end method
