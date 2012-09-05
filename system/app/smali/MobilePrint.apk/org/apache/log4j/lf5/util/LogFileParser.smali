.class public Lorg/apache/log4j/lf5/util/LogFileParser;
.super Ljava/lang/Object;
.source "LogFileParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ATTRIBUTE_DELIMITER:Ljava/lang/String; = "[slf5s."

.field public static final CATEGORY_DELIMITER:Ljava/lang/String; = "[slf5s.CATEGORY]"

.field public static final DATE_DELIMITER:Ljava/lang/String; = "[slf5s.DATE]"

.field public static final LOCATION_DELIMITER:Ljava/lang/String; = "[slf5s.LOCATION]"

.field public static final MESSAGE_DELIMITER:Ljava/lang/String; = "[slf5s.MESSAGE]"

.field public static final NDC_DELIMITER:Ljava/lang/String; = "[slf5s.NDC]"

.field public static final PRIORITY_DELIMITER:Ljava/lang/String; = "[slf5s.PRIORITY]"

.field public static final RECORD_DELIMITER:Ljava/lang/String; = "[slf5s.start]"

.field public static final THREAD_DELIMITER:Ljava/lang/String; = "[slf5s.THREAD]"

.field private static _sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private _in:Ljava/io/InputStream;

.field _loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

.field private _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss,S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 76
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method static access$000(Lorg/apache/log4j/lf5/util/LogFileParser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    return-void
.end method

.method private createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;
    .registers 5
    .parameter "record"

    .prologue
    .line 261
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 262
    :cond_c
    const/4 v0, 0x0

    .line 275
    :goto_d
    return-object v0

    .line 265
    :cond_e
    new-instance v0, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    .line 266
    .local v0, lr:Lorg/apache/log4j/lf5/LogRecord;
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/LogRecord;->setMillis(J)V

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 268
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThreadDescription(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseNDC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThrowable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThrownStackTrace(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private destroyDialog()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    .line 165
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->dispose()V

    .line 166
    return-void
.end method

.method private getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "index"
    .parameter "record"

    .prologue
    .line 280
    const-string v1, "[slf5s."

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, start:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 288
    :goto_10
    return-object v1

    .line 286
    :cond_11
    const-string v1, "]"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 288
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method private loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    .local v0, br:Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 175
    .local v1, count:I
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    .line 177
    .local v3, size:I
    const/4 v2, 0x0

    .line 178
    .local v2, sb:Ljava/lang/StringBuffer;
    if-lez v3, :cond_22

    .line 179
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #sb:Ljava/lang/StringBuffer;
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 184
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    :goto_12
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2a

    .line 188
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 189
    const/4 v0, 0x0

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 181
    :cond_22
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #sb:Ljava/lang/StringBuffer;
    const/16 v4, 0x400

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 184
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    goto :goto_12

    .line 185
    :cond_2a
    int-to-char v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_12
.end method

.method private parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "record"

    .prologue
    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 199
    const/4 v1, 0x0

    .line 202
    :goto_8
    return-object v1

    :cond_9
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private parseCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "record"

    .prologue
    .line 241
    const-string v0, "[slf5s.CATEGORY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .registers 8
    .parameter "record"

    .prologue
    const-wide/16 v3, 0x0

    .line 207
    :try_start_2
    const-string v5, "[slf5s.DATE]"

    invoke-direct {p0, v5, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 217
    .end local v2           #s:Ljava/lang/String;
    :goto_a
    return-wide v3

    .line 213
    .restart local v2       #s:Ljava/lang/String;
    :cond_b
    sget-object v5, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 215
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_14} :catch_16

    move-result-wide v3

    goto :goto_a

    .line 217
    .end local v0           #d:Ljava/util/Date;
    .end local v2           #s:Ljava/lang/String;
    :catch_16
    move-exception v1

    .local v1, e:Ljava/text/ParseException;
    goto :goto_a
.end method

.method private parseLocation(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "record"

    .prologue
    .line 245
    const-string v0, "[slf5s.LOCATION]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "record"

    .prologue
    .line 249
    const-string v0, "[slf5s.MESSAGE]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseNDC(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "record"

    .prologue
    .line 253
    const-string v0, "[slf5s.NDC]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    .registers 5
    .parameter "record"

    .prologue
    .line 222
    const-string v2, "[slf5s.PRIORITY]"

    invoke-direct {p0, v2, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, temp:Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 226
    :try_start_8
    invoke-static {v1}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    :try_end_b
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    .line 233
    :goto_c
    return-object v2

    .line 228
    :catch_d
    move-exception v0

    .local v0, e:Lorg/apache/log4j/lf5/LogLevelFormatException;
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_c

    .line 233
    .end local v0           #e:Lorg/apache/log4j/lf5/LogLevelFormatException;
    :cond_11
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_c
.end method

.method private parseThread(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "record"

    .prologue
    .line 237
    const-string v0, "[slf5s.THREAD]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseThrowable(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "record"

    .prologue
    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected displayError(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 155
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    iget-object v1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .registers 3
    .parameter "monitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 89
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 91
    return-void
.end method

.method public run()V
    .registers 10

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, index:I
    const/4 v0, 0x0

    .line 102
    .local v0, counter:I
    const/4 v3, 0x0

    .line 104
    .local v3, isLogFile:Z
    new-instance v6, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    iget-object v7, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v7}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v7

    const-string v8, "Loading file..."

    invoke-direct {v6, v7, v8}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    .line 109
    :try_start_12
    iget-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    invoke-direct {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, logRecords:Ljava/lang/String;
    :goto_18
    const-string v6, "[slf5s.start]"

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4f

    .line 122
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_38

    if-eqz v3, :cond_38

    .line 123
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v5

    .line 125
    .local v5, temp:Lorg/apache/log4j/lf5/LogRecord;
    if-eqz v5, :cond_38

    .line 126
    iget-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v6, v5}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 130
    .end local v5           #temp:Lorg/apache/log4j/lf5/LogRecord;
    :cond_38
    if-nez v3, :cond_68

    .line 131
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid log file format"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_42} :catch_42
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_42} :catch_71

    .line 140
    .end local v4           #logRecords:Ljava/lang/String;
    :catch_42
    move-exception v1

    .local v1, e:Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    .line 141
    const-string v6, "Error - Invalid log file format.\nPlease see documentation on how to load log files."

    invoke-virtual {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    .line 148
    .end local v1           #e:Ljava/lang/RuntimeException;
    :goto_4b
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 149
    return-void

    .line 112
    .restart local v4       #logRecords:Ljava/lang/String;
    :cond_4f
    :try_start_4f
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v5

    .line 113
    .restart local v5       #temp:Lorg/apache/log4j/lf5/LogRecord;
    const/4 v3, 0x1

    .line 115
    if-eqz v5, :cond_5f

    .line 116
    iget-object v6, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v6, v5}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 119
    :cond_5f
    const-string v6, "[slf5s.start]"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v0, v6

    goto :goto_18

    .line 133
    .end local v5           #temp:Lorg/apache/log4j/lf5/LogRecord;
    :cond_68
    new-instance v6, Lorg/apache/log4j/lf5/util/LogFileParser$1;

    invoke-direct {v6, p0}, Lorg/apache/log4j/lf5/util/LogFileParser$1;-><init>(Lorg/apache/log4j/lf5/util/LogFileParser;)V

    invoke-static {v6}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_70} :catch_42
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_70} :catch_71

    goto :goto_4b

    .line 144
    .end local v4           #logRecords:Ljava/lang/String;
    :catch_71
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    .line 145
    const-string v6, "Error - Unable to load log file!"

    invoke-virtual {p0, v6}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    goto :goto_4b
.end method
