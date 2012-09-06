.class public final Lcom/google/common/logging/Log2Formatter;
.super Ljava/util/logging/Formatter;
.source "Log2Formatter.java"


# instance fields
.field private dateFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/logging/Log2Formatter;->dateFormatter:Ljava/text/DateFormat;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/common/logging/Log2Formatter;->dateFormatter:Ljava/text/DateFormat;

    .line 42
    return-void
.end method

.method private getLevelPrefix(I)C
    .registers 3
    .parameter "recLevel"

    .prologue
    .line 100
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 101
    const/16 v0, 0x58

    .line 105
    :goto_a
    return v0

    .line 102
    :cond_b
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_16

    .line 103
    const/16 v0, 0x44

    goto :goto_a

    .line 105
    :cond_16
    const/16 v0, 0x49

    goto :goto_a
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 14
    .parameter "rec"

    .prologue
    .line 52
    invoke-static {}, Lcom/google/common/logging/LogContext;->getThreadTag()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, threadTag:Ljava/lang/String;
    if-nez v4, :cond_5b

    .line 54
    const-string v4, ""

    .line 64
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/google/common/logging/Log2Formatter;->dateFormatter:Ljava/text/DateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, timestamp:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/logging/Level;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/common/logging/Log2Formatter;->getLevelPrefix(I)C

    move-result v0

    .line 67
    .local v0, levelPrefix:C
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-virtual {p0, p1}, Lcom/google/common/logging/Log2Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    invoke-direct {v7, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v7, tokenizer:Ljava/util/StringTokenizer;
    :goto_33
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 70
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/16 v0, 0x20

    goto :goto_33

    .line 56
    .end local v0           #levelPrefix:C
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v6           #timestamp:Ljava/lang/String;
    .end local v7           #tokenizer:Ljava/util/StringTokenizer;
    :cond_5b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 83
    .restart local v0       #levelPrefix:C
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #timestamp:Ljava/lang/String;
    .restart local v7       #tokenizer:Ljava/util/StringTokenizer;
    :cond_6b
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    .line 84
    .local v5, thrown:Ljava/lang/Throwable;
    if-eqz v5, :cond_88

    .line 85
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 86
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 87
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 89
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v3           #sw:Ljava/io/StringWriter;
    :cond_88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
