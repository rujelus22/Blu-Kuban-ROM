.class public abstract Lorg/apache/log4j/helpers/PatternConverter;
.super Ljava/lang/Object;
.source "PatternConverter.java"


# static fields
.field static SPACES:[Ljava/lang/String;


# instance fields
.field leftAlign:Z

.field max:I

.field min:I

.field public next:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "                "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "                                "

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    .line 42
    return-void
.end method

.method protected constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;)V
    .registers 3
    .parameter "fi"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    .line 46
    iget v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    .line 47
    iget v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    .line 48
    iget-boolean v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected abstract convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
.end method

.method public format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 6
    .parameter "sbuf"
    .parameter "e"

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/log4j/helpers/PatternConverter;->convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_10

    .line 67
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    if-lez v2, :cond_f

    .line 68
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    invoke-virtual {p0, p1, v2}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    .line 88
    :cond_f
    :goto_f
    return-void

    .line 72
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 74
    .local v0, len:I
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    if-le v0, v2, :cond_24

    .line 75
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 76
    :cond_24
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    if-ge v0, v2, :cond_40

    .line 77
    iget-boolean v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    if-eqz v2, :cond_36

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    goto :goto_f

    .line 82
    :cond_36
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 87
    :cond_40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f
.end method

.method public spacePad(Ljava/lang/StringBuffer;I)V
    .registers 6
    .parameter "sbuf"
    .parameter "length"

    .prologue
    .line 99
    :goto_0
    const/16 v1, 0x20

    if-ge p2, v1, :cond_8

    .line 104
    const/4 v0, 0x4

    .local v0, i:I
    :goto_5
    if-gez v0, :cond_13

    .line 109
    return-void

    .line 100
    .end local v0           #i:I
    :cond_8
    sget-object v1, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 p2, p2, -0x20

    goto :goto_0

    .line 105
    .restart local v0       #i:I
    :cond_13
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p2

    if-eqz v1, :cond_1f

    .line 106
    sget-object v1, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method
