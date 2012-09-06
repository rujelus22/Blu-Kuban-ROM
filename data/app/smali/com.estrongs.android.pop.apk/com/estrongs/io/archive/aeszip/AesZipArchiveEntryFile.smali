.class public Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;
.super Lcom/estrongs/io/model/ArchiveEntryFile;


# static fields
.field private static final serialVersionUID:J = 0x32780266f54df572L


# instance fields
.field private archiveEntry:Lde/a/a/a/a/i;


# direct methods
.method public constructor <init>(Lde/a/a/a/a/i;)V
    .registers 3

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/io/model/ArchiveEntryFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->archiveEntry:Lde/a/a/a/a/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;-><init>(Ljava/lang/String;)V

    new-instance v0, Lde/a/a/a/a/i;

    invoke-direct {v0, p1}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->archiveEntry:Lde/a/a/a/a/i;

    return-void
.end method


# virtual methods
.method public getArchiveEntry()Lde/a/a/a/a/i;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->archiveEntry:Lde/a/a/a/a/i;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->archiveEntry:Lde/a/a/a/a/i;

    invoke-virtual {v0}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDirectory()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->archiveEntry:Lde/a/a/a/a/i;

    invoke-virtual {v0}, Lde/a/a/a/a/i;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->archiveEntry:Lde/a/a/a/a/i;

    invoke-virtual {v0}, Lde/a/a/a/a/i;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->archiveEntry:Lde/a/a/a/a/i;

    invoke-virtual {v0}, Lde/a/a/a/a/i;->d()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
