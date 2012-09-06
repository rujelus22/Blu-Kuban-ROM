.class public Lcom/google/common/logging/RotatingDateLogStream;
.super Lcom/google/common/logging/RotatingLogStream;
.source "RotatingDateLogStream.java"


# instance fields
.field private currentDate_:Ljava/util/Calendar;

.field private lastDate_:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V
    .registers 5
    .parameter "basename"
    .parameter "linkname"
    .parameter "extension"
    .parameter "dateFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/logging/RotatingLogStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V
    .registers 4
    .parameter "basename"
    .parameter "linkname"
    .parameter "dateFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/logging/RotatingLogStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 32
    return-void
.end method

.method private setCurrentDate(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->currentDate_:Ljava/util/Calendar;

    if-nez v0, :cond_15

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->currentDate_:Ljava/util/Calendar;

    .line 100
    iget-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->currentDate_:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/google/common/logging/RotatingDateLogStream;->dateFormat_:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->currentDate_:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected checkRotate(I)V
    .registers 6
    .parameter "lenToWrite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 64
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/common/logging/RotatingDateLogStream;->setCurrentDate(Ljava/util/Date;)V

    .line 66
    iget-object v2, p0, Lcom/google/common/logging/RotatingDateLogStream;->currentDate_:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 67
    .local v0, curDate:I
    iget-object v2, p0, Lcom/google/common/logging/RotatingDateLogStream;->lastDate_:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 69
    .local v1, lastDate:I
    if-eq v0, v1, :cond_1a

    .line 70
    invoke-virtual {p0}, Lcom/google/common/logging/RotatingDateLogStream;->rotate()V

    .line 76
    :cond_1a
    invoke-super {p0, p1}, Lcom/google/common/logging/RotatingLogStream;->checkRotate(I)V

    .line 77
    return-void
.end method

.method protected getNextFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/common/logging/RotatingDateLogStream;->setLastDate(Ljava/util/Date;)V

    .line 45
    invoke-super {p0}, Lcom/google/common/logging/RotatingLogStream;->getNextFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setLastDate(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->lastDate_:Ljava/util/Calendar;

    if-nez v0, :cond_15

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->lastDate_:Ljava/util/Calendar;

    .line 88
    iget-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->lastDate_:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/google/common/logging/RotatingDateLogStream;->dateFormat_:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 90
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/RotatingDateLogStream;->lastDate_:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 91
    return-void
.end method
