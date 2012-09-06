.class final Lcom/google/android/youtube/app/honeycomb/phone/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bc;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bc;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->e(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bc;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/app/adapter/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bc;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/bj;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bc;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    const v1, 0x7f0b01ee

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method
