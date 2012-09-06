.class public abstract Lcom/google/android/music/dl/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

.field protected final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 3
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadHandler;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadHandler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract downloadSucceeded()Z
.end method

.method public abstract downloadTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getFileExtension()Ljava/lang/String;
.end method

.method public abstract prepareInputStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V
    .registers 3
    .parameter "order"
    .parameter "storeService"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 37
    return-void
.end method
