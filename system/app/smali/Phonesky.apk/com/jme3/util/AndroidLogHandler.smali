.class public Lcom/jme3/util/AndroidLogHandler;
.super Ljava/util/logging/Handler;
.source "AndroidLogHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 17
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 7
    .parameter "record"

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    .line 26
    .local v1, level:Ljava/util/logging/Level;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, clsName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, msg:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v3

    .line 29
    .local v3, t:Ljava/lang/Throwable;
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_18

    .line 30
    invoke-static {v0, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_17
    :goto_17
    return-void

    .line 31
    :cond_18
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_20

    .line 32
    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 33
    :cond_20
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_28

    .line 34
    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 35
    :cond_28
    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_30

    .line 36
    invoke-static {v0, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 37
    :cond_30
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    if-eq v1, v4, :cond_3c

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    if-eq v1, v4, :cond_3c

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_17

    .line 38
    :cond_3c
    invoke-static {v0, v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method
