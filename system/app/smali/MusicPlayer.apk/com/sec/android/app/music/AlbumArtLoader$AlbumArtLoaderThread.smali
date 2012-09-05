.class public Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;
.super Ljava/lang/Thread;
.source "AlbumArtLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AlbumArtLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumArtLoaderThread"
.end annotation


# instance fields
.field public mBackThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    invoke-static {}, Lcom/sec/android/app/music/AlbumArtLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumArtLoaderThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/sec/android/app/music/AlbumArtLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumArtLoaderThread run..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 71
    new-instance v0, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread$1;-><init>(Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->mBackThreadHandler:Landroid/os/Handler;

    .line 93
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 94
    return-void
.end method
