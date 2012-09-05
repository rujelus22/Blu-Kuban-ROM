.class Lorg/apache/log4j/net/DefaultEvaluator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/log4j/spi/TriggeringEventEvaluator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTriggeringEvent(Lorg/apache/log4j/spi/LoggingEvent;)Z
    .registers 4

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method
