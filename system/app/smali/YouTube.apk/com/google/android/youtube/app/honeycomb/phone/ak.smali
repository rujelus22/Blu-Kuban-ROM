.class public final Lcom/google/android/youtube/app/honeycomb/phone/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/o;


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
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    if-nez v0, :cond_11

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    :cond_11
    return-void
.end method

.method public final a(Landroid/net/Uri;IZLcom/google/android/youtube/core/client/al;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Landroid/net/Uri;IZLcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public final a(Landroid/net/Uri;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/PlaylistActivity;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/EditVideoActivity;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/client/al;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
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
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public final i()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public final j()V
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    const-class v3, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public final k()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
