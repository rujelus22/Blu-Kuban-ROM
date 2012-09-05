.class public Lorg/apache/log4j/net/TelnetAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "TelnetAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/TelnetAppender$SocketHandler;
    }
.end annotation


# instance fields
.field private port:I

.field private sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 58
    const/16 v0, 0x17

    iput v0, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    .line 55
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 4

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    iget v2, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    invoke-direct {v1, p0, v2}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;-><init>(Lorg/apache/log4j/net/TelnetAppender;I)V

    iput-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    .line 72
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 77
    :goto_e
    return-void

    .line 75
    :catch_f
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method protected append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 98
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v3}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 100
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, s:[Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 102
    array-length v1, v2

    .line 103
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    if-lt v0, v1, :cond_1e

    .line 109
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #s:[Ljava/lang/String;
    :cond_1d
    return-void

    .line 104
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #s:[Ljava/lang/String;
    :cond_1e
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    sget-object v4, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public close()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v0}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->finalize()V

    .line 93
    return-void
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    return v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public setPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 86
    iput p1, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    .line 87
    return-void
.end method
