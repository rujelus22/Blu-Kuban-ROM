.class public Lorg/columba/ristretto/imap/IMAPDateTime;
.super Lorg/columba/ristretto/imap/IMAPDate;
.source "IMAPDateTime.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPDate;-><init>()V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 2
    .parameter "date"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/columba/ristretto/imap/IMAPDate;-><init>(Ljava/util/Date;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .registers 3
    .parameter "date"
    .parameter "tz"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/columba/ristretto/imap/IMAPDate;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 151
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    const/16 v13, 0x22

    const/16 v12, 0x20

    const v9, 0x36ee80

    const/16 v11, 0x30

    const/16 v10, 0xa

    .line 56
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPDateTime;->tz:Ljava/util/TimeZone;

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, cal:Ljava/util/Calendar;
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPDateTime;->date:Ljava/util/Date;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 59
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v6, result:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    invoke-super {p0}, Lorg/columba/ristretto/imap/IMAPDate;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 69
    .local v1, hour:I
    if-ge v1, v10, :cond_33

    .line 70
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    :cond_33
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 76
    .local v3, minute:I
    if-ge v3, v10, :cond_46

    .line 77
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    :cond_46
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 83
    .local v7, second:I
    if-ge v7, v10, :cond_59

    .line 84
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :cond_59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    .line 92
    .local v5, rawOffset:I
    if-gez v5, :cond_90

    .line 93
    neg-int v8, v5

    div-int v2, v8, v9

    .line 94
    .local v2, hours:I
    neg-int v8, v5

    rem-int/2addr v8, v9

    const v9, 0xea60

    div-int v4, v8, v9

    .line 96
    .local v4, minutes:I
    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    if-ge v2, v10, :cond_7d

    .line 98
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    :cond_7d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    if-ge v4, v10, :cond_85

    .line 103
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    :cond_85
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 123
    :goto_88
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 107
    .end local v2           #hours:I
    .end local v4           #minutes:I
    :cond_90
    div-int v2, v5, v9

    .line 108
    .restart local v2       #hours:I
    rem-int v8, v5, v9

    const v9, 0xea60

    div-int v4, v8, v9

    .line 110
    .restart local v4       #minutes:I
    const-string v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    if-ge v2, v10, :cond_a3

    .line 112
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    :cond_a3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    if-ge v4, v10, :cond_ab

    .line 117
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    :cond_ab
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_88
.end method
