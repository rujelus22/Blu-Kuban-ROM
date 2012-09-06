.class public interface abstract Lcom/google/common/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEBUG_LVL:I = 0x0

.field public static final ERROR_LVL:I = 0x2

.field public static final EVENT_LVL:I = 0x1

.field public static final SILENT_LVL:I = 0x3


# virtual methods
.method public abstract close()V
.end method

.method public abstract getThreadTag()Ljava/lang/String;
.end method

.method public abstract getThreshold()I
.end method

.method public abstract logDebug(Ljava/lang/String;)V
.end method

.method public abstract logError(Ljava/lang/String;)V
.end method

.method public abstract logEvent(Ljava/lang/String;)V
.end method

.method public abstract logException(Ljava/lang/Throwable;)V
.end method

.method public abstract logException(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract logSevereException(Ljava/lang/Throwable;)V
.end method

.method public abstract logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract logTimedEvent(Ljava/lang/String;JJ)V
.end method

.method public abstract setErrorEmail(Ljava/lang/String;)V
.end method

.method public abstract setThreadTag(Ljava/lang/String;)V
.end method

.method public abstract setThreshold(I)V
.end method
