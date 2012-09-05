.class final Lcom/google/android/youtube/app/honeycomb/phone/am;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

.field private final b:Lcom/google/android/youtube/core/model/Video;

.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;Lcom/google/android/youtube/core/model/Video;Landroid/app/Activity;Lcom/google/android/youtube/core/e;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    .line 102
    invoke-direct {p0, p4}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 103
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->b:Lcom/google/android/youtube/core/model/Video;

    .line 104
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->d:Landroid/app/Activity;

    .line 105
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->b:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->d:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 110
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    const-string v0, "Error deleting from playlist"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->c:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->d:Landroid/app/Activity;

    const v1, 0x7f0a017b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/am;->b:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/a/x;->a(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
