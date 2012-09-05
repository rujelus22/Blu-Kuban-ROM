.class public Lorg/apache/log4j/nt/NTEventLogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "NTEventLogAppender.java"


# static fields
.field private static final DEBUG:I

.field private static final ERROR:I

.field private static final FATAL:I

.field private static final INFO:I

.field private static final WARN:I


# instance fields
.field private _handle:I

.field private server:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->FATAL:I

    .line 46
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->ERROR:I

    .line 47
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->WARN:I

    .line 48
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->INFO:I

    .line 49
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->DEBUG:I

    .line 165
    const-string v0, "NTEventLogAppender"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, p1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "server"
    .parameter "source"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .registers 7
    .parameter "server"
    .parameter "source"
    .parameter "layout"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 40
    iput v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 42
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    .line 72
    if-nez p2, :cond_f

    .line 73
    const-string p2, "Log4j"

    .line 75
    :cond_f
    if-nez p3, :cond_1f

    .line 76
    new-instance v1, Lorg/apache/log4j/TTCCLayout;

    invoke-direct {v1}, Lorg/apache/log4j/TTCCLayout;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 82
    :goto_18
    :try_start_18
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_22

    .line 87
    :goto_1e
    return-void

    .line 78
    :cond_1f
    iput-object p3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    goto :goto_18

    .line 84
    :catch_22
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    iput v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_1e
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .registers 4
    .parameter "source"
    .parameter "layout"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .registers 3
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 65
    return-void
.end method

.method private native deregisterEventSource(I)V
.end method

.method private native registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native reportEvent(ILjava/lang/String;I)V
.end method


# virtual methods
.method public activateOptions()V
    .registers 4

    .prologue
    .line 96
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 98
    :try_start_4
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    .line 104
    :cond_e
    :goto_e
    return-void

    .line 100
    :catch_f
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Could not register event source."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_e
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    .line 109
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v4, sbuf:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 113
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, s:[Ljava/lang/String;
    if-eqz v3, :cond_20

    .line 115
    array-length v1, v3

    .line 116
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    if-lt v0, v1, :cond_32

    .line 122
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #s:[Ljava/lang/String;
    :cond_20
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/log4j/Level;->toInt()I

    move-result v2

    .line 128
    .local v2, nt_category:I
    iget v5, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v2}, Lorg/apache/log4j/nt/NTEventLogAppender;->reportEvent(ILjava/lang/String;I)V

    .line 129
    return-void

    .line 117
    .end local v2           #nt_category:I
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v3       #s:[Ljava/lang/String;
    :cond_32
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public close()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method public finalize()V
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-direct {p0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->deregisterEventSource(I)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 136
    return-void
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 145
    return-void
.end method
