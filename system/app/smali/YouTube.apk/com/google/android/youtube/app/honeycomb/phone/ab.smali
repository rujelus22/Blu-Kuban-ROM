.class final Lcom/google/android/youtube/app/honeycomb/phone/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/t;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Playlist;)V
    .registers 3
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/app/ui/bq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bq;->c(Ljava/lang/Object;)V

    .line 226
    return-void
.end method
