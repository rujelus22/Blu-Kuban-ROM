.class public Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/dlnaservice/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private count:I

.field private final listener:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

.field private transferred:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;)V
    .registers 5
    .parameter "out"
    .parameter "listener"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 325
    iput-object p2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->listener:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->transferred:J

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    .line 328
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 343
    iget-wide v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->transferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->transferred:J

    .line 344
    iget v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1c

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->listener:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

    iget-wide v1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->transferred:J

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;->changed(J)V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    .line 348
    :cond_1c
    iget v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    .line 349
    return-void
.end method

.method public write([BII)V
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 332
    iget-wide v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->transferred:J

    .line 333
    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$114(J)J

    .line 334
    iget v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1f

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->listener:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

    iget-wide v1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->transferred:J

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;->changed(J)V

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    .line 338
    :cond_1f
    iget v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;->count:I

    .line 339
    return-void
.end method
