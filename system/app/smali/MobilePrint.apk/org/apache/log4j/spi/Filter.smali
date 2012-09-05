.class public abstract Lorg/apache/log4j/spi/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Lorg/apache/log4j/spi/OptionHandler;


# static fields
.field public static final ACCEPT:I = 0x1

.field public static final DENY:I = -0x1

.field public static final NEUTRAL:I


# instance fields
.field public next:Lorg/apache/log4j/spi/Filter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.method public abstract decide(Lorg/apache/log4j/spi/LoggingEvent;)I
.end method

.method public getNext()Lorg/apache/log4j/spi/Filter;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/log4j/spi/Filter;->next:Lorg/apache/log4j/spi/Filter;

    return-object v0
.end method

.method public setNext(Lorg/apache/log4j/spi/Filter;)V
    .registers 2
    .parameter "next"

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/log4j/spi/Filter;->next:Lorg/apache/log4j/spi/Filter;

    .line 115
    return-void
.end method
