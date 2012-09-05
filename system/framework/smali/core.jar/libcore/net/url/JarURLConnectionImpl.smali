.class public Llibcore/net/url/JarURLConnectionImpl;
.super Ljava/net/JarURLConnection;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;
    }
.end annotation


# static fields
.field static jarCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarInput:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 73
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    .line 74
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 75
    return-void
.end method

.method static synthetic access$002(Llibcore/net/url/JarURLConnectionImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    return p1
.end method

.method public static closeCachedFiles()V
    .registers 5

    .prologue
    .line 353
    sget-object v3, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 354
    .local v1, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    sget-object v4, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 355
    :try_start_9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_29

    move-result v3

    if-eqz v3, :cond_27

    .line 358
    :try_start_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile;

    .line 359
    .local v2, zip:Ljava/util/zip/ZipFile;
    if-eqz v2, :cond_d

    .line 360
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_25

    goto :goto_d

    .line 362
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    :catch_25
    move-exception v3

    goto :goto_d

    .line 366
    :cond_27
    :try_start_27
    monitor-exit v4

    .line 367
    return-void

    .line 366
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method private findJarEntry()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 204
    :cond_6
    return-void

    .line 200
    :cond_7
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    .line 201
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_6

    .line 202
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findJarFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, jar:Ljava/util/jar/JarFile;
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getUseCaches()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 113
    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 114
    :try_start_a
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 115
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_46

    .line 116
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_3c

    .line 117
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    .line 118
    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 119
    :try_start_22
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 120
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_49

    .line 121
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 126
    :goto_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_4d

    .line 132
    :cond_3c
    :goto_3c
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_57

    .line 133
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 115
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1

    .line 124
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    goto :goto_3b

    .line 126
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v1

    .line 129
    :cond_50
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    goto :goto_3c

    .line 135
    :cond_57
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_d

    .line 83
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarFile()V

    .line 84
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarEntry()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    .line 87
    :cond_d
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 306
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_a

    .line 307
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 309
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getContentLength()I
    .registers 3

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 276
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_e

    .line 277
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 283
    :goto_d
    return v0

    .line 279
    :cond_e
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_18

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_d

    .line 280
    :catch_18
    move-exception v0

    .line 283
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 240
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 242
    const-string v0, "x-java/jar"

    .line 261
    :cond_10
    :goto_10
    return-object v0

    .line 244
    :cond_11
    const/4 v0, 0x0

    .line 245
    .local v0, cType:Ljava/lang/String;
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, entryName:Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 249
    invoke-static {v1}, Llibcore/net/url/JarURLConnectionImpl;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_1c
    if-nez v0, :cond_10

    .line 259
    const-string v0, "content/unknown"

    goto :goto_10

    .line 252
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 253
    iget-object v2, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_1c

    .line 254
    :catch_2b
    move-exception v2

    goto :goto_1c
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    if-eqz v0, :cond_c

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JarURLConnection InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_c
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 220
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_16

    .line 221
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    .line 226
    :goto_15
    return-object v0

    .line 223
    :cond_16
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_22

    .line 224
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Jar entry not specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_22
    new-instance v0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;

    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-direct {v0, p0, v1, v2}, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;-><init>(Llibcore/net/url/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    goto :goto_15
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 188
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 101
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method openJarFile()Ljava/util/jar/JarFile;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 138
    iget-object v11, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    const-string v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 139
    iget-object v10, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, decodedFile:Ljava/lang/String;
    new-instance v10, Ljava/util/jar/JarFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v13, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 170
    .end local v1           #decodedFile:Ljava/lang/String;
    :cond_24
    :goto_24
    return-object v10

    .line 142
    :cond_25
    iget-object v11, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 144
    .local v6, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 145
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 147
    .local v8, result:Ljava/util/jar/JarFile;
    :try_start_31
    const-string v11, "hyjar_"

    const-string v12, ".tmp"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 148
    .local v9, tempJar:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 149
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_84
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_42} :catch_9f

    .line 150
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    const/16 v11, 0x1000

    :try_start_44
    new-array v0, v11, [B

    .line 151
    .local v0, buf:[B
    const/4 v7, 0x0

    .line 152
    .local v7, nbytes:I
    :goto_47
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v11, -0x1

    if-le v7, v11, :cond_60

    .line 153
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_52} :catch_53

    goto :goto_47

    .line 157
    .end local v0           #buf:[B
    .end local v7           #nbytes:I
    :catch_53
    move-exception v2

    move-object v4, v5

    .line 160
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v9           #tempJar:Ljava/io/File;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_55
    if-eqz v4, :cond_5a

    .line 162
    :try_start_57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_8b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_7d

    .line 169
    :cond_5a
    if-eqz v6, :cond_24

    .line 170
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 155
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #nbytes:I
    .restart local v9       #tempJar:Ljava/io/File;
    :cond_60
    :try_start_60
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 156
    new-instance v11, Ljava/util/jar/JarFile;

    const/4 v12, 0x1

    const/4 v13, 0x5

    invoke-direct {v11, v9, v12, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6a} :catch_53

    .line 160
    if-eqz v5, :cond_6f

    .line 162
    :try_start_6c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_99
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_76

    .line 169
    :cond_6f
    if-eqz v6, :cond_74

    .line 170
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_74
    move-object v10, v11

    goto :goto_24

    .line 163
    :catch_76
    move-exception v3

    .line 169
    .local v3, ex:Ljava/io/IOException;
    if-eqz v6, :cond_24

    .line 170
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 163
    .end local v0           #buf:[B
    .end local v3           #ex:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #nbytes:I
    .end local v9           #tempJar:Ljava/io/File;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_7d
    move-exception v3

    .line 169
    .restart local v3       #ex:Ljava/io/IOException;
    if-eqz v6, :cond_24

    .line 170
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 160
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_84
    move-exception v11

    :goto_85
    if-eqz v4, :cond_8a

    .line 162
    :try_start_87
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_92

    .line 170
    :cond_8a
    :try_start_8a
    throw v11
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    .line 169
    :catchall_8b
    move-exception v10

    :goto_8c
    if-eqz v6, :cond_91

    .line 170
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_91
    throw v10

    .line 163
    :catch_92
    move-exception v3

    .line 169
    .restart local v3       #ex:Ljava/io/IOException;
    if-eqz v6, :cond_24

    .line 170
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 169
    .end local v3           #ex:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #nbytes:I
    .restart local v9       #tempJar:Ljava/io/File;
    :catchall_99
    move-exception v10

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_8c

    .line 160
    .end local v0           #buf:[B
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v7           #nbytes:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_9c
    move-exception v11

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_85

    .line 157
    .end local v9           #tempJar:Ljava/io/File;
    :catch_9f
    move-exception v2

    goto :goto_55
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .parameter "defaultusecaches"

    .prologue
    .line 346
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 347
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .parameter "usecaches"

    .prologue
    .line 336
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 337
    return-void
.end method
