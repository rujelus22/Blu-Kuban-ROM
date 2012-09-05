.class public Lorg/apache/log4j/helpers/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;
    }
.end annotation


# static fields
.field static final CLASS_LOCATION_CONVERTER:I = 0x3ea

.field private static final CONVERTER_STATE:I = 0x1

.field private static final DOT_STATE:I = 0x3

.field private static final ESCAPE_CHAR:C = '%'

.field static final FILE_LOCATION_CONVERTER:I = 0x3ec

.field static final FULL_LOCATION_CONVERTER:I = 0x3e8

.field static final LEVEL_CONVERTER:I = 0x7d2

.field static final LINE_LOCATION_CONVERTER:I = 0x3eb

.field private static final LITERAL_STATE:I = 0x0

.field private static final MAX_STATE:I = 0x5

.field static final MESSAGE_CONVERTER:I = 0x7d4

.field static final METHOD_LOCATION_CONVERTER:I = 0x3e9

.field private static final MINUS_STATE:I = 0x2

.field private static final MIN_STATE:I = 0x4

.field static final NDC_CONVERTER:I = 0x7d3

.field static final RELATIVE_TIME_CONVERTER:I = 0x7d0

.field static final THREAD_CONVERTER:I = 0x7d1

.field static class$java$text$DateFormat:Ljava/lang/Class;


# instance fields
.field protected currentLiteral:Ljava/lang/StringBuffer;

.field protected formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

.field head:Lorg/apache/log4j/helpers/PatternConverter;

.field protected i:I

.field protected pattern:Ljava/lang/String;

.field protected patternLength:I

.field state:I

.field tail:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "pattern"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    .line 74
    new-instance v0, Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/FormattingInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    .line 79
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 82
    return-void
.end method

.method private addToList(Lorg/apache/log4j/helpers/PatternConverter;)V
    .registers 3
    .parameter "pc"

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    if-nez v0, :cond_9

    .line 87
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    .line 92
    :goto_8
    return-void

    .line 89
    :cond_9
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    iput-object p1, v0, Lorg/apache/log4j/helpers/PatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    .line 90
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    goto :goto_8
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 242
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected addConverter(Lorg/apache/log4j/helpers/PatternConverter;)V
    .registers 4
    .parameter "pc"

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 372
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 374
    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 376
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/FormattingInfo;->reset()V

    .line 377
    return-void
.end method

.method protected extractOption()Ljava/lang/String;
    .registers 6

    .prologue
    .line 96
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v3, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-ge v2, v3, :cond_2f

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    iget v3, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_2f

    .line 97
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    const/16 v3, 0x7d

    iget v4, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 98
    .local v0, end:I
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    if-le v0, v2, :cond_2f

    .line 99
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    iget v3, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, r:Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    .line 104
    .end local v0           #end:I
    .end local v1           #r:Ljava/lang/String;
    :goto_2e
    return-object v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method protected extractPrecisionOption()I
    .registers 6

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, opt:Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, r:I
    if-eqz v1, :cond_2a

    .line 117
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 118
    if-gtz v2, :cond_2a

    .line 119
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Precision option ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") isn\'t a positive integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_29} :catch_2b

    .line 121
    const/4 v2, 0x0

    .line 128
    :cond_2a
    :goto_2a
    return v2

    .line 125
    :catch_2b
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Category option \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" not a decimal integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method protected finalizeConverter(C)V
    .registers 12
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 232
    const/4 v4, 0x0

    .line 233
    .local v4, pc:Lorg/apache/log4j/helpers/PatternConverter;
    sparse-switch p1, :sswitch_data_17a

    .line 359
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unexpected char ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in conversion patterrn."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 361
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 365
    :goto_3d
    invoke-virtual {p0, v4}, Lorg/apache/log4j/helpers/PatternParser;->addConverter(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 366
    return-void

    .line 235
    :sswitch_41
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractPrecisionOption()I

    move-result v7

    invoke-direct {v4, p0, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 239
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3d

    .line 242
    :sswitch_52
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractPrecisionOption()I

    move-result v7

    invoke-direct {v4, p0, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 246
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3d

    .line 249
    :sswitch_63
    const-string v1, "ISO8601"

    .line 251
    .local v1, dateFormatStr:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, dOpt:Ljava/lang/String;
    if-eqz v0, :cond_6c

    .line 253
    move-object v1, v0

    .line 255
    :cond_6c
    const-string v6, "ISO8601"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 257
    new-instance v2, Lorg/apache/log4j/helpers/ISO8601DateFormat;

    invoke-direct {v2}, Lorg/apache/log4j/helpers/ISO8601DateFormat;-><init>()V

    .line 276
    .local v2, df:Ljava/text/DateFormat;
    :goto_79
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v4, v6, v2}, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/text/DateFormat;)V

    .line 279
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3d

    .line 258
    .end local v2           #df:Ljava/text/DateFormat;
    :cond_86
    const-string v6, "ABSOLUTE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 260
    new-instance v2, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;

    invoke-direct {v2}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    .restart local v2       #df:Ljava/text/DateFormat;
    goto :goto_79

    .line 261
    .end local v2           #df:Ljava/text/DateFormat;
    :cond_94
    const-string v6, "DATE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 263
    new-instance v2, Lorg/apache/log4j/helpers/DateTimeDateFormat;

    invoke-direct {v2}, Lorg/apache/log4j/helpers/DateTimeDateFormat;-><init>()V

    .restart local v2       #df:Ljava/text/DateFormat;
    goto :goto_79

    .line 266
    .end local v2           #df:Ljava/text/DateFormat;
    :cond_a2
    :try_start_a2
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2 .. :try_end_a7} :catch_a8

    .restart local v2       #df:Ljava/text/DateFormat;
    goto :goto_79

    .line 269
    .end local v2           #df:Ljava/text/DateFormat;
    :catch_a8
    move-exception v3

    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not instantiate SimpleDateFormat with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    const-string v7, "org.apache.log4j.helpers.ISO8601DateFormat"

    sget-object v6, Lorg/apache/log4j/helpers/PatternParser;->class$java$text$DateFormat:Ljava/lang/Class;

    if-nez v6, :cond_d5

    const-string v6, "java.text.DateFormat"

    invoke-static {v6}, Lorg/apache/log4j/helpers/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/log4j/helpers/PatternParser;->class$java$text$DateFormat:Ljava/lang/Class;

    :goto_cd
    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    .restart local v2       #df:Ljava/text/DateFormat;
    goto :goto_79

    .end local v2           #df:Ljava/text/DateFormat;
    :cond_d5
    sget-object v6, Lorg/apache/log4j/helpers/PatternParser;->class$java$text$DateFormat:Ljava/lang/Class;

    goto :goto_cd

    .line 282
    .end local v0           #dOpt:Ljava/lang/String;
    .end local v1           #dateFormatStr:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_d8
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x3ec

    invoke-direct {v4, p0, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 286
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 289
    :sswitch_e8
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x3e8

    invoke-direct {v4, p0, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 293
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 296
    :sswitch_f8
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x3eb

    invoke-direct {v4, p0, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 300
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 303
    :sswitch_108
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x7d4

    invoke-direct {v4, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 306
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 309
    :sswitch_118
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x3e9

    invoke-direct {v4, p0, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 313
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 316
    :sswitch_128
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x7d2

    invoke-direct {v4, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 319
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 322
    :sswitch_138
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x7d0

    invoke-direct {v4, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 326
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 329
    :sswitch_148
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x7d1

    invoke-direct {v4, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 332
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 349
    :sswitch_158
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v7, 0x7d3

    invoke-direct {v4, v6, v7}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 351
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 354
    :sswitch_168
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, xOpt:Ljava/lang/String;
    new-instance v4, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;

    .end local v4           #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v4, v6, v5}, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/lang/String;)V

    .line 356
    .restart local v4       #pc:Lorg/apache/log4j/helpers/PatternConverter;
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_3d

    .line 233
    :sswitch_data_17a
    .sparse-switch
        0x43 -> :sswitch_52
        0x46 -> :sswitch_d8
        0x4c -> :sswitch_f8
        0x4d -> :sswitch_118
        0x58 -> :sswitch_168
        0x63 -> :sswitch_41
        0x64 -> :sswitch_63
        0x6c -> :sswitch_e8
        0x6d -> :sswitch_108
        0x70 -> :sswitch_128
        0x72 -> :sswitch_138
        0x74 -> :sswitch_148
        0x78 -> :sswitch_158
    .end sparse-switch
.end method

.method public parse()Lorg/apache/log4j/helpers/PatternConverter;
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 134
    iput v4, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    .line 135
    :goto_9
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-lt v1, v2, :cond_28

    .line 223
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_25

    .line 224
    new-instance v1, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 227
    :cond_25
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    return-object v1

    .line 136
    :cond_28
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    .local v0, c:C
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    packed-switch v1, :pswitch_data_14a

    :pswitch_39
    goto :goto_9

    .line 140
    :pswitch_3a
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-ne v1, v2, :cond_46

    .line 141
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 144
    :cond_46
    const/16 v1, 0x25

    if-ne v0, v1, :cond_98

    .line 146
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_15a

    .line 156
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_6b

    .line 157
    new-instance v1, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 162
    :cond_6b
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 163
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    iput v7, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 165
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/FormattingInfo;->reset()V

    goto :goto_9

    .line 148
    :sswitch_7d
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    goto :goto_9

    .line 152
    :sswitch_89
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    goto/16 :goto_9

    .line 169
    :cond_98
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    .line 173
    :pswitch_9f
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    packed-switch v0, :pswitch_data_164

    .line 182
    if-lt v0, v5, :cond_c0

    if-gt v0, v6, :cond_c0

    .line 183
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    add-int/lit8 v2, v0, -0x30

    iput v2, v1, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    .line 184
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_9

    .line 176
    :pswitch_b6
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iput-boolean v7, v1, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    goto/16 :goto_9

    .line 179
    :pswitch_bc
    iput v8, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_9

    .line 187
    :cond_c0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    goto/16 :goto_9

    .line 191
    :pswitch_c5
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    if-lt v0, v5, :cond_dd

    if-gt v0, v6, :cond_dd

    .line 193
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget v2, v2, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v0, -0x30

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    goto/16 :goto_9

    .line 194
    :cond_dd
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_e5

    .line 195
    iput v8, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_9

    .line 197
    :cond_e5
    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    goto/16 :goto_9

    .line 201
    :pswitch_ea
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    if-lt v0, v5, :cond_fe

    if-gt v0, v6, :cond_fe

    .line 203
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    add-int/lit8 v2, v0, -0x30

    iput v2, v1, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    .line 204
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_9

    .line 207
    :cond_fe
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error occured in position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 209
    iput v4, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_9

    .line 213
    :pswitch_12a
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    if-lt v0, v5, :cond_142

    if-gt v0, v6, :cond_142

    .line 215
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget v2, v2, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v0, -0x30

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    goto/16 :goto_9

    .line 217
    :cond_142
    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    .line 218
    iput v4, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_9

    .line 137
    nop

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_9f
        :pswitch_39
        :pswitch_ea
        :pswitch_c5
        :pswitch_12a
    .end packed-switch

    .line 146
    :sswitch_data_15a
    .sparse-switch
        0x25 -> :sswitch_7d
        0x6e -> :sswitch_89
    .end sparse-switch

    .line 174
    :pswitch_data_164
    .packed-switch 0x2d
        :pswitch_b6
        :pswitch_bc
    .end packed-switch
.end method
