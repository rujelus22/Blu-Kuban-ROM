.class public Lorg/apache/log4j/BasicConfigurator;
.super Ljava/lang/Object;
.source "BasicConfigurator.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static configure()V
    .registers 4

    .prologue
    .line 45
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 46
    .local v0, root:Lorg/apache/log4j/Logger;
    new-instance v1, Lorg/apache/log4j/ConsoleAppender;

    new-instance v2, Lorg/apache/log4j/PatternLayout;

    const-string v3, "%r [%t] %p %c %x - %m%n"

    invoke-direct {v2, v3}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/log4j/ConsoleAppender;-><init>(Lorg/apache/log4j/Layout;)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 48
    return-void
.end method

.method public static configure(Lorg/apache/log4j/Appender;)V
    .registers 2
    .parameter "appender"

    .prologue
    .line 57
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 58
    .local v0, root:Lorg/apache/log4j/Logger;
    invoke-virtual {v0, p0}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 59
    return-void
.end method

.method public static resetConfiguration()V
    .registers 0

    .prologue
    .line 70
    invoke-static {}, Lorg/apache/log4j/LogManager;->resetConfiguration()V

    .line 71
    return-void
.end method
