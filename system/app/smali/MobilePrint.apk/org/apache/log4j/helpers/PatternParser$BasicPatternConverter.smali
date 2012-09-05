.class Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicPatternConverter"
.end annotation


# instance fields
.field type:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .registers 3
    .parameter "formattingInfo"
    .parameter "type"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 388
    iput p2, p0, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;->type:I

    .line 389
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .registers 6
    .parameter "event"

    .prologue
    .line 393
    iget v0, p0, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;->type:I

    packed-switch v0, :pswitch_data_2c

    .line 405
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 395
    :pswitch_7
    iget-wide v0, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-static {}, Lorg/apache/log4j/spi/LoggingEvent;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 397
    :pswitch_13
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 399
    :pswitch_18
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 401
    :pswitch_21
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 403
    :pswitch_26
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 393
    nop

    :pswitch_data_2c
    .packed-switch 0x7d0
        :pswitch_7
        :pswitch_13
        :pswitch_18
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method
