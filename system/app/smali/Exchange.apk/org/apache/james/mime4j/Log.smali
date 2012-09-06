.class public Lorg/apache/james/mime4j/Log;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter "mClazz"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .parameter "o"
    .parameter "t"

    .prologue
    .line 107
    if-nez p0, :cond_7

    const-string v0, "(null)"

    .line 108
    .local v0, m:Ljava/lang/String;
    :goto_4
    if-nez p1, :cond_c

    .line 111
    .end local v0           #m:Ljava/lang/String;
    :goto_6
    return-object v0

    .line 107
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 111
    .restart local v0       #m:Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 65
    :goto_6
    return-void

    .line 64
    :cond_7
    const-string v0, "Email"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public error(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 91
    const-string v0, "Email"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 83
    const-string v0, "Email"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    .line 87
    const-string v0, "Email"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
