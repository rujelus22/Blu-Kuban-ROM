.class final Lcom/google/android/youtube/app/honeycomb/phone/bl;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

.field private final b:Lcom/google/android/youtube/core/model/Video;

.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;Lcom/google/android/youtube/core/model/Video;Landroid/app/Activity;Lcom/google/android/youtube/core/d;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    .line 119
    invoke-direct {p0, p4}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 120
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->b:Lcom/google/android/youtube/core/model/Video;

    .line 121
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->d:Landroid/app/Activity;

    .line 122
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->b:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->d:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->f(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 127
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 112
    const-string v0, "Error deleting from playlist"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->d:Landroid/app/Activity;

    const v1, 0x7f0b01d8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->a:Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bl;->b:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/ba;->b(Ljava/lang/Object;)V

    return-void
.end method
