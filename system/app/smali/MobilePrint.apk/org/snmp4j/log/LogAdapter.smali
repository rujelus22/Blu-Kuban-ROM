.class public interface abstract Lorg/snmp4j/log/LogAdapter;
.super Ljava/lang/Object;
.source "LogAdapter.java"


# virtual methods
.method public abstract debug(Ljava/lang/Object;)V
.end method

.method public abstract error(Ljava/lang/Object;)V
.end method

.method public abstract error(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract fatal(Ljava/lang/Object;)V
.end method

.method public abstract fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;
.end method

.method public abstract getLogHandler()Ljava/util/Iterator;
.end method

.method public abstract getLogLevel()Lorg/snmp4j/log/LogLevel;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract info(Ljava/lang/Object;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract setLogLevel(Lorg/snmp4j/log/LogLevel;)V
.end method

.method public abstract warn(Ljava/lang/Object;)V
.end method
