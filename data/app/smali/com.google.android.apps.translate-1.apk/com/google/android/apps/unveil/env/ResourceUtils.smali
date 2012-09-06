.class public Lcom/google/android/apps/unveil/env/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static final ABI_ARMV7:Ljava/lang/String; = "armeabi-v7a"

.field private static final ABI_ARMV7_EXTENSION:Ljava/lang/String; = "-v7a"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "assets:"

.field public static final LOCAL_FILESYSTEM_PREFIX:Ljava/lang/String; = "sdcard:"

.field private static final LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field private static final MARKET_EXTENSION:Ljava/lang/String; = "-new"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/ResourceUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .registers 5
    .parameter "stream"

    .prologue
    .line 41
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 45
    :goto_3
    return-void

    .line 42
    :catch_4
    move-exception v0

    .line 43
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/android/apps/unveil/env/ResourceUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to close stream"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static fromAssets(Ljava/lang/String;)Z
    .registers 2
    .parameter "prefixedString"

    .prologue
    .line 72
    const-string v0, "assets:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getDirectoryContentsFromAssets(Landroid/content/res/AssetManager;Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/FilenameFilter;Z)V
    .registers 13
    .parameter "manager"
    .parameter
    .parameter "relativePath"
    .parameter "filenameFilter"
    .parameter "recursive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/FilenameFilter;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, validFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, directoryFiles:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_7
    if-ge v4, v5, :cond_47

    aget-object v2, v0, v4

    .line 153
    .local v2, filename:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, fullChildPath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 156
    if-eqz p4, :cond_33

    .line 157
    const/4 v6, 0x1

    invoke-static {p0, p1, v3, p3, v6}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getDirectoryContentsFromAssets(Landroid/content/res/AssetManager;Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/FilenameFilter;Z)V

    .line 152
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 161
    :cond_36
    if-eqz p3, :cond_43

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v6, v2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 162
    :cond_43
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 166
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #fullChildPath:Ljava/lang/String;
    :cond_47
    return-void
.end method

.method private static getDirectoryContentsFromDisk(Ljava/util/List;Ljava/io/File;Ljava/io/FilenameFilter;Z)V
    .registers 9
    .parameter
    .parameter "fileDirectory"
    .parameter "filenameFilter"
    .parameter "recursive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, validFiles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_2d

    aget-object v1, v0, v2

    .line 172
    .local v1, childFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 173
    if-eqz p3, :cond_16

    .line 174
    const/4 v4, 0x1

    invoke-static {p0, v1, p2, v4}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getDirectoryContentsFromDisk(Ljava/util/List;Ljava/io/File;Ljava/io/FilenameFilter;Z)V

    .line 171
    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 177
    :cond_19
    if-eqz p2, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, p1, v4}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 178
    :cond_25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 182
    .end local v1           #childFile:Ljava/io/File;
    :cond_2d
    return-void
.end method

.method public static getInputStreamForFile(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .parameter "res"
    .parameter "fromAssets"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_b

    .line 97
    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 99
    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_a

    .line 101
    :catch_11
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/android/apps/unveil/env/ResourceUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Exception reading file%s: %s"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_27

    const-string v1, " (from assets)"

    :goto_1e
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    throw v0

    .line 102
    :cond_27
    const-string v1, ""

    goto :goto_1e
.end method

.method public static getPathFromPrefixedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "prefixedString"

    .prologue
    .line 76
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, split:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_23

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not extract path from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_23
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static listFiles(Landroid/content/res/Resources;ZLjava/lang/String;Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .registers 5
    .parameter "resources"
    .parameter "fromAssets"
    .parameter "sequencePath"
    .parameter "filenameFilter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/unveil/env/ResourceUtils;->listFiles(Landroid/content/res/Resources;ZLjava/lang/String;Ljava/io/FilenameFilter;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listFiles(Landroid/content/res/Resources;ZLjava/lang/String;Ljava/io/FilenameFilter;Z)[Ljava/lang/String;
    .registers 8
    .parameter "resources"
    .parameter "fromAssets"
    .parameter "sequencePath"
    .parameter "filenameFilter"
    .parameter "recursive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, validFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_18

    .line 137
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 138
    .local v0, manager:Landroid/content/res/AssetManager;
    invoke-static {v0, v1, p2, p3, p4}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getDirectoryContentsFromAssets(Landroid/content/res/AssetManager;Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/FilenameFilter;Z)V

    .line 144
    .end local v0           #manager:Landroid/content/res/AssetManager;
    :goto_e
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 141
    :cond_18
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, p3, p4}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getDirectoryContentsFromDisk(Ljava/util/List;Ljava/io/File;Ljava/io/FilenameFilter;Z)V

    goto :goto_e
.end method

.method public static loadNativeLibrary(Ljava/lang/String;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/apps/unveil/env/ResourceUtils;->useMarketLibraries()Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, extendedName:Ljava/lang/String;
    :goto_19
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "armeabi-v7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-v7a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_36
    :try_start_36
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_36 .. :try_end_39} :catch_3c

    .line 124
    :goto_39
    return-void

    .end local v1           #extendedName:Ljava/lang/String;
    :cond_3a
    move-object v1, p0

    .line 113
    goto :goto_19

    .line 121
    .restart local v1       #extendedName:Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/google/android/apps/unveil/env/ResourceUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Error loading native library \'%s\'."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_39
.end method

.method public static readTxtFileFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 9
    .parameter "res"
    .parameter "id"

    .prologue
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v3, text:Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v0, br:Ljava/io/BufferedReader;
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_13

    .line 64
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :catch_22
    move-exception v1

    .line 65
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/apps/unveil/env/ResourceUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Error reading input "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .end local v1           #e:Ljava/io/IOException;
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static useMarketLibraries()Z
    .registers 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
