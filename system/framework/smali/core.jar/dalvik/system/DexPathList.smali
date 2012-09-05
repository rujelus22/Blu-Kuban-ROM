.class final Ldalvik/system/DexPathList;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexPathList$Element;
    }
.end annotation


# static fields
.field private static final APK_SUFFIX:Ljava/lang/String; = ".apk"

.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final JAR_SUFFIX:Ljava/lang/String; = ".jar"

.field private static final ZIP_SUFFIX:Ljava/lang/String; = ".zip"


# instance fields
.field private final definingContext:Ljava/lang/ClassLoader;

.field private final dexElements:[Ldalvik/system/DexPathList$Element;

.field private final nativeLibraryDirectories:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 8
    .parameter "definingContext"
    .parameter "dexPath"
    .parameter "libraryPath"
    .parameter "optimizedDirectory"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_d

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_d
    if-nez p2, :cond_17

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_17
    if-eqz p4, :cond_5d

    .line 81
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optimizedDirectory doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_38
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 89
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optimizedDirectory not readable/writable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_5d
    iput-object p1, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    .line 96
    invoke-static {p2}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p4}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/ArrayList;Ljava/io/File;)[Ldalvik/system/DexPathList$Element;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .line 98
    invoke-static {p3}, Ldalvik/system/DexPathList;->splitLibraryPath(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:[Ljava/io/File;

    .line 99
    return-void
.end method

.method private static loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    .registers 5
    .parameter "file"
    .parameter "optimizedDirectory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    if-nez p1, :cond_8

    .line 258
    new-instance v1, Ldalvik/system/DexFile;

    invoke-direct {v1, p0}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 261
    :goto_7
    return-object v1

    .line 260
    :cond_8
    invoke-static {p0, p1}, Ldalvik/system/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, optimizedPath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v1

    goto :goto_7
.end method

.method private static makeDexElements(Ljava/util/ArrayList;Ljava/io/File;)[Ldalvik/system/DexPathList$Element;
    .registers 12
    .parameter
    .parameter "optimizedDirectory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ldalvik/system/DexPathList$Element;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 203
    .local v3, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 204
    .local v6, zip:Ljava/util/zip/ZipFile;
    const/4 v0, 0x0

    .line 205
    .local v0, dex:Ldalvik/system/DexFile;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, name:Ljava/lang/String;
    const-string v8, ".dex"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 210
    :try_start_23
    invoke-static {v3, p1}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_34

    move-result-object v0

    .line 243
    :goto_27
    if-nez v6, :cond_2b

    if-eqz v0, :cond_9

    .line 244
    :cond_2b
    new-instance v8, Ldalvik/system/DexPathList$Element;

    invoke-direct {v8, v3, v6, v0}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 211
    :catch_34
    move-exception v2

    .line 212
    .local v2, ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load dex file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 214
    .end local v2           #ex:Ljava/io/IOException;
    :cond_4c
    const-string v8, ".apk"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_64

    const-string v8, ".jar"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_64

    const-string v8, ".zip"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 217
    :cond_64
    :try_start_64
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_6f

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .local v7, zip:Ljava/util/zip/ZipFile;
    move-object v6, v7

    .line 229
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :goto_6a
    :try_start_6a
    invoke-static {v3, p1}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_ab

    move-result-object v0

    goto :goto_27

    .line 218
    :catch_6f
    move-exception v2

    .line 225
    .restart local v2       #ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open zip file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 240
    .end local v2           #ex:Ljava/io/IOException;
    :cond_87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown file type for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    goto :goto_27

    .line 248
    .end local v0           #dex:Ldalvik/system/DexFile;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    :cond_9e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ldalvik/system/DexPathList$Element;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ldalvik/system/DexPathList$Element;

    return-object v8

    .line 230
    .restart local v0       #dex:Ldalvik/system/DexFile;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_ab
    move-exception v8

    goto/16 :goto_27
.end method

.method private static optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .parameter "path"
    .parameter "optimizedDirectory"

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, fileName:Ljava/lang/String;
    const-string v4, ".dex"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 285
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, lastDot:I
    if-gez v1, :cond_31

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .end local v1           #lastDot:I
    :cond_27
    :goto_27
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v2, result:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 289
    .end local v2           #result:Ljava/io/File;
    .restart local v1       #lastDot:I
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 290
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 291
    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private static splitAndAdd(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .registers 10
    .parameter "path"
    .parameter "wantDirectories"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p0, :cond_3

    .line 188
    :cond_2
    return-void

    .line 163
    :cond_3
    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, strings:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 166
    .local v4, s:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_28

    .line 165
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 176
    :cond_28
    if-eqz p1, :cond_34

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 186
    :cond_30
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 181
    :cond_34
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_30

    goto :goto_25
.end method

.method private static splitDexPath(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static splitLibraryPath(Ljava/lang/String;)[Ljava/io/File;
    .registers 4
    .parameter "path"

    .prologue
    .line 130
    const-string v1, "java.library.path"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 132
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method private static splitPaths(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 4
    .parameter "path1"
    .parameter "path2"
    .parameter "wantDirectories"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {p0, p2, v0}, Ldalvik/system/DexPathList;->splitAndAdd(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 149
    invoke-static {p1, p2, v0}, Ldalvik/system/DexPathList;->splitAndAdd(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 150
    return-object v0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 9
    .parameter "name"

    .prologue
    .line 311
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .local v0, arr$:[Ldalvik/system/DexPathList$Element;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4
    if-ge v4, v5, :cond_18

    aget-object v3, v0, v4

    .line 312
    .local v3, element:Ldalvik/system/DexPathList$Element;
    iget-object v2, v3, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    .line 314
    .local v2, dex:Ldalvik/system/DexFile;
    if-eqz v2, :cond_15

    .line 315
    iget-object v6, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1, v6}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 316
    .local v1, clazz:Ljava/lang/Class;
    if-eqz v1, :cond_15

    .line 322
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #dex:Ldalvik/system/DexFile;
    .end local v3           #element:Ldalvik/system/DexPathList$Element;
    :goto_14
    return-object v1

    .line 311
    .restart local v2       #dex:Ldalvik/system/DexFile;
    .restart local v3       #element:Ldalvik/system/DexPathList$Element;
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 322
    .end local v2           #dex:Ldalvik/system/DexFile;
    .end local v3           #element:Ldalvik/system/DexPathList$Element;
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "libraryName"

    .prologue
    .line 372
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, fileName:Ljava/lang/String;
    iget-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:[Ljava/io/File;

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_2b

    aget-object v1, v0, v4

    .line 375
    .local v1, directory:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 376
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 377
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 381
    .end local v1           #directory:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :goto_27
    return-object v6

    .line 374
    .restart local v1       #directory:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 381
    .end local v1           #directory:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :cond_2b
    const/4 v6, 0x0

    goto :goto_27
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 7
    .parameter "name"

    .prologue
    .line 334
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .local v0, arr$:[Ldalvik/system/DexPathList$Element;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 335
    .local v1, element:Ldalvik/system/DexPathList$Element;
    invoke-virtual {v1, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 336
    .local v4, url:Ljava/net/URL;
    if-eqz v4, :cond_f

    .line 341
    .end local v1           #element:Ldalvik/system/DexPathList$Element;
    .end local v4           #url:Ljava/net/URL;
    :goto_e
    return-object v4

    .line 334
    .restart local v1       #element:Ldalvik/system/DexPathList$Element;
    .restart local v4       #url:Ljava/net/URL;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 341
    .end local v1           #element:Ldalvik/system/DexPathList$Element;
    .end local v4           #url:Ljava/net/URL;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 9
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .local v0, arr$:[Ldalvik/system/DexPathList$Element;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 353
    .local v1, element:Ldalvik/system/DexPathList$Element;
    invoke-virtual {v1, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 354
    .local v5, url:Ljava/net/URL;
    if-eqz v5, :cond_16

    .line 355
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 359
    .end local v1           #element:Ldalvik/system/DexPathList$Element;
    .end local v5           #url:Ljava/net/URL;
    :cond_19
    invoke-static {v4}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v6

    return-object v6
.end method
