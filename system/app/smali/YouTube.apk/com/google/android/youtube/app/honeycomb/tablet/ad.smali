.class public final Lcom/google/android/youtube/app/honeycomb/tablet/ad;
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public final a(Landroid/net/Uri;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public final a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public final a(Landroid/net/Uri;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 134
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    const v2, 0x7f080034

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    const v2, 0x7f080035

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    const v2, 0x7f0800aa

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public final g()V
    .registers 1

    .prologue
    .line 130
    return-void
.end method

.method public final h()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    const v2, 0x7f080037

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public final i()V
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Landroid/app/Activity;

    const-class v3, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public final j()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method
