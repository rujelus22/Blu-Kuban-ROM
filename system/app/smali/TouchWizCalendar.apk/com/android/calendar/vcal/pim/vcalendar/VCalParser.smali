.class public Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;
.super Ljava/lang/Object;
.source "VCalParser.java"


# instance fields
.field private mParser:Lcom/android/calendar/vcal/pim/VParser;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    .line 36
    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .registers 6
    .parameter "vcalStr"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 112
    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, versionIdx:I
    const-string v2, "vcalendar1.0"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 116
    const/4 v2, -0x1

    if-eq v0, v2, :cond_29

    .line 117
    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, versionStr:Ljava/lang/String;
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_29

    .line 120
    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 123
    .end local v0           #versionIdx:I
    .end local v1           #versionStr:Ljava/lang/String;
    :cond_29
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 124
    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;

    invoke-direct {v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    .line 125
    :cond_3a
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 126
    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;

    invoke-direct {v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V20;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    .line 127
    :cond_4b
    return-void
.end method

.method private verifyVCal(Ljava/lang/String;)V
    .registers 2
    .parameter "vcalStr"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->judgeVersion(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z
    .registers 8
    .parameter "vcalendarStr"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->verifyVCal(Ljava/lang/String;)V

    .line 52
    :try_start_3
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/calendar/vcal/pim/VParser;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/calendar/vcal/pim/VParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/calendar/vcal/pim/VBuilder;)Z

    move-result v1

    .line 56
    .local v1, isSuccess:Z
    if-nez v1, :cond_3c

    .line 57
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 58
    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z

    move-result v2

    .line 66
    :goto_28
    return v2

    .line 61
    :cond_29
    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;

    const-string v3, "parse failed.(even use 2.0 parser)"

    invoke-direct {v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_31

    .line 63
    .end local v1           #isSuccess:Z
    :catch_31
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #isSuccess:Z
    :cond_3c
    const/4 v2, 0x1

    goto :goto_28
.end method
