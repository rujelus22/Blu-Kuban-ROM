.class Lcom/google/android/finsky/download/obb/ObbImpl;
.super Ljava/lang/Object;
.source "ObbImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/obb/Obb;


# instance fields
.field private final TEMP_OBB_FILE_PREFIX:Ljava/lang/String;

.field private mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private mContentUri:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private final mIsPatch:Z

.field private final mPackageName:Ljava/lang/String;

.field private mSize:J

.field private mState:Lcom/google/android/finsky/download/obb/ObbState;

.field private mUrl:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/AssetStore;ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)V
    .registers 11
    .parameter "assetStore"
    .parameter "isPatch"
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "url"
    .parameter "size"
    .parameter "state"
    .parameter "contentUri"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "temp."

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->TEMP_OBB_FILE_PREFIX:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    .line 42
    iput p4, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    .line 43
    iput-object p5, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    .line 44
    iput-wide p6, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    .line 45
    iput-object p3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->generateFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    .line 48
    iput-object p1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 49
    if-nez p9, :cond_1f

    const-string p9, ""

    .end local p9
    :cond_1f
    iput-object p9, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private generateFileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".obb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    if-eqz v0, :cond_7

    const-string v0, "patch"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "main"

    goto :goto_6
.end method

.method private isDownloaded()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getFile()Ljava/io/File;

    move-result-object v0

    .line 103
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_18

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_18

    const/4 v1, 0x1

    .line 106
    :cond_18
    return v1
.end method

.method private reset()V
    .registers 3

    .prologue
    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    .line 260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method private writeThroughToAsset()V
    .registers 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 240
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v0, :cond_f

    .line 241
    iget-boolean v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/local/LocalAsset;->setObb(ZLcom/google/android/finsky/download/obb/Obb;)V

    .line 243
    :cond_f
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getFile()Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 251
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getTempFile()Ljava/io/File;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 255
    :cond_1e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_5

    .line 93
    :cond_4
    :goto_4
    return v1

    .line 57
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 58
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/google/android/finsky/download/obb/ObbImpl;

    .line 63
    .local v0, that:Lcom/google/android/finsky/download/obb/ObbImpl;
    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 64
    goto :goto_4

    .line 63
    :cond_26
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 66
    :cond_2a
    iget-boolean v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    if-eq v3, v4, :cond_32

    move v1, v2

    .line 67
    goto :goto_4

    .line 69
    :cond_32
    iget v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    iget v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    if-eq v3, v4, :cond_3a

    move v1, v2

    .line 70
    goto :goto_4

    .line 72
    :cond_3a
    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    :cond_48
    move v1, v2

    .line 73
    goto :goto_4

    .line 72
    :cond_4a
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_48

    .line 75
    :cond_4e
    iget-wide v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    iget-wide v5, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_58

    move v1, v2

    .line 76
    goto :goto_4

    .line 78
    :cond_58
    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    iget-object v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/download/obb/ObbState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    :cond_66
    move v1, v2

    .line 79
    goto :goto_4

    .line 78
    :cond_68
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    if-nez v3, :cond_66

    .line 81
    :cond_6c
    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    :cond_7a
    move v1, v2

    .line 83
    goto :goto_4

    .line 81
    :cond_7c
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_7a

    .line 86
    :cond_80
    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    if-eq v3, v4, :cond_89

    move v1, v2

    .line 87
    goto/16 :goto_4

    .line 89
    :cond_89
    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_97
    move v1, v2

    .line 91
    goto/16 :goto_4

    .line 89
    :cond_9a
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_97
.end method

.method public finalizeTempFile()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getFile()Ljava/io/File;

    move-result-object v0

    .line 153
    .local v0, obbFile:Ljava/io/File;
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getTempFile()Ljava/io/File;

    move-result-object v1

    .line 154
    .local v1, tempFile:Ljava/io/File;
    if-eqz v0, :cond_d

    if-nez v1, :cond_e

    .line 162
    :cond_d
    :goto_d
    return v2

    .line 157
    :cond_e
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 158
    const/4 v2, 0x1

    goto :goto_d

    .line 160
    :cond_16
    const-string v3, "Could not rename using expected temp file, using Cursor to get path."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    new-instance v1, Ljava/io/File;

    .end local v1           #tempFile:Ljava/io/File;
    iget-object v2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/download/Storage;->getFileUriForContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v1       #tempFile:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    goto :goto_d
.end method

.method public getContentUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 6

    .prologue
    .line 127
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-wide v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_10

    .line 128
    :cond_e
    const/4 v1, 0x0

    .line 137
    :goto_f
    return-object v1

    .line 131
    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, destinationDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 137
    :cond_1f
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    return-wide v0
.end method

.method public getState()Lcom/google/android/finsky/download/obb/ObbState;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .registers 6

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getFile()Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, file:Ljava/io/File;
    if-nez v0, :cond_8

    .line 144
    const/4 v2, 0x0

    .line 147
    :goto_7
    return-object v2

    .line 146
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 147
    .local v1, fileParent:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    return v0
.end method

.method public isPatch()Z
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    return v0
.end method

.method public setContentUri(Ljava/lang/String;)V
    .registers 3
    .parameter "contentUri"

    .prologue
    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    const-string p1, ""

    .line 206
    :cond_8
    iput-object p1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mContentUri:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->writeThroughToAsset()V

    .line 208
    return-void
.end method

.method public setState(Lcom/google/android/finsky/download/obb/ObbState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 227
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/download/obb/ObbState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 228
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->reset()V

    .line 231
    :cond_b
    iput-object p1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    .line 232
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->writeThroughToAsset()V

    .line 233
    return-void
.end method

.method public syncStateWithStorage()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/download/obb/ObbState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 123
    :goto_a
    return-void

    .line 115
    :cond_b
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v0

    if-nez v0, :cond_17

    .line 116
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/obb/ObbImpl;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    goto :goto_a

    .line 117
    :cond_17
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_26

    .line 118
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/obb/ObbImpl;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->delete()V

    goto :goto_a

    .line 121
    :cond_26
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/obb/ObbImpl;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    if-eqz v0, :cond_32

    const-string v0, "Patch:"

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const-string v0, "Main:"

    goto :goto_b
.end method
