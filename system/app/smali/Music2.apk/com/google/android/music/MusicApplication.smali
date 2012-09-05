.class public Lcom/google/android/music/MusicApplication;
.super Landroid/app/Application;
.source "MusicApplication.java"


# instance fields
.field mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 27
    new-instance v0, Lcom/google/android/music/MusicApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicApplication$1;-><init>(Lcom/google/android/music/MusicApplication;)V

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->openPlaylistCursor(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 24
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/music/MusicUtils;->closePlaylistCursor()V

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 46
    return-void
.end method
