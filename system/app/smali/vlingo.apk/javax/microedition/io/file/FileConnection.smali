.class public Ljavax/microedition/io/file/FileConnection;
.super Ljava/lang/Object;
.source "FileConnection.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public availableSize()J
    .registers 3

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public canRead()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public canWrite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public create()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public delete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public exists()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public fileSize()J
    .registers 3

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public mkdir()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOutputStream(J)Ljava/io/OutputStream;
    .registers 4
    .parameter "fileSize"

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public truncate(I)V
    .registers 2
    .parameter "i"

    .prologue
    .line 64
    return-void
.end method
