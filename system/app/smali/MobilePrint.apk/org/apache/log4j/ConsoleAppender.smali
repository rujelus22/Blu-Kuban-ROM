.class public Lorg/apache/log4j/ConsoleAppender;
.super Lorg/apache/log4j/WriterAppender;
.source "ConsoleAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/ConsoleAppender$SystemOutStream;,
        Lorg/apache/log4j/ConsoleAppender$SystemErrStream;
    }
.end annotation


# static fields
.field public static final SYSTEM_ERR:Ljava/lang/String; = "System.err"

.field public static final SYSTEM_OUT:Ljava/lang/String; = "System.out"


# instance fields
.field private follow:Z

.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 36
    const-string v0, "System.out"

    iput-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .registers 3
    .parameter "layout"

    .prologue
    .line 56
    const-string v0, "System.out"

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/ConsoleAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .registers 4
    .parameter "layout"
    .parameter "target"

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 36
    const-string v0, "System.out"

    iput-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/log4j/AppenderSkeleton;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 66
    invoke-virtual {p0, p2}, Lorg/apache/log4j/ConsoleAppender;->setTarget(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/log4j/ConsoleAppender;->activateOptions()V

    .line 68
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 3

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    if-eqz v0, :cond_2b

    .line 131
    iget-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    const-string v1, "System.err"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 132
    new-instance v0, Lorg/apache/log4j/ConsoleAppender$SystemErrStream;

    invoke-direct {v0}, Lorg/apache/log4j/ConsoleAppender$SystemErrStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->setWriter(Ljava/io/Writer;)V

    .line 144
    :goto_1a
    invoke-super {p0}, Lorg/apache/log4j/WriterAppender;->activateOptions()V

    .line 145
    return-void

    .line 134
    :cond_1e
    new-instance v0, Lorg/apache/log4j/ConsoleAppender$SystemOutStream;

    invoke-direct {v0}, Lorg/apache/log4j/ConsoleAppender$SystemOutStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->setWriter(Ljava/io/Writer;)V

    goto :goto_1a

    .line 137
    :cond_2b
    iget-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    const-string v1, "System.err"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->setWriter(Ljava/io/Writer;)V

    goto :goto_1a

    .line 140
    :cond_3f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/WriterAppender;->setWriter(Ljava/io/Writer;)V

    goto :goto_1a
.end method

.method protected final closeWriter()V
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    if-eqz v0, :cond_7

    .line 154
    invoke-super {p0}, Lorg/apache/log4j/WriterAppender;->closeWriter()V

    .line 156
    :cond_7
    return-void
.end method

.method public final getFollow()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    return-object v0
.end method

.method public final setFollow(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    .line 108
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, v:Ljava/lang/String;
    const-string v1, "System.out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 80
    const-string v1, "System.out"

    iput-object v1, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    .line 86
    :goto_10
    return-void

    .line 81
    :cond_11
    const-string v1, "System.err"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 82
    const-string v1, "System.err"

    iput-object v1, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    goto :goto_10

    .line 84
    :cond_1e
    invoke-virtual {p0, p1}, Lorg/apache/log4j/ConsoleAppender;->targetWarn(Ljava/lang/String;)V

    goto :goto_10
.end method

.method targetWarn(Ljava/lang/String;)V
    .registers 4
    .parameter "val"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] should be System.out or System.err."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 123
    const-string v0, "Using previously set target, System.out by default."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 124
    return-void
.end method
