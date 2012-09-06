.class final Lcom/google/android/youtube/app/honeycomb/phone/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/v;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ay;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    iput p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ay;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 107
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ay;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;Lcom/google/android/youtube/core/model/Playlist;)Lcom/google/android/youtube/core/model/Playlist;

    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ay;->a:I

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ay;->b:Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->showDialog(I)V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
