.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "CalendarParsedResult.java"


# instance fields
.field private final attendee:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final end:Ljava/lang/String;

.field private final location:Ljava/lang/String;

.field private final start:Ljava/lang/String;

.field private final summary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "summary"
    .parameter "start"
    .parameter "end"
    .parameter "location"
    .parameter "attendee"
    .parameter "description"

    .prologue
    .line 37
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 39
    if-nez p2, :cond_d

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 42
    :cond_d
    invoke-static {p2}, Lcom/google/zxing/client/result/CalendarParsedResult;->validateDate(Ljava/lang/String;)V

    .line 43
    if-nez p3, :cond_20

    .line 44
    move-object p3, p2

    .line 48
    :goto_13
    iput-object p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendee:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 54
    return-void

    .line 46
    :cond_20
    invoke-static {p3}, Lcom/google/zxing/client/result/CalendarParsedResult;->validateDate(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static validateDate(Ljava/lang/String;)V
    .registers 7
    .parameter "date"

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0xf

    const/16 v3, 0x8

    .line 108
    if-eqz p0, :cond_65

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 110
    .local v1, length:I
    if-eq v1, v3, :cond_18

    if-eq v1, v4, :cond_18

    if-eq v1, v5, :cond_18

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 113
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v3, :cond_2e

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 113
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 118
    :cond_2e
    if-le v1, v3, :cond_65

    .line 119
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_3e

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 122
    :cond_3e
    const/16 v0, 0x9

    :goto_40
    if-ge v0, v4, :cond_55

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_52

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 122
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 127
    :cond_55
    if-ne v1, v5, :cond_65

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_65

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 132
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_65
    return-void
.end method


# virtual methods
.method public getAttendee()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendee:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 93
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 94
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 95
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 96
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendee:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 97
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEnd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    return-object v0
.end method
