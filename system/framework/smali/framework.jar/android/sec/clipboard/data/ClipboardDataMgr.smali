.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mDataList:Landroid/sec/clipboard/data/file/FileManager;

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .parameter "size"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 84
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/clipboard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, rootPath:Ljava/io/File;
    new-instance v1, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v2, Ljava/io/File;

    const-string v3, "clips.info"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 99
    return-void
.end method


# virtual methods
.method public addData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .parameter "data"

    .prologue
    .line 151
    const/4 v0, 0x1

    .line 152
    .local v0, Result:Z
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v2

    .line 156
    .local v2, iSize:I
    :try_start_7
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v2, v3, :cond_16

    .line 157
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 158
    invoke-virtual {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 170
    :goto_15
    return v0

    .line 160
    :cond_16
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1e

    move-result v0

    goto :goto_15

    .line 164
    :catch_1e
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2c

    const-string v3, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 6
    .parameter "index"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 128
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 136
    :goto_7
    return-object v0

    .line 129
    :catch_8
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string v2, "ClipboardServiceEx"

    const-string v3, "The index has been exceeded."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_14
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string v2, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_21
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeData(I)Z
    .registers 6
    .parameter "index"

    .prologue
    .line 183
    const/4 v0, 0x1

    .line 187
    .local v0, Result:Z
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_6} :catch_7

    .line 194
    :goto_6
    return v0

    .line 188
    :catch_7
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_15

    const-string v2, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public size()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    return v0
.end method
