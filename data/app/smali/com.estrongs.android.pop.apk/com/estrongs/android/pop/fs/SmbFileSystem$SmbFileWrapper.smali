.class public Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;
.super Ljava/io/File;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field smbFile:Ljcifs/smb/ba;


# direct methods
.method constructor <init>(Ljcifs/smb/ba;)V
    .registers 3

    const-string v0, "/sdcard"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;->smbFile:Ljcifs/smb/ba;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    const-string v0, "smb://fake"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;->smbFile:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;->smbFile:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->v()Z
    :try_end_5
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isFile()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;->smbFile:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->w()Z
    :try_end_5
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public lastModified()J
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;->smbFile:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;->smbFile:Ljcifs/smb/ba;

    invoke-virtual {v0}, Ljcifs/smb/ba;->F()J
    :try_end_5
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    :goto_6
    return-wide v0

    :catch_7
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_6
.end method
