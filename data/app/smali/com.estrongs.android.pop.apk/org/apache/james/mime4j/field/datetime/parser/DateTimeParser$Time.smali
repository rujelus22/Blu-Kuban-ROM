.class Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
.super Ljava/lang/Object;


# instance fields
.field private hour:I

.field private minute:I

.field private second:I

.field private zone:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->hour:I

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->minute:I

    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->second:I

    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->zone:I

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->hour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->minute:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->second:I

    return v0
.end method

.method public getZone()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->zone:I

    return v0
.end method
