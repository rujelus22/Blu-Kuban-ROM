.class Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;
.super Lcom/samsung/swift/service/content/MediaScannerRequest;
.source "SoundPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/sound/SoundPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanAndMakeRingtone"
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private ringtone:Lcom/samsung/swift/service/sound/Ringtone;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/samsung/swift/service/content/MediaScannerRequest;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/swift/service/sound/SoundPlugin$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized getResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->result:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcom/samsung/swift/service/content/MediaScannerRequest;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    const-string v0, ""

    .line 280
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->getUpdatedRows()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 282
    iget-object v1, p0, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->ringtone:Lcom/samsung/swift/service/sound/Ringtone;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/sound/Ringtone;->isSelected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 284
    iget-object v1, p0, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->ringtone:Lcom/samsung/swift/service/sound/Ringtone;

    #calls: Lcom/samsung/swift/service/sound/SoundPlugin;->setAsDefaultRingtone(Landroid/net/Uri;Lcom/samsung/swift/service/sound/Ringtone;)V
    invoke-static {p2, v1}, Lcom/samsung/swift/service/sound/SoundPlugin;->access$100(Landroid/net/Uri;Lcom/samsung/swift/service/sound/Ringtone;)V

    .line 286
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->getContentId()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_1f
    monitor-enter p0

    .line 291
    :try_start_20
    iput-object v0, p0, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->result:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 293
    monitor-exit p0

    .line 294
    return-void

    .line 293
    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public scan(Lcom/samsung/swift/service/sound/Ringtone;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "ringtone"
    .parameter "values"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->setPath(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p2}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->setContentValues(Landroid/content/ContentValues;)V

    .line 265
    iput-object p1, p0, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->ringtone:Lcom/samsung/swift/service/sound/Ringtone;

    .line 266
    invoke-virtual {p0}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->dispatch()V

    .line 267
    return-void
.end method
