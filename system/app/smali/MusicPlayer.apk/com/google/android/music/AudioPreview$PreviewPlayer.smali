.class Lcom/google/android/music/AudioPreview$PreviewPlayer;
.super Landroid/media/MediaPlayer;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPlayer"
.end annotation


# instance fields
.field mActivity:Lcom/google/android/music/AudioPreview;

.field mIsPrepared:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 440
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AudioPreview$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method isPrepared()Z
    .registers 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    .line 462
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/google/android/music/AudioPreview;

    invoke-virtual {v0, p1}, Lcom/google/android/music/AudioPreview;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 463
    return-void
.end method

.method public setActivity(Lcom/google/android/music/AudioPreview;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/google/android/music/AudioPreview;

    .line 446
    invoke-virtual {p0, p0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 447
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/google/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 448
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/google/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 449
    return-void
.end method

.method public setDataSourceAndPrepare(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/google/android/music/AudioPreview;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 454
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->prepareAsync()V

    .line 455
    return-void
.end method
