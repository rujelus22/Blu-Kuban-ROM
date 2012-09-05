.class public Lcom/sprint/dsa/diagnostics/CameraDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "CameraDiagnostic.java"


# static fields
.field public static ERROR_SIZE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "camera"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mDesc:Ljava/lang/String;

.field private mFileSize:J

.field private mImageDensity:I

.field private mImageHeight:I

.field private mImageWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->ERROR_SIZE:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 5
    .parameter "context"
    .parameter "stub"

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "camera"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 26
    iput v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageWidth:I

    .line 27
    iput v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageHeight:I

    .line 28
    iput v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageDensity:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mFileSize:J

    .line 34
    const-string v0, "status.test.running"

    invoke-virtual {p2, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mDesc:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getImageMeta(Ljava/lang/String;)Z
    .registers 9
    .parameter "filePath"

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 135
    .local v1, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 137
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 138
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2e

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageWidth:I

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageHeight:I

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    iput v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageDensity:I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_65
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2e} :catch_35

    .line 168
    :cond_2e
    if-eqz v1, :cond_33

    .line 170
    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_6c

    .line 151
    :cond_33
    :goto_33
    const/4 v4, 0x1

    .line 165
    :goto_34
    return v4

    .line 153
    :catch_35
    move-exception v2

    .line 155
    .local v2, t:Ljava/lang/Throwable;
    :try_start_36
    const-string v4, "SprintZone_Diagnostics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error reading image: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    iget v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageWidth:I

    if-nez v4, :cond_5e

    iget v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageHeight:I

    if-nez v4, :cond_5e

    .line 160
    sget v4, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->ERROR_SIZE:I

    iput v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageWidth:I

    .line 161
    sget v4, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->ERROR_SIZE:I

    iput v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageHeight:I

    .line 162
    sget v4, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->ERROR_SIZE:I

    iput v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageDensity:I
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_65

    .line 168
    :cond_5e
    if-eqz v1, :cond_63

    .line 170
    :try_start_60
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_6e

    .line 165
    :cond_63
    :goto_63
    const/4 v4, 0x0

    goto :goto_34

    .line 167
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_65
    move-exception v4

    .line 168
    if-eqz v1, :cond_6b

    .line 170
    :try_start_68
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_70

    .line 173
    :cond_6b
    :goto_6b
    throw v4

    .line 171
    :catch_6c
    move-exception v4

    goto :goto_33

    .restart local v2       #t:Ljava/lang/Throwable;
    :catch_6e
    move-exception v4

    goto :goto_63

    .end local v2           #t:Ljava/lang/Throwable;
    :catch_70
    move-exception v5

    goto :goto_6b
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 8

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->testPictures()Z

    .line 55
    iget v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageWidth:I

    if-lez v1, :cond_4b

    iget-wide v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mFileSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4b

    .line 56
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.available"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mImageHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mFileSize:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mDesc:Ljava/lang/String;

    .line 57
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 58
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 64
    :goto_45
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_5e

    .line 73
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->fireStatusChange()V

    .line 70
    :goto_4a
    return-object v1

    .line 60
    :cond_4b
    :try_start_4b
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 61
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 62
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.notfound"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_5e

    goto :goto_45

    .line 65
    :catch_5e
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    :try_start_5f
    const-string v1, "SprintZone_Diagnostics"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 68
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 69
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.unavailable"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mDesc:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_7e

    .line 73
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->fireStatusChange()V

    goto :goto_4a

    .line 72
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_7e
    move-exception v1

    .line 73
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->fireStatusChange()V

    .line 74
    throw v1
.end method

.method public testPictures()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 92
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 94
    .local v10, resolver:Landroid/content/ContentResolver;
    const-string v3, "media"

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 97
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v3, 0x2

    new-array v11, v3, [Landroid/net/Uri;

    .line 98
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v11, v13

    .line 99
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v11, v12

    .line 102
    .local v11, uris:[Landroid/net/Uri;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1b
    array-length v3, v11

    if-lt v9, v3, :cond_20

    move v2, v13

    .line 129
    :goto_1f
    return v2

    .line 103
    :cond_20
    aget-object v1, v11, v9

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_53

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 118
    const-string v3, "_size"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->mFileSize:J

    .line 119
    const-string v3, "_data"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, filePath:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;->getImageMeta(Ljava/lang/String;)Z

    move-result v8

    .line 121
    .local v8, gotMeta:Z
    if-eqz v8, :cond_50

    move v2, v12

    .line 122
    goto :goto_1f

    .line 126
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #gotMeta:Z
    :cond_50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_53
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 84
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 79
    return-void
.end method
