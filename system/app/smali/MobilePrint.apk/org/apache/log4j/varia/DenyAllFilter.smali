.class public Lorg/apache/log4j/varia/DenyAllFilter;
.super Lorg/apache/log4j/spi/Filter;
.source "DenyAllFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .registers 3
    .parameter "event"

    .prologue
    .line 68
    const/4 v0, -0x1

    return v0
.end method

.method public getOptionStrings()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 57
    return-void
.end method
