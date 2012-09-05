.class abstract Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NamedPatternConverter"
.end annotation


# instance fields
.field precision:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .registers 3
    .parameter "formattingInfo"
    .parameter "precision"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 503
    iput p2, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    .line 504
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .registers 8
    .parameter "event"

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, n:Ljava/lang/String;
    iget v4, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    if-gtz v4, :cond_9

    .line 526
    .end local v3           #n:Ljava/lang/String;
    :cond_8
    :goto_8
    return-object v3

    .line 515
    .restart local v3       #n:Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 520
    .local v2, len:I
    add-int/lit8 v0, v2, -0x1

    .line 521
    .local v0, end:I
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    .local v1, i:I
    :goto_11
    if-gtz v1, :cond_1a

    .line 526
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 522
    :cond_1a
    const/16 v4, 0x2e

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 523
    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    .line 521
    add-int/lit8 v1, v1, -0x1

    goto :goto_11
.end method

.method abstract getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
.end method
