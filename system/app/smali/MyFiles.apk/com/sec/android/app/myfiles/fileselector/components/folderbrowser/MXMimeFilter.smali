.class public Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
.super Ljava/lang/Object;
.source "MXMimeFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field acceptAllApplicationFile:Z

.field acceptAllAudioFile:Z

.field acceptAllFile:Z

.field acceptAllImageFile:Z

.field acceptAllTextFile:Z

.field acceptAllVideoFile:Z

.field mContext:Landroid/content/Context;

.field mFolderFiltering:Z

.field mHiddenFiltering:Z

.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMimeString:[Ljava/lang/String;

.field mSetAsMode:Z

.field mShowPrintableFile:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLandroid/content/Context;)V
    .registers 8
    .parameter "mimestring"
    .parameter "folderFiltering"
    .parameter "hiddenFiltering"
    .parameter "extraFiltering"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMap:Ljava/util/HashMap;

    .line 18
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllAudioFile:Z

    .line 19
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllImageFile:Z

    .line 20
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllVideoFile:Z

    .line 21
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllApplicationFile:Z

    .line 22
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllTextFile:Z

    .line 23
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllFile:Z

    .line 24
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mHiddenFiltering:Z

    .line 25
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mFolderFiltering:Z

    .line 26
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mShowPrintableFile:Z

    .line 28
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mSetAsMode:Z

    .line 36
    iput-object p5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->initMXMimeFilter(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->setFolderFiltering(Z)V

    .line 39
    invoke-direct {p0, p3}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->setHiddenFiltering(Z)V

    .line 40
    invoke-direct {p0, p4}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->setExtraFiltering(Z)V

    .line 41
    return-void
.end method

.method private initMXMimeFilter(Ljava/lang/String;)V
    .registers 7
    .parameter "mimestring"

    .prologue
    const/4 v4, 0x1

    .line 60
    if-nez p1, :cond_b

    .line 61
    const-string v1, "[MyFiles]"

    const-string v2, "MXMimeFilter : mimestring is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_a
    return-void

    .line 64
    :cond_b
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_33

    .line 69
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllAudioFile:Z

    .line 72
    :cond_33
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_41

    .line 73
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllImageFile:Z

    .line 76
    :cond_41
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4f

    .line 77
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllVideoFile:Z

    .line 80
    :cond_4f
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "text/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5d

    .line 81
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllTextFile:Z

    .line 83
    :cond_5d
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "application/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6b

    .line 84
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllApplicationFile:Z

    .line 87
    :cond_6b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_80

    .line 88
    const-string v1, "[MyFiles]"

    const-string v2, "Don\'t construct this filename filter for speed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllFile:Z

    .line 66
    :cond_80
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 92
    :cond_83
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMimeString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80
.end method

.method private setExtraFiltering(Z)V
    .registers 2
    .parameter "filtering"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mShowPrintableFile:Z

    .line 52
    return-void
.end method

.method private setFolderFiltering(Z)V
    .registers 2
    .parameter "filtering"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mFolderFiltering:Z

    .line 49
    return-void
.end method

.method private setHiddenFiltering(Z)V
    .registers 2
    .parameter "filtering"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mHiddenFiltering:Z

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 10
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v0, file:Ljava/io/File;
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mHiddenFiltering:Z

    if-eqz v5, :cond_14

    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 185
    :cond_13
    :goto_13
    return v3

    .line 101
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 102
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mFolderFiltering:Z

    if-nez v5, :cond_13

    move v3, v4

    .line 105
    goto :goto_13

    .line 120
    :cond_20
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isForwardable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 125
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllFile:Z

    if-eqz v5, :cond_32

    move v3, v4

    .line 126
    goto :goto_13

    .line 128
    :cond_32
    const/4 v1, 0x0

    .line 131
    .local v1, mimeType:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 132
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getRealMimeTypeOfDRM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_49
    :goto_49
    const-string v5, "[MyFiles]"

    const-string v6, "MXMimeFileter.accept"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v1, :cond_c8

    .line 162
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllImageFile:Z

    if-eqz v5, :cond_8c

    const-string v5, "image/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    move v3, v4

    .line 163
    goto :goto_13

    .line 134
    :cond_60
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 136
    const-string v1, "application/octet-stream"

    goto :goto_49

    .line 138
    :cond_73
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->needToCheckMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, realMimeType:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeTypeFromMediaStore(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 141
    move-object v1, v2

    goto :goto_49

    .line 165
    .end local v2           #realMimeType:Ljava/lang/String;
    :cond_8c
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllAudioFile:Z

    if-eqz v5, :cond_9b

    const-string v5, "audio/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    move v3, v4

    .line 166
    goto/16 :goto_13

    .line 169
    :cond_9b
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllVideoFile:Z

    if-eqz v5, :cond_aa

    const-string v5, "video/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    move v3, v4

    .line 170
    goto/16 :goto_13

    .line 173
    :cond_aa
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllApplicationFile:Z

    if-eqz v5, :cond_b9

    const-string v5, "application/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    move v3, v4

    .line 174
    goto/16 :goto_13

    .line 177
    :cond_b9
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->acceptAllTextFile:Z

    if-eqz v5, :cond_c8

    const-string v5, "text/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    move v3, v4

    .line 178
    goto/16 :goto_13

    .line 182
    :cond_c8
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13

    move v3, v4

    .line 183
    goto/16 :goto_13
.end method

.method public setSetasMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->mSetAsMode:Z

    .line 57
    return-void
.end method
