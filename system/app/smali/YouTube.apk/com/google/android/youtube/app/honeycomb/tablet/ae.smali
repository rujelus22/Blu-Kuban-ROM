.class public final Lcom/google/android/youtube/app/honeycomb/tablet/ae;
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 30
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
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Landroid/net/Uri;IZLcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

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
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/client/al;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

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
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ResultsActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 119
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    const v2, 0x7f09002b

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
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    const v2, 0x7f09002c

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    const v2, 0x7f090060

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public final g()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method

.method public final h()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    const v2, 0x7f09002e

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public final i()V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    const v2, 0x7f09005f

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public final j()V
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a:Landroid/app/Activity;

    const-class v3, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public final k()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method
