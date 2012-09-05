.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileInputStream;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private closed:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private manifestEntry:Ljava/util/zip/ZipEntry;

.field verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 5
    .parameter "file"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 167
    if-eqz p2, :cond_13

    .line 168
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 170
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .registers 6
    .parameter "file"
    .parameter "verify"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 188
    if-eqz p2, :cond_13

    .line 189
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 191
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "filename"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 220
    if-eqz p2, :cond_f

    .line 221
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-direct {v0, p1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 223
    :cond_f
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 224
    return-void
.end method

.method private static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "s"
    .parameter "suffix"

    .prologue
    .line 355
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;
    .registers 7

    .prologue
    .line 428
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 430
    .local v0, allEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 431
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 432
    .local v3, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "META-INF/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_b

    .line 434
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 437
    .end local v3           #ze:Ljava/util/zip/ZipEntry;
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3f

    .line 438
    const/4 v2, 0x0

    .line 442
    :goto_3e
    return-object v2

    .line 440
    :cond_3f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/util/zip/ZipEntry;

    .line 441
    .local v2, result:[Ljava/util/zip/ZipEntry;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3e
.end method

.method private readMetaEntries()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 318
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 319
    .local v6, metaEntries:[Ljava/util/zip/ZipEntry;
    if-nez v6, :cond_a

    .line 320
    iput-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 352
    :cond_9
    :goto_9
    return-void

    .line 324
    :cond_a
    const/4 v7, 0x0

    .line 326
    .local v7, signed:Z
    move-object v0, v6

    .local v0, arr$:[Ljava/util/zip/ZipEntry;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v5, :cond_28

    aget-object v1, v0, v3

    .line 327
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, entryName:Ljava/lang/String;
    iget-object v8, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-nez v8, :cond_2d

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 330
    iput-object v1, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    .line 332
    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-nez v8, :cond_57

    .line 349
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #entryName:Ljava/lang/String;
    :cond_28
    if-nez v7, :cond_9

    .line 350
    iput-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    goto :goto_9

    .line 337
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #entryName:Ljava/lang/String;
    :cond_2d
    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v8, :cond_57

    const-string v8, ".SF"

    invoke-static {v2, v8}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_49

    const-string v8, ".DSA"

    invoke-static {v2, v8}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_49

    const-string v8, ".RSA"

    invoke-static {v2, v8}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 341
    :cond_49
    const/4 v7, 0x1

    .line 342
    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 343
    .local v4, is:Ljava/io/InputStream;
    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 326
    .end local v4           #is:Ljava/io/InputStream;
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 455
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/util/jar/JarFile$1JarFileEnumerator;

    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Ljava/util/jar/JarFile$1JarFileEnumerator;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .parameter "name"

    .prologue
    .line 412
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 413
    .local v1, ze:Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_7

    .line 418
    .end local v1           #ze:Ljava/util/zip/ZipEntry;
    :goto_6
    return-object v1

    .line 416
    .restart local v1       #ze:Ljava/util/zip/ZipEntry;
    :cond_7
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 417
    .local v0, je:Ljava/util/jar/JarEntry;
    iput-object p0, v0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    move-object v1, v0

    .line 418
    goto :goto_6
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 8
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v3, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-eqz v3, :cond_8

    .line 371
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 373
    :cond_8
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_43

    .line 374
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/jar/JarVerifier;->setManifest(Ljava/util/jar/Manifest;)V

    .line 375
    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v3, :cond_23

    .line 376
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v4, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v4}, Ljava/util/jar/Manifest;->getMainAttributesEnd()I

    move-result v4

    iput v4, v3, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    .line 378
    :cond_23
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 379
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->removeMetaEntries()V

    .line 380
    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v3, :cond_39

    .line 381
    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->removeChunks()V

    .line 383
    :cond_39
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    move-result v3

    if-nez v3, :cond_43

    .line 384
    iput-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 388
    :cond_43
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 389
    .local v1, in:Ljava/io/InputStream;
    if-nez v1, :cond_4b

    move-object v1, v2

    .line 399
    .end local v1           #in:Ljava/io/InputStream;
    :cond_4a
    :goto_4a
    return-object v1

    .line 392
    .restart local v1       #in:Ljava/io/InputStream;
    :cond_4b
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_4a

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4a

    .line 395
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    .line 396
    .local v0, entry:Ljava/util/jar/JarVerifier$VerifierEntry;
    if-eqz v0, :cond_4a

    .line 399
    new-instance v2, Ljava/util/jar/JarFile$JarFileInputStream;

    invoke-direct {v2, v1, p1, v0}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier$VerifierEntry;)V

    move-object v1, v2

    goto :goto_4a
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .registers 3
    .parameter "name"

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 283
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz v2, :cond_d

    .line 284
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "JarFile has been closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_d
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v2, :cond_14

    .line 287
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 304
    :goto_13
    return-object v2

    .line 290
    :cond_14
    :try_start_14
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 291
    .local v1, is:Ljava/io/InputStream;
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_33

    .line 292
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 293
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_32} :catch_4f

    move-result-object v1

    .line 296
    :cond_33
    :try_start_33
    new-instance v3, Ljava/util/jar/Manifest;

    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_48

    const/4 v2, 0x1

    :goto_3a
    invoke-direct {v3, v1, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;Z)V

    iput-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_4a

    .line 298
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 300
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_45} :catch_4f

    .line 304
    .end local v1           #is:Ljava/io/InputStream;
    :goto_45
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    goto :goto_13

    .line 296
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_48
    const/4 v2, 0x0

    goto :goto_3a

    .line 298
    :catchall_4a
    move-exception v2

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_4b .. :try_end_4f} :catch_4f

    .line 301
    .end local v1           #is:Ljava/io/InputStream;
    :catch_4f
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/NullPointerException;
    iput-object v5, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    goto :goto_45
.end method
