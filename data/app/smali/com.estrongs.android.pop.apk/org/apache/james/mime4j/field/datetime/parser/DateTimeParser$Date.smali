.class Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
.super Ljava/lang/Object;


# instance fields
.field private day:I

.field private month:I

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    return-void
.end method


# virtual methods
.method public getDay()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    return-object v0
.end method
