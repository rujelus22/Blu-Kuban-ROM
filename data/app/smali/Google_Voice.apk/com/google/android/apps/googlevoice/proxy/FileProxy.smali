.class public interface abstract Lcom/google/android/apps/googlevoice/proxy/FileProxy;
.super Ljava/lang/Object;
.source "FileProxy.java"


# virtual methods
.method public abstract createNewFile()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract getOutputStream(Z)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract getParent()Ljava/lang/String;
.end method

.method public abstract length()J
.end method

.method public abstract mkdir()Z
.end method

.method public abstract mkdirs()Z
.end method
