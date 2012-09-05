.class public Lcom/android/exchange/utility/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public days:I

.field public hours:I

.field public minutes:I

.field public seconds:I

.field public sign:I

.field public weeks:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/utility/Duration;->sign:I

    .line 41
    return-void
.end method


# virtual methods
.method public getMillis()J
    .registers 6

    .prologue
    .line 131
    iget v2, p0, Lcom/android/exchange/utility/Duration;->sign:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 132
    .local v0, factor:J
    const v2, 0x93a80

    iget v3, p0, Lcom/android/exchange/utility/Duration;->weeks:I

    mul-int/2addr v2, v3

    const v3, 0x15180

    iget v4, p0, Lcom/android/exchange/utility/Duration;->days:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/exchange/utility/Duration;->hours:I

    mul-int/lit16 v3, v3, 0xe10

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/exchange/utility/Duration;->minutes:I

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/exchange/utility/Duration;->seconds:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public parse(Ljava/lang/String;)V
    .registers 10
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    iput v6, p0, Lcom/android/exchange/utility/Duration;->sign:I

    .line 49
    iput v5, p0, Lcom/android/exchange/utility/Duration;->weeks:I

    .line 50
    iput v5, p0, Lcom/android/exchange/utility/Duration;->days:I

    .line 51
    iput v5, p0, Lcom/android/exchange/utility/Duration;->hours:I

    .line 52
    iput v5, p0, Lcom/android/exchange/utility/Duration;->minutes:I

    .line 53
    iput v5, p0, Lcom/android/exchange/utility/Duration;->seconds:I

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 56
    .local v2, len:I
    const/4 v1, 0x0

    .line 59
    .local v1, index:I
    if-ge v2, v6, :cond_16

    .line 113
    :cond_15
    return-void

    .line 63
    :cond_16
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 64
    .local v0, c:C
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_50

    .line 65
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/exchange/utility/Duration;->sign:I

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 71
    :cond_23
    :goto_23
    if-lt v2, v1, :cond_15

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 76
    const/16 v5, 0x50

    if-eq v0, v5, :cond_57

    .line 77
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration.parse(str=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\') expected \'P\' at index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 67
    :cond_50
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_23

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 80
    :cond_57
    add-int/lit8 v1, v1, 0x1

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, n:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v4, tempException:Ljava/lang/StringBuffer;
    :goto_5f
    if-ge v1, v2, :cond_15

    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    const/16 v5, 0x30

    if-lt v0, v5, :cond_75

    const/16 v5, 0x39

    if-gt v0, v5, :cond_75

    .line 87
    mul-int/lit8 v3, v3, 0xa

    .line 88
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v3, v5

    .line 84
    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 89
    :cond_75
    const/16 v5, 0x57

    if-ne v0, v5, :cond_7d

    .line 90
    iput v3, p0, Lcom/android/exchange/utility/Duration;->weeks:I

    .line 91
    const/4 v3, 0x0

    goto :goto_72

    .line 92
    :cond_7d
    const/16 v5, 0x48

    if-ne v0, v5, :cond_85

    .line 93
    iput v3, p0, Lcom/android/exchange/utility/Duration;->hours:I

    .line 94
    const/4 v3, 0x0

    goto :goto_72

    .line 95
    :cond_85
    const/16 v5, 0x4d

    if-ne v0, v5, :cond_8d

    .line 96
    iput v3, p0, Lcom/android/exchange/utility/Duration;->minutes:I

    .line 97
    const/4 v3, 0x0

    goto :goto_72

    .line 98
    :cond_8d
    const/16 v5, 0x53

    if-ne v0, v5, :cond_95

    .line 99
    iput v3, p0, Lcom/android/exchange/utility/Duration;->seconds:I

    .line 100
    const/4 v3, 0x0

    goto :goto_72

    .line 101
    :cond_95
    const/16 v5, 0x44

    if-ne v0, v5, :cond_9d

    .line 102
    iput v3, p0, Lcom/android/exchange/utility/Duration;->days:I

    .line 103
    const/4 v3, 0x0

    goto :goto_72

    .line 104
    :cond_9d
    const/16 v5, 0x54

    if-eq v0, v5, :cond_72

    .line 106
    new-instance v5, Ljava/text/ParseException;

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\') unexpected char \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' at index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method
