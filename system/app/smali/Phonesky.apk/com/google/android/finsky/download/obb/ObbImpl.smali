.class Lcom/google/android/finsky/download/obb/ObbImpl;
.super Ljava/lang/Object;
.source "ObbImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/obb/Obb;


# instance fields
.field private final TEMP_OBB_FILE_PREFIX:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private final mIsPatch:Z

.field private final mPackageName:Ljava/lang/String;

.field private mSize:J

.field private mState:I

.field private mUrl:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method constructor <init>(ZLjava/lang/String;ILjava/lang/String;JI)V
    .registers 9
    .parameter "isPatch"
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "url"
    .parameter "size"
    .parameter "state"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    .line 32
    const-string v0, "temp."

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->TEMP_OBB_FILE_PREFIX:Ljava/lang/String;

    .line 36
    iput-boolean p1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    .line 37
    iput p3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    .line 38
    iput-object p4, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    .line 39
    iput-wide p5, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    .line 40
    iput-object p2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->generateFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    .line 42
    iput p7, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    .line 43
    return-void
.end method

.method private generateFileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
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

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
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

    .line 88
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getFile()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_18

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_18

    const/4 v1, 0x1

    .line 92
    :cond_18
    return v1
.end method

.method private logFinalizeProblem(Ljava/lang/String;)V
    .registers 15
    .parameter "tag"

    .prologue
    const/4 v12, 0x0

    .line 161
    :try_start_1
    const-string v7, "Failure %s while finalizing %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const-string v7, " file=%s, size=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v7, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 164
    .local v1, destinationDir:Ljava/io/File;
    const-string v7, " Contents of %s:"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4d

    .line 166
    const-string v7, " (Does not exist)"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .end local v1           #destinationDir:Ljava/io/File;
    :cond_4c
    :goto_4c
    return-void

    .line 169
    .restart local v1       #destinationDir:Ljava/io/File;
    :cond_4d
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_65

    .line 170
    const-string v7, " (Is not a directory)"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_5c

    goto :goto_4c

    .line 181
    .end local v1           #destinationDir:Ljava/io/File;
    :catch_5c
    move-exception v2

    .line 183
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Unexpected exception"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4c

    .line 173
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #destinationDir:Ljava/io/File;
    :cond_65
    :try_start_65
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 174
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_74

    .line 175
    const-string v7, " (listFiles() returned null)"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4c

    .line 178
    :cond_74
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_77
    if-ge v5, v6, :cond_4c

    aget-object v3, v0, v5

    .line 179
    .local v3, existingFile:Ljava/io/File;
    const-string v7, "  name=%s size=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_95} :catch_5c

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_77
.end method

.method private reset()V
    .registers 3

    .prologue
    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    .line 257
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    .line 259
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_5

    .line 78
    :cond_4
    :goto_4
    return v1

    .line 50
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 51
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/google/android/finsky/download/obb/ObbImpl;

    .line 56
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

    .line 57
    goto :goto_4

    .line 56
    :cond_26
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 59
    :cond_2a
    iget-boolean v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    if-eq v3, v4, :cond_32

    move v1, v2

    .line 60
    goto :goto_4

    .line 62
    :cond_32
    iget v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    iget v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    if-eq v3, v4, :cond_3a

    move v1, v2

    .line 63
    goto :goto_4

    .line 65
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

    .line 66
    goto :goto_4

    .line 65
    :cond_4a
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_48

    .line 68
    :cond_4e
    iget-wide v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    iget-wide v5, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_58

    move v1, v2

    .line 69
    goto :goto_4

    .line 71
    :cond_58
    iget v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    if-ltz v3, :cond_64

    iget v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    iget v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    if-eq v3, v4, :cond_68

    :cond_62
    move v1, v2

    .line 72
    goto :goto_4

    .line 71
    :cond_64
    iget v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    if-gez v3, :cond_62

    .line 74
    :cond_68
    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_76
    move v1, v2

    .line 76
    goto :goto_4

    .line 74
    :cond_78
    iget-object v3, v0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_76
.end method

.method public finalizeTempFile()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getFile()Ljava/io/File;

    move-result-object v0

    .line 138
    .local v0, obbFile:Ljava/io/File;
    if-nez v0, :cond_d

    .line 139
    const-string v3, "main file null"

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/obb/ObbImpl;->logFinalizeProblem(Ljava/lang/String;)V

    .line 155
    :goto_c
    return v2

    .line 142
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getTempFile()Ljava/io/File;

    move-result-object v1

    .line 143
    .local v1, tempFile:Ljava/io/File;
    if-nez v1, :cond_19

    .line 144
    const-string v3, "temp file null"

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/obb/ObbImpl;->logFinalizeProblem(Ljava/lang/String;)V

    goto :goto_c

    .line 147
    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_42

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size mismatch: tempfile size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/obb/ObbImpl;->logFinalizeProblem(Ljava/lang/String;)V

    goto :goto_c

    .line 151
    :cond_42
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 152
    const-string v3, "renameTo() returned false"

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/obb/ObbImpl;->logFinalizeProblem(Ljava/lang/String;)V

    goto :goto_c

    .line 155
    :cond_4e
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public getFile()Ljava/io/File;
    .registers 6

    .prologue
    .line 112
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-wide v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_10

    .line 113
    :cond_e
    const/4 v1, 0x0

    .line 122
    :goto_f
    return-object v1

    .line 116
    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 118
    .local v0, destinationDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_1f
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mSize:J

    return-wide v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    return v0
.end method

.method public getTempFile()Ljava/io/File;
    .registers 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->getFile()Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, file:Ljava/io/File;
    if-nez v0, :cond_8

    .line 129
    const/4 v2, 0x0

    .line 132
    :goto_7
    return-object v2

    .line 131
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 132
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
    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isPatch()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    return v0
.end method

.method public setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 235
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 236
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->reset()V

    .line 239
    :cond_6
    iput p1, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    .line 240
    return-void
.end method

.method public syncStateWithStorage()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 97
    iget v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 108
    :goto_6
    return-void

    .line 101
    :cond_7
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/download/obb/ObbImpl;->setState(I)V

    goto :goto_6

    .line 103
    :cond_11
    invoke-direct {p0}, Lcom/google/android/finsky/download/obb/ObbImpl;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 104
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/download/obb/ObbImpl;->setState(I)V

    goto :goto_6

    .line 106
    :cond_1b
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/obb/ObbImpl;->setState(I)V

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 83
    const-string v1, "%s: %s v:%d %s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mIsPatch:Z

    if-eqz v0, :cond_2a

    const-string v0, "Patch"

    :goto_c
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mPackageName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/finsky/download/obb/ObbImpl;->mState:I

    invoke-static {v3}, Lcom/google/android/finsky/download/obb/ObbState;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    const-string v0, "Main"

    goto :goto_c
.end method
