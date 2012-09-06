.class public Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;
.super Ljava/lang/Object;
.source "UserFeedbackReportBuilder.java"


# static fields
.field private static final GOOGLE_ACCOUNT:Ljava/lang/Object; = null

.field private static final REPORT_FILE_EXTENSION:Ljava/lang/String; = ".proto.gz"

.field private static final TMP_FILE_EXTENSION:Ljava/lang/String; = ".tmp"


# instance fields
.field private spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "com.google"

    sput-object v0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->GOOGLE_ACCOUNT:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V
    .registers 2
    .parameter "spec"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateRunningApps(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateBuildData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateCommonData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateTelephonyData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateSystemData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populatePackageData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateUserInitiatedFeedbackData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method private collectLogcatOutput(Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, logcatCmd:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 261
    .local v4, logcatProc:Ljava/lang/Process;
    const/4 v5, 0x0

    .line 263
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 264
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_6d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_82

    .line 266
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v3, log:Ljava/lang/StringBuilder;
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, lineSeparator:Ljava/lang/String;
    :goto_2c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_4c

    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_38} :catch_39

    goto :goto_2c

    .line 273
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #lineSeparator:Ljava/lang/String;
    .end local v3           #log:Ljava/lang/StringBuilder;
    :catch_39
    move-exception v0

    move-object v5, v6

    .line 274
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_3b
    :try_start_3b
    const-string v7, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_6d

    .line 276
    if-eqz v5, :cond_49

    .line 278
    :try_start_46
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_62

    .line 284
    :cond_49
    :goto_49
    const-string v7, ""

    .end local v0           #e:Ljava/io/IOException;
    :goto_4b
    return-object v7

    .line 272
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #lineSeparator:Ljava/lang/String;
    .restart local v3       #log:Ljava/lang/StringBuilder;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_39

    move-result-object v7

    .line 276
    if-eqz v6, :cond_55

    .line 278
    :try_start_52
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_57

    :cond_55
    :goto_55
    move-object v5, v6

    .line 281
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_4b

    .line 279
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_57
    move-exception v0

    .line 280
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 279
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #lineSeparator:Ljava/lang/String;
    .end local v3           #log:Ljava/lang/StringBuilder;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_62
    move-exception v0

    .line 280
    const-string v7, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 276
    .end local v0           #e:Ljava/io/IOException;
    :catchall_6d
    move-exception v7

    :goto_6e
    if-eqz v5, :cond_73

    .line 278
    :try_start_70
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 281
    :cond_73
    :goto_73
    throw v7

    .line 279
    :catch_74
    move-exception v0

    .line 280
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 276
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_7f
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_6e

    .line 273
    :catch_82
    move-exception v0

    goto :goto_3b
.end method

.method private gatherLogs(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "logFilter"

    .prologue
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "-d"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    .local v0, logcatCmd:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_25

    .line 251
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_25
    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->collectLogcatOutput(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFilesDataDir()Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_25

    .line 238
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to create directory structure for base directory provided"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_25
    return-object v0
.end method

.method private getScreenshotBytes(Landroid/graphics/Bitmap;)[B
    .registers 5
    .parameter "screenshot"

    .prologue
    .line 103
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private populateBuildData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 4
    .parameter "report"

    .prologue
    .line 178
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->device:Ljava/lang/String;

    .line 179
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->buildId:Ljava/lang/String;

    .line 180
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->buildType:Ljava/lang/String;

    .line 181
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->model:Ljava/lang/String;

    .line 182
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->board:Ljava/lang/String;

    .line 183
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->brand:Ljava/lang/String;

    .line 184
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->codename:Ljava/lang/String;

    .line 185
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->incremental:Ljava/lang/String;

    .line 186
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->release:Ljava/lang/String;

    .line 187
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->product:Ljava/lang/String;

    .line 189
    :try_start_28
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->sdkInt:I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_30} :catch_31

    .line 193
    :goto_30
    return-void

    .line 190
    :catch_31
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->sdkInt:I

    goto :goto_30
.end method

.method private populateCommonData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 3
    .parameter "report"

    .prologue
    .line 169
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getFeedbackText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;

    .line 170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->uiLanguage:Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getProductSpecificBinaryData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 172
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getProductSpecificBinaryData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->productSpecificBinaryData:Ljava/util/List;

    .line 175
    :cond_34
    return-void
.end method

.method private populatePackageData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 9
    .parameter "report"

    .prologue
    const/4 v6, 0x0

    .line 139
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 140
    .local v3, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    .line 142
    :try_start_17
    iget-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 143
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 144
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->processName:Ljava/lang/String;

    .line 145
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageVersion:I

    .line 146
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageVersionName:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 148
    .local v1, classPackage:Ljava/lang/Package;
    if-eqz v1, :cond_56

    .line 149
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installerPackageName:Ljava/lang/String;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_41} :catch_5b

    .line 157
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #classPackage:Ljava/lang/Package;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_41
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->processName:Ljava/lang/String;

    .line 159
    iput-boolean v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->isSystemApp:Z

    .line 160
    return-void

    .line 152
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #classPackage:Ljava/lang/Package;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_56
    :try_start_56
    const-string v4, ""

    iput-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installerPackageName:Ljava/lang/String;
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_5a} :catch_5b

    goto :goto_41

    .line 154
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #classPackage:Ljava/lang/Package;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_5b
    move-exception v4

    goto :goto_41
.end method

.method private populateRunningApps(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 8
    .parameter "report"

    .prologue
    .line 199
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 201
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 202
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 203
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 205
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2a
    return-void
.end method

.method private populateSystemData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 4
    .parameter "report"

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->timestamp:J

    .line 164
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getLogFilter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->gatherLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 166
    return-void
.end method

.method private populateTelephonyData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 5
    .parameter "report"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 97
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->phoneType:I

    .line 98
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->networkType:I

    .line 99
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->networkName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private populateUserInitiatedFeedbackData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 10
    .parameter "report"

    .prologue
    .line 109
    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v6

    if-eqz v6, :cond_2e

    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2e

    .line 110
    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 112
    .local v5, screenshot:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 113
    invoke-direct {p0, v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->getScreenshotBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshot:[B

    .line 114
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshotWidth:I

    .line 115
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshotHeight:I

    .line 118
    .end local v5           #screenshot:Landroid/graphics/Bitmap;
    :cond_2e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->accounts:Ljava/util/List;

    .line 122
    :try_start_35
    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 124
    .local v2, availableAccounts:[Landroid/accounts/Account;
    move-object v1, v2

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_46
    if-ge v3, v4, :cond_5f

    aget-object v0, v1, v3

    .line 125
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    sget-object v7, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->GOOGLE_ACCOUNT:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 126
    iget-object v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->accounts:Ljava/util/List;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5b} :catch_70
    .catch Ljava/lang/VerifyError; {:try_start_35 .. :try_end_5b} :catch_5e

    .line 124
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 131
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #availableAccounts:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_5e
    move-exception v6

    .line 134
    :cond_5f
    :goto_5f
    iget-object v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->accounts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->numGoogleAccounts:I

    .line 135
    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCategoryTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->categoryTag:Ljava/lang/String;

    .line 136
    return-void

    .line 129
    :catch_70
    move-exception v6

    goto :goto_5f
.end method

.method private serializeReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Lcom/x/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "report"

    .prologue
    .line 90
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;

    invoke-direct {v0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 91
    .local v0, serializer:Lcom/google/userfeedback/android/api/UserFeedbackSerializer;
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serialize()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    return-object v1
.end method

.method private startBuildingReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Landroid/os/AsyncTask;
    .registers 4
    .parameter "report"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/userfeedback/android/api/UserFeedbackReport;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;

    invoke-direct {v0, p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 86
    .local v0, reportBuilderTask:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public buildReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Landroid/os/AsyncTask;
    .registers 3
    .parameter "report"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/userfeedback/android/api/UserFeedbackReport;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->startBuildingReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedFeedbackReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Ljava/io/File;
    .registers 13
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->serializeReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 213
    .local v5, serializedReport:Lcom/x/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->getFilesDataDir()Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, dataDir:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, name:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v6, tmpFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".proto.gz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v4, reportFile:Ljava/io/File;
    :try_start_57
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 219
    .local v3, out:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 220
    .local v7, zout:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v5, v7}, Lcom/x/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 221
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 222
    invoke-virtual {v6, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 223
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to rename temporary file"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_75} :catch_75

    .line 226
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v7           #zout:Ljava/util/zip/GZIPOutputStream;
    :catch_75
    move-exception v1

    .line 227
    .local v1, e:Ljava/io/IOException;
    :try_start_76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    throw v1
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7a

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    :catchall_7a
    move-exception v8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v8

    .restart local v3       #out:Ljava/io/FileOutputStream;
    .restart local v7       #zout:Ljava/util/zip/GZIPOutputStream;
    :cond_7f
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    return-object v4
.end method
