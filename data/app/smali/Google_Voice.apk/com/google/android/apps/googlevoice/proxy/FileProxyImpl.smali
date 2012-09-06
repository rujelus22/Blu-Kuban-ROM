.class public Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;
.super Ljava/lang/Object;
.source "FileProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/FileProxy;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .parameter "file"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    .line 23
    return-void
.end method


# virtual methods
.method public createNewFile()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    return v0
.end method

.method public delete()Z
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->getOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(Z)Ljava/io/OutputStream;
    .registers 4
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public mkdir()Z
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public mkdirs()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/FileProxyImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method
