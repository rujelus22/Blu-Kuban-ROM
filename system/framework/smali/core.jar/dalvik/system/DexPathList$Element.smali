.class Ldalvik/system/DexPathList$Element;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexPathList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field public final dexFile:Ldalvik/system/DexFile;

.field public final file:Ljava/io/File;

.field public final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V
    .registers 4
    .parameter "file"
    .parameter "zipFile"
    .parameter "dexFile"

    .prologue
    .line 392
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    .line 394
    iput-object p2, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    .line 395
    iput-object p3, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    .line 396
    return-void
.end method


# virtual methods
.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .parameter "name"

    .prologue
    .line 399
    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_c

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_e

    .line 405
    :cond_c
    const/4 v1, 0x0

    .line 416
    :goto_d
    return-object v1

    :cond_e
    :try_start_e
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_36} :catch_37

    goto :goto_d

    .line 417
    :catch_37
    move-exception v0

    .line 418
    .local v0, ex:Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
