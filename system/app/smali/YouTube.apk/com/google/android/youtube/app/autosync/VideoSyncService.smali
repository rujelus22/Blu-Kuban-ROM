.class public Lcom/google/android/youtube/app/autosync/VideoSyncService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/autosync/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/autosync/VideoSyncService;->a:Lcom/google/android/youtube/app/autosync/a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/app/autosync/VideoSyncService;->a:Lcom/google/android/youtube/app/autosync/a;

    if-nez v0, :cond_15

    .line 23
    new-instance v1, Lcom/google/android/youtube/app/autosync/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/autosync/VideoSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/app/autosync/VideoSyncService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/app/autosync/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/YouTubeApplication;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/autosync/VideoSyncService;->a:Lcom/google/android/youtube/app/autosync/a;

    .line 26
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/autosync/VideoSyncService;->a:Lcom/google/android/youtube/app/autosync/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/autosync/a;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
