.class public Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;
.super Ljava/io/File;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field attr:Lcom/jcraft/jsch/SftpATTRS;

.field sftpFile:Lcom/jcraft/jsch/ChannelSftp$LsEntry;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)V
    .registers 3

    const-string v0, "/sdcard"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->sftpFile:Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    const-string v0, "sftp://fake"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->sftpFile:Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public lastModified()J
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->k()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v0

    return-wide v0
.end method
