.class public final Lcom/google/common/logging/Log2FileHandler;
.super Ljava/util/logging/Handler;
.source "Log2FileHandler.java"

# interfaces
.implements Lcom/google/common/logging/ConfigurableHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static BACKUP_LOG_DIR:Ljava/lang/String; = null

.field static final BASENAME_PROP:Ljava/lang/String; = "baseName"

.field private static final DEFAULT_BASE_FILE_NAME:Ljava/lang/String; = "/export/hda3/tmp/Log2Trace"

.field private static final DEFAULT_FILENAME_TS_FORMAT_STR:Ljava/lang/String; = "-yyyy_MM_dd_HH_mm_ss"

.field private static final DEFAULT_RECORD_TS_FORMAT_STR:Ljava/lang/String; = "yyMMdd HH:mm:ss "

.field private static final DEFAULT_ROTATION_UNIT_SIZE_MB:J = 0x708L

.field static final EXTENSION_PROP:Ljava/lang/String; = "extension"

.field static final FILENAME_TS_FORMAT_PROP:Ljava/lang/String; = "fileNameTsFormat"

.field static final FORMATTER_PROP:Ljava/lang/String; = "formatter"

.field static final LIMIT_PROP:Ljava/lang/String; = "limit"

.field static final LINKNAME_PROP:Ljava/lang/String; = "linkName"

.field private static LOG_DIR_ENV:Ljava/lang/String; = null

.field private static LOG_DIR_PROP:Ljava/lang/String; = null

.field private static final MB:J = 0x100000L

.field static final QUALIFY_BASENAME_PROP:Ljava/lang/String; = "qualifyBaseName"

.field static final RECORD_TS_FORMAT_PROP:Ljava/lang/String; = "recordTsFormat"


# instance fields
.field private baseFileName:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private fileNameTsFormat:Ljava/text/DateFormat;

.field private formatterClass:Ljava/lang/String;

.field private linkName:Ljava/lang/String;

.field private logFileWriter:Ljava/io/Writer;

.field private qualifyBaseFileName:Z

.field private recordTsFormat:Ljava/text/DateFormat;

.field private rotateSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 441
    const-string v0, "GOOGLE_LOG_DIR"

    sput-object v0, Lcom/google/common/logging/Log2FileHandler;->LOG_DIR_ENV:Ljava/lang/String;

    .line 442
    const-string v0, "google.logDir"

    sput-object v0, Lcom/google/common/logging/Log2FileHandler;->LOG_DIR_PROP:Ljava/lang/String;

    .line 443
    const-string v0, "/export/hda3/tmp"

    sput-object v0, Lcom/google/common/logging/Log2FileHandler;->BACKUP_LOG_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 183
    const-string v1, "/export/hda3/tmp/Log2Trace"

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyMMdd HH:mm:ss "

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "-yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/logging/Log2FileHandler;->getRotationUnitSize()J

    move-result-wide v6

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/logging/Log2FileHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Ljava/text/DateFormat;J)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .parameter "fileName"

    .prologue
    .line 169
    const/4 v3, 0x0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyMMdd HH:mm:ss "

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "-yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/logging/Log2FileHandler;->getRotationUnitSize()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/common/logging/Log2FileHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Ljava/text/DateFormat;J)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Ljava/text/DateFormat;J)V
    .registers 9
    .parameter "baseFileName"
    .parameter "linkName"
    .parameter "extension"
    .parameter "recordTsFormat"
    .parameter "fileNameTsFormat"
    .parameter "rotateSize"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/google/common/logging/Log2FileHandler;->baseFileName:Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/logging/Log2FileHandler;->qualifyBaseFileName:Z

    .line 151
    iput-object p2, p0, Lcom/google/common/logging/Log2FileHandler;->linkName:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/google/common/logging/Log2FileHandler;->extension:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/google/common/logging/Log2FileHandler;->recordTsFormat:Ljava/text/DateFormat;

    .line 154
    iput-object p5, p0, Lcom/google/common/logging/Log2FileHandler;->fileNameTsFormat:Ljava/text/DateFormat;

    .line 155
    iput-wide p6, p0, Lcom/google/common/logging/Log2FileHandler;->rotateSize:J

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    .line 158
    const-string v0, "com.google.common.logging.Log2Formatter"

    iput-object v0, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/google/common/logging/Log2Formatter;

    invoke-direct {v0, p4}, Lcom/google/common/logging/Log2Formatter;-><init>(Ljava/text/DateFormat;)V

    invoke-virtual {p0, v0}, Lcom/google/common/logging/Log2FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 160
    return-void
.end method

.method private static directoryExists(Ljava/lang/String;)Z
    .registers 3
    .parameter "dir"

    .prologue
    .line 387
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static getLoggingDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 395
    sget-object v1, Lcom/google/common/logging/Log2FileHandler;->LOG_DIR_ENV:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/google/common/logging/Log2FileHandler;->directoryExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 406
    .end local v0           #dir:Ljava/lang/String;
    :cond_e
    :goto_e
    return-object v0

    .line 399
    .restart local v0       #dir:Ljava/lang/String;
    :cond_f
    sget-object v1, Lcom/google/common/logging/Log2FileHandler;->LOG_DIR_PROP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/google/common/logging/Log2FileHandler;->directoryExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 403
    :cond_1d
    sget-object v1, Lcom/google/common/logging/Log2FileHandler;->BACKUP_LOG_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/logging/Log2FileHandler;->directoryExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 406
    invoke-static {}, Lcom/google/common/logging/Log2FileHandler;->getTempDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private static getRotationUnitSize()J
    .registers 5

    .prologue
    .line 294
    const-string v3, "GOOGLE_MAX_LOG_MB"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, maxLogSizeMbStr:Ljava/lang/String;
    if-eqz v2, :cond_18

    .line 297
    :try_start_8
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_17

    move-result-wide v0

    .line 298
    .local v0, maxLogSizeMb:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_18

    .line 299
    const-wide/32 v3, 0x100000

    mul-long/2addr v3, v0

    .line 305
    .end local v0           #maxLogSizeMb:J
    :goto_16
    return-wide v3

    .line 301
    :catch_17
    move-exception v3

    .line 305
    :cond_18
    const-wide/32 v3, 0x70800000

    goto :goto_16
.end method

.method private static getTempDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, tmpDir:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 415
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_e
    return-object v0
.end method

.method private openWriter()V
    .registers 7

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/google/common/logging/Log2FileHandler;->baseFileName:Ljava/lang/String;

    .line 363
    .local v1, qualifiedFileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/common/logging/Log2FileHandler;->linkName:Ljava/lang/String;

    .line 365
    .local v2, qualifiedLinkName:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/common/logging/Log2FileHandler;->qualifyBaseFileName:Z

    if-eqz v4, :cond_32

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/common/logging/Log2FileHandler;->baseFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_32

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/common/logging/Log2FileHandler;->getLoggingDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/logging/Log2FileHandler;->baseFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_32
    iget-boolean v4, p0, Lcom/google/common/logging/Log2FileHandler;->qualifyBaseFileName:Z

    if-eqz v4, :cond_60

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/common/logging/Log2FileHandler;->linkName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_60

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/common/logging/Log2FileHandler;->getLoggingDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/logging/Log2FileHandler;->linkName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    :cond_60
    new-instance v3, Lcom/google/common/logging/RotatingLogStream;

    iget-object v4, p0, Lcom/google/common/logging/Log2FileHandler;->extension:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/common/logging/Log2FileHandler;->fileNameTsFormat:Ljava/text/DateFormat;

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/google/common/logging/RotatingLogStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 379
    .local v3, rls:Lcom/google/common/logging/RotatingLogStream;
    iget-wide v4, p0, Lcom/google/common/logging/Log2FileHandler;->rotateSize:J

    invoke-virtual {v3, v4, v5}, Lcom/google/common/logging/RotatingLogStream;->setRotateSize(J)V

    .line 380
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7a} :catch_7b

    .line 384
    .end local v1           #qualifiedFileName:Ljava/lang/String;
    .end local v2           #qualifiedLinkName:Ljava/lang/String;
    .end local v3           #rls:Lcom/google/common/logging/RotatingLogStream;
    :goto_7a
    return-void

    .line 381
    :catch_7b
    move-exception v0

    .line 382
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a
.end method

.method private qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "instanceName"
    .parameter "propName"

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-object v1, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    if-eqz v1, :cond_d

    .line 340
    :try_start_5
    iget-object v1, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_e

    .line 349
    :cond_d
    :goto_d
    return-void

    .line 342
    :catch_e
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log2FileHandler#flush : error in closing log!\n Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    iput-object v4, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    goto :goto_d
.end method

.method public configure(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/logging/Handler;
    .registers 14
    .parameter "instanceName"
    .parameter "configProps"

    .prologue
    const/4 v10, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/google/common/logging/Log2FileHandler;->close()V

    .line 203
    const-string v6, "baseName"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/export/hda3/tmp/Log2Trace"

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->baseFileName:Ljava/lang/String;

    .line 206
    const-string v6, "qualifyBaseName"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/common/logging/Log2FileHandler;->qualifyBaseFileName:Z

    .line 211
    const-string v6, "limit"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/common/logging/Log2FileHandler;->rotateSize:J

    .line 215
    iget-wide v6, p0, Lcom/google/common/logging/Log2FileHandler;->rotateSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_48

    .line 216
    invoke-static {}, Lcom/google/common/logging/Log2FileHandler;->getRotationUnitSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/common/logging/Log2FileHandler;->rotateSize:J

    .line 219
    :cond_48
    const-string v6, "recordTsFormat"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yyMMdd HH:mm:ss "

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, recordTsFormatStr:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->recordTsFormat:Ljava/text/DateFormat;

    .line 226
    const-string v6, "fileNameTsFormat"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-yyyy_MM_dd_HH_mm_ss"

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, fileNameTsFormatStr:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->fileNameTsFormat:Ljava/text/DateFormat;

    .line 233
    const-string v6, "linkName"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->linkName:Ljava/lang/String;

    .line 237
    const-string v6, "extension"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->extension:Ljava/lang/String;

    .line 241
    const-string v6, "formatter"

    invoke-direct {p0, p1, v6}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    .line 245
    iget-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14f

    .line 246
    const/4 v3, 0x0

    .line 248
    .local v3, fmt:Ljava/util/logging/Formatter;
    :try_start_9f
    iget-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    const-class v7, Lcom/google/common/logging/Log2Formatter;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 256
    new-instance v4, Lcom/google/common/logging/Log2Formatter;

    iget-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->recordTsFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v6}, Lcom/google/common/logging/Log2Formatter;-><init>(Ljava/text/DateFormat;)V
    :try_end_b4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9f .. :try_end_b4} :catch_ca
    .catch Ljava/lang/InstantiationException; {:try_start_9f .. :try_end_b4} :catch_f6
    .catch Ljava/lang/IllegalAccessException; {:try_start_9f .. :try_end_b4} :catch_122

    .end local v3           #fmt:Ljava/util/logging/Formatter;
    .local v4, fmt:Ljava/util/logging/Formatter;
    move-object v3, v4

    .line 276
    .end local v4           #fmt:Ljava/util/logging/Formatter;
    .restart local v3       #fmt:Ljava/util/logging/Formatter;
    :goto_b5
    if-eqz v3, :cond_ba

    .line 277
    invoke-virtual {p0, v3}, Lcom/google/common/logging/Log2FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 283
    .end local v3           #fmt:Ljava/util/logging/Formatter;
    :cond_ba
    :goto_ba
    return-object p0

    .line 258
    .restart local v3       #fmt:Ljava/util/logging/Formatter;
    :cond_bb
    :try_start_bb
    iget-object v6, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/logging/Formatter;

    move-object v3, v0
    :try_end_c9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bb .. :try_end_c9} :catch_ca
    .catch Ljava/lang/InstantiationException; {:try_start_bb .. :try_end_c9} :catch_f6
    .catch Ljava/lang/IllegalAccessException; {:try_start_bb .. :try_end_c9} :catch_122

    goto :goto_b5

    .line 260
    :catch_ca
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/ClassNotFoundException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading formatter class specified by: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "formatter"

    invoke-direct {p0, p1, v8}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b5

    .line 265
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_f6
    move-exception v1

    .line 266
    .local v1, e:Ljava/lang/InstantiationException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error instantiating formatter class specified by: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "formatter"

    invoke-direct {p0, p1, v8}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b5

    .line 270
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_122
    move-exception v1

    .line 271
    .local v1, e:Ljava/lang/IllegalAccessException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error instantiating formatter class specified by: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "formatter"

    invoke-direct {p0, p1, v8}, Lcom/google/common/logging/Log2FileHandler;->qualifyPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/common/logging/Log2FileHandler;->formatterClass:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_b5

    .line 281
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v3           #fmt:Ljava/util/logging/Formatter;
    :cond_14f
    new-instance v6, Lcom/google/common/logging/Log2Formatter;

    iget-object v7, p0, Lcom/google/common/logging/Log2FileHandler;->recordTsFormat:Ljava/text/DateFormat;

    invoke-direct {v6, v7}, Lcom/google/common/logging/Log2Formatter;-><init>(Ljava/text/DateFormat;)V

    invoke-virtual {p0, v6}, Lcom/google/common/logging/Log2FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    goto/16 :goto_ba
.end method

.method public flush()V
    .registers 5

    .prologue
    .line 326
    iget-object v1, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    if-eqz v1, :cond_9

    .line 328
    :try_start_4
    iget-object v1, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 335
    :cond_9
    :goto_9
    return-void

    .line 329
    :catch_a
    move-exception v0

    .line 330
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log2FileHandler#flush : error in flushing log!\n Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 7
    .parameter "rec"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/common/logging/Log2FileHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, logMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    if-nez v2, :cond_f

    .line 311
    invoke-direct {p0}, Lcom/google/common/logging/Log2FileHandler;->openWriter()V

    .line 314
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/google/common/logging/Log2FileHandler;->logFileWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_1a

    .line 323
    :goto_19
    return-void

    .line 316
    :catch_1a
    move-exception v0

    .line 317
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log2FileHandler#publish : error in writing to log!\n Exception thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nlog entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_19
.end method
