.class public Lcom/android/inputmethod/latin/FileTransforms;
.super Ljava/lang/Object;
.source "FileTransforms.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCryptedStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 1
    .parameter "out"

    .prologue
    .line 28
    return-object p0
.end method

.method public static getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 1
    .parameter "in"

    .prologue
    .line 33
    return-object p0
.end method

.method public static getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
