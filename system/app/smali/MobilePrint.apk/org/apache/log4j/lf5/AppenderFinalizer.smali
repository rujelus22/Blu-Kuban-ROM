.class public Lorg/apache/log4j/lf5/AppenderFinalizer;
.super Ljava/lang/Object;
.source "AppenderFinalizer.java"


# instance fields
.field protected _defaultMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .registers 3
    .parameter "defaultMonitor"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/AppenderFinalizer;->_defaultMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 51
    iput-object p1, p0, Lorg/apache/log4j/lf5/AppenderFinalizer;->_defaultMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 52
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Disposing of the default LogBrokerMonitor instance"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/apache/log4j/lf5/AppenderFinalizer;->_defaultMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->dispose()V

    .line 67
    return-void
.end method
