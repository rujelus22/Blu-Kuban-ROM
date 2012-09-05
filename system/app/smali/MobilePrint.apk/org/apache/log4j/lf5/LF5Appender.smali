.class public Lorg/apache/log4j/lf5/LF5Appender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "LF5Appender.java"


# static fields
.field protected static _defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field protected static _finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;


# instance fields
.field protected _logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .registers 2
    .parameter "monitor"

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 82
    if-eqz p1, :cond_7

    .line 83
    iput-object p1, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 85
    :cond_7
    return-void
.end method

.method protected static declared-synchronized getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .registers 5

    .prologue
    .line 205
    const-class v2, Lorg/apache/log4j/lf5/LF5Appender;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3d

    if-nez v1, :cond_34

    .line 207
    :try_start_7
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLog4JLevels()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;-><init>(Ljava/util/List;)V

    sput-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 209
    new-instance v1, Lorg/apache/log4j/lf5/AppenderFinalizer;

    sget-object v3, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {v1, v3}, Lorg/apache/log4j/lf5/AppenderFinalizer;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    sput-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;

    .line 211
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorWidth()I

    move-result v3

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFrameSize(II)V

    .line 213
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(I)V

    .line 214
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show()V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_3d
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_34} :catch_38

    .line 221
    .local v0, e:Ljava/lang/SecurityException;
    :cond_34
    :goto_34
    :try_start_34
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_3d

    monitor-exit v2

    return-object v1

    .line 217
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_38
    move-exception v0

    .restart local v0       #e:Ljava/lang/SecurityException;
    const/4 v1, 0x0

    :try_start_3a
    sput-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3d

    goto :goto_34

    .line 205
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static getDefaultMonitorHeight()I
    .registers 1

    .prologue
    .line 255
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getDefaultMonitorWidth()I
    .registers 1

    .prologue
    .line 251
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getScreenHeight()I
    .registers 2

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v1, v1, Ljava/awt/Dimension;->height:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 246
    .local v0, t:Ljava/lang/Throwable;
    :goto_a
    return v1

    .end local v0           #t:Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .restart local v0       #t:Ljava/lang/Throwable;
    const/16 v1, 0x258

    goto :goto_a
.end method

.method protected static getScreenWidth()I
    .registers 2

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v1, v1, Ljava/awt/Dimension;->width:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 233
    .local v0, t:Ljava/lang/Throwable;
    :goto_a
    return v1

    .end local v0           #t:Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .restart local v0       #t:Ljava/lang/Throwable;
    const/16 v1, 0x320

    goto :goto_a
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 191
    new-instance v0, Lorg/apache/log4j/lf5/LF5Appender;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>()V

    .line 192
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    .line 99
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, category:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, logMessage:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, nestedDiagnosticContext:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, threadDescription:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/log4j/Priority;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, level:Ljava/lang/String;
    iget-wide v8, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 105
    .local v8, time:J
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v3

    .line 108
    .local v3, locationInfo:Lorg/apache/log4j/spi/LocationInfo;
    new-instance v6, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v6}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    .line 110
    .local v6, record:Lorg/apache/log4j/lf5/Log4JLogRecord;
    invoke-virtual {v6, v0}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6, v4}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 112
    iget-object v10, v3, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6, v8, v9}, Lorg/apache/log4j/lf5/LogRecord;->setMillis(J)V

    .line 114
    invoke-virtual {v6, v7}, Lorg/apache/log4j/lf5/LogRecord;->setThreadDescription(Ljava/lang/String;)V

    .line 116
    if-eqz v5, :cond_57

    .line 117
    invoke-virtual {v6, v5}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    .line 122
    :goto_39
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v10

    if-eqz v10, :cond_46

    .line 123
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setThrownStackTrace(Lorg/apache/log4j/spi/ThrowableInformation;)V

    .line 127
    :cond_46
    :try_start_46
    invoke-static {v2}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    :try_end_4d
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_46 .. :try_end_4d} :catch_5d

    .line 134
    :goto_4d
    iget-object v10, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    if-eqz v10, :cond_56

    .line 135
    iget-object v10, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v10, v6}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 137
    :cond_56
    return-void

    .line 119
    :cond_57
    const-string v10, ""

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    goto :goto_39

    .line 131
    :catch_5d
    move-exception v1

    .local v1, e:Lorg/apache/log4j/lf5/LogLevelFormatException;
    sget-object v10, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    goto :goto_4d
.end method

.method public close()V
    .registers 1

    .prologue
    .line 144
    return-void
.end method

.method public equals(Lorg/apache/log4j/lf5/LF5Appender;)Z
    .registers 4
    .parameter "compareTo"

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LF5Appender;->getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-object v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public setCallSystemExitOnClose(Z)V
    .registers 3
    .parameter "callSystemExitOnClose"

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    .line 170
    return-void
.end method

.method public setMaxNumberOfRecords(I)V
    .registers 3
    .parameter "maxNumberOfRecords"

    .prologue
    .line 195
    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxNumberOfLogRecords(I)V

    .line 196
    return-void
.end method
