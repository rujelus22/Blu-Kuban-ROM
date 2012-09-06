.class public final Lcom/google/android/youtube/app/honeycomb/phone/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/a;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    if-nez v0, :cond_11

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :cond_11
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public final a(Landroid/net/Uri;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public final a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public final a(Landroid/net/Uri;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public final i()V
    .registers 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    const-class v3, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bk;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
