.class final Lcom/google/android/youtube/app/honeycomb/phone/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/z;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bb;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Playlist;)V
    .registers 3
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bb;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/app/ui/ci;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ci;->c(Ljava/lang/Object;)V

    .line 223
    return-void
.end method
