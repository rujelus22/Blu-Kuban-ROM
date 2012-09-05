.class public Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;
.super Ljava/lang/Object;
.source "OnlyOnceErrorHandler.java"

# interfaces
.implements Lorg/apache/log4j/spi/ErrorHandler;


# instance fields
.field final ERROR_PREFIX:Ljava/lang/String;

.field final WARN_PREFIX:Ljava/lang/String;

.field firstTime:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "log4j warning: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->WARN_PREFIX:Ljava/lang/String;

    .line 41
    const-string v0, "log4j error: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->ERROR_PREFIX:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    .line 37
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_a

    .line 90
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    .line 93
    :cond_a
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5
    .parameter "message"
    .parameter "e"
    .parameter "errorCode"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V

    .line 68
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
    .registers 6
    .parameter "message"
    .parameter "e"
    .parameter "errorCode"
    .parameter "event"

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-static {p1, p2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    .line 80
    :cond_a
    return-void
.end method

.method public setAppender(Lorg/apache/log4j/Appender;)V
    .registers 2
    .parameter "appender"

    .prologue
    .line 100
    return-void
.end method

.method public setBackupAppender(Lorg/apache/log4j/Appender;)V
    .registers 2
    .parameter "appender"

    .prologue
    .line 107
    return-void
.end method

.method public setLogger(Lorg/apache/log4j/Logger;)V
    .registers 2
    .parameter "logger"

    .prologue
    .line 51
    return-void
.end method
