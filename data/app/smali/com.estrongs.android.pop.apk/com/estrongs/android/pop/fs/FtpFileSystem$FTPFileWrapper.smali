.class public Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;
.super Ljava/io/File;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field ftpFile:Lorg/apache/commons/net/ftp/FTPFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/net/ftp/FTPFile;)V
    .registers 3

    const-string v0, "/sdcard"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;->ftpFile:Lorg/apache/commons/net/ftp/FTPFile;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;->ftpFile:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;->ftpFile:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;->ftpFile:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isFile()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;->ftpFile:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;->ftpFile:Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v0

    return-wide v0
.end method
