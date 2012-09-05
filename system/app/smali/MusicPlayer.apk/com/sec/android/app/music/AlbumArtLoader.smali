.class public Lcom/sec/android/app/music/AlbumArtLoader;
.super Ljava/lang/Object;
.source "AlbumArtLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field public static final mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

.field private static final mListAlbumArtHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    const-class v0, Lcom/sec/android/app/music/AlbumArtLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->CLASSNAME:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/sec/android/app/music/AlbumArtLoader$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/AlbumArtLoader$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->mListAlbumArtHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    invoke-direct {v0}, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    .line 54
    sget-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->CLASSNAME:Ljava/lang/String;

    const-string v1, "AlbumArtLoaderThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->start()V

    .line 56
    sget-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    const-string v1, "ListAlbumArtLoader"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->setName(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/sec/android/app/music/AlbumArtLoader;->mListAlbumArtHandler:Landroid/os/Handler;

    return-object v0
.end method
