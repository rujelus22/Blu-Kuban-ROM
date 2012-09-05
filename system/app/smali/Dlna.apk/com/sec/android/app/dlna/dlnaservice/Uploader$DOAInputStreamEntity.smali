.class Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/dlnaservice/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DOAInputStreamEntity"
.end annotation


# instance fields
.field private handler:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

.field final synthetic this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/dlnaservice/Uploader;Ljava/io/InputStream;J)V
    .registers 6
    .parameter
    .parameter "instream"
    .parameter "length"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    .line 299
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->handler:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

    .line 300
    return-void
.end method


# virtual methods
.method public setWriteEventHandler(Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->handler:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

    .line 311
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;

    iget-object v1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->handler:Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 305
    return-void
.end method
