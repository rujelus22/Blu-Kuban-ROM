.class public Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;
.super Ljava/lang/Object;
.source "NavigationImpl.java"

# interfaces
.implements Lcom/google/android/youtube/videos/Navigation;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;->activity:Landroid/app/Activity;

    .line 18
    return-void
.end method


# virtual methods
.method public toFullscreenWatch(Ljava/lang/String;)V
    .registers 4
    .parameter "videoId"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->createFullscreenIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public toSettings()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/honeycomb/SettingsActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public toWatch(Ljava/lang/String;)V
    .registers 4
    .parameter "videoId"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method
