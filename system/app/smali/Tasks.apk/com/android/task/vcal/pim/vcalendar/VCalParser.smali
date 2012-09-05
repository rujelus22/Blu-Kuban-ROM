.class public Lcom/android/task/vcal/pim/vcalendar/VCalParser;
.super Ljava/lang/Object;
.source "VCalParser.java"


# instance fields
.field private mParser:Lcom/android/task/vcal/pim/VParser;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/task/vcal/pim/VParser;

    .line 34
    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 37
    const-string v0, "VCalParser"

    const-string v1, "VCalParser()"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .registers 6
    .parameter "vcalStr"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 99
    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, versionIdx:I
    const-string v2, "vcalendar1.0"

    iput-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 103
    const/4 v2, -0x1

    if-eq v0, v2, :cond_29

    .line 104
    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, versionStr:Ljava/lang/String;
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_29

    .line 106
    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 109
    .end local v0           #versionIdx:I
    .end local v1           #versionStr:Ljava/lang/String;
    :cond_29
    iget-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 110
    new-instance v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;

    invoke-direct {v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;-><init>()V

    iput-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/task/vcal/pim/VParser;

    .line 111
    :cond_3a
    iget-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 112
    new-instance v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;

    invoke-direct {v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V20;-><init>()V

    iput-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/task/vcal/pim/VParser;

    .line 113
    :cond_4b
    return-void
.end method

.method private verifyVCal(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "vcalStr"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->judgeVersion(Ljava/lang/String;)V

    .line 72
    const-string v3, "\r\n"

    const-string v4, "\n"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, strlist:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v1, replacedStr:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v3, v2

    if-ge v0, v3, :cond_64

    .line 78
    aget-object v3, v2, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_58

    .line 79
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_46

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_46

    .line 80
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 82
    :cond_46
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 84
    :cond_58
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 89
    :cond_64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/android/task/vcal/pim/VDataBuilder;)Z
    .registers 8
    .parameter "vcalendarStr"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/task/vcal/pim/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->verifyVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    :try_start_4
    iget-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mParser:Lcom/android/task/vcal/pim/VParser;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/task/vcal/pim/VParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/task/vcal/pim/VBuilder;)Z

    move-result v1

    .line 48
    .local v1, isSuccess:Z
    if-nez v1, :cond_3d

    .line 49
    iget-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 53
    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/task/vcal/pim/VDataBuilder;)Z

    move-result v2

    .line 61
    :goto_29
    return v2

    .line 56
    :cond_2a
    new-instance v2, Lcom/android/task/vcal/pim/vcalendar/VCalException;

    const-string v3, "parse failed.(even use 2.0 parser)"

    invoke-direct {v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_32} :catch_32

    .line 58
    .end local v1           #isSuccess:Z
    :catch_32
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/android/task/vcal/pim/vcalendar/VCalException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #isSuccess:Z
    :cond_3d
    const/4 v2, 0x1

    goto :goto_29
.end method
