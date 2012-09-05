.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_DELIMITER:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_RADIX:I = 0xa

.field private static final DEFAULT_TRUNK_SIZE:I = 0x400

.field private static final DIPLOID:I = 0x2

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;


# instance fields
.field private buffer:Ljava/nio/CharBuffer;

.field private bufferLength:I

.field private cacheHasNextValue:Ljava/lang/Object;

.field private cachehasNextIndex:I

.field private closed:Z

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private delimiter:Ljava/util/regex/Pattern;

.field private findStartIndex:I

.field private input:Ljava/lang/Readable;

.field private inputExhausted:Z

.field private integerRadix:I

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchSuccessful:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private preStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    const-string v1, "\\p{javaWhitespace}+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    .line 69
    const-string v1, "true|false"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "\n|\r\n|\r|\u0085|\u2028|\u2029"

    .line 83
    .local v0, NL:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")|.+("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 89
    const-string v1, "(?s).*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .parameter "src"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v2, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 107
    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->integerRadix:I

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 112
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 115
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 118
    iput v3, p0, Ljava/util/Scanner;->bufferLength:I

    .line 122
    iput-boolean v3, p0, Ljava/util/Scanner;->closed:Z

    .line 126
    iput-boolean v3, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 131
    iput-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 135
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 175
    if-nez p1, :cond_30

    .line 176
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "src == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_30
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 179
    .local v1, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_3f

    .line 180
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "charsetName == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_3f
    :try_start_3f
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_46} :catch_4a

    .line 188
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 189
    return-void

    .line 184
    :catch_4a
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 210
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v1, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 107
    const/16 v1, 0xa

    iput v1, p0, Ljava/util/Scanner;->integerRadix:I

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 112
    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 115
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 118
    iput v2, p0, Ljava/util/Scanner;->bufferLength:I

    .line 122
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 126
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 131
    iput-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 135
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 225
    if-nez p1, :cond_30

    .line 226
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_30
    :try_start_30
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_37} :catch_3b

    .line 233
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 234
    return-void

    .line 230
    :catch_3b
    move-exception v0

    .line 231
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .registers 4
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 107
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 112
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 115
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 118
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 122
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 126
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 131
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 243
    if-nez p1, :cond_2e

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 246
    :cond_2e
    iput-object p1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 247
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 107
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 112
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 115
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 118
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 122
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 126
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 131
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 198
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 199
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 258
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .registers 5
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 107
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 112
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 115
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 118
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 122
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 126
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 131
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 273
    if-nez p1, :cond_30

    .line 274
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_30
    if-nez p2, :cond_3a

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_3a
    invoke-static {p1, p2}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 280
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 281
    return-void
.end method

.method private addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7
    .parameter "unSignNumeral"

    .prologue
    .line 1862
    const-string v0, ""

    .line 1863
    .local v0, negativePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1864
    .local v1, negativeSuffix:Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    :cond_2f
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1870
    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1873
    .local v2, signedNumeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7
    .parameter "unSignNumeral"

    .prologue
    .line 1844
    const-string v0, ""

    .line 1845
    .local v0, positivePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1846
    .local v1, positiveSuffix:Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1849
    :cond_2f
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1852
    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1855
    .local v2, signedNumeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private checkClosed()V
    .registers 2

    .prologue
    .line 1716
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_a

    .line 1717
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1719
    :cond_a
    return-void
.end method

.method private checkNull(Ljava/util/regex/Pattern;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1726
    if-nez p1, :cond_8

    .line 1727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1729
    :cond_8
    return-void
.end method

.method private checkRadix(I)V
    .registers 5
    .parameter "radix"

    .prologue
    .line 1687
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    const/16 v0, 0x24

    if-le p1, v0, :cond_20

    .line 1688
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1690
    :cond_20
    return-void
.end method

.method private expandBuffer()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2165
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 2166
    .local v4, oldPosition:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    .line 2167
    .local v2, oldCapacity:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 2168
    .local v3, oldLimit:I
    mul-int/lit8 v1, v2, 0x2

    .line 2169
    .local v1, newCapacity:I
    new-array v0, v1, [C

    .line 2170
    .local v0, newBuffer:[C
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2171
    invoke-static {v0, v6, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 2172
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2173
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2174
    return-void
.end method

.method private findPostDelimiter()I
    .registers 5

    .prologue
    .line 2096
    const/4 v1, 0x0

    .line 2097
    .local v1, tokenEndIndex:I
    const/4 v0, 0x0

    .line 2098
    .local v0, findComplete:Z
    :cond_2
    :goto_2
    if-nez v0, :cond_34

    .line 2099
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2100
    const/4 v0, 0x1

    .line 2101
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2103
    const/4 v0, 0x0

    goto :goto_2

    .line 2106
    :cond_27
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_32

    .line 2107
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2108
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_2

    .line 2110
    :cond_32
    const/4 v2, -0x1

    .line 2116
    :goto_33
    return v2

    .line 2114
    :cond_34
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2115
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    move v2, v1

    .line 2116
    goto :goto_33
.end method

.method private findPreDelimiter()I
    .registers 5

    .prologue
    .line 2037
    const/4 v0, 0x0

    .line 2038
    .local v0, findComplete:Z
    :cond_1
    :goto_1
    if-nez v0, :cond_39

    .line 2039
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2040
    const/4 v0, 0x1

    .line 2042
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_1

    .line 2045
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_1

    .line 2046
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2047
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    .line 2048
    const/4 v0, 0x0

    goto :goto_1

    .line 2052
    :cond_2c
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_37

    .line 2053
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2054
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_1

    .line 2056
    :cond_37
    const/4 v1, -0x1

    .line 2062
    :goto_38
    return v1

    .line 2060
    :cond_39
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 2061
    .local v1, tokenStartIndex:I
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    goto :goto_38
.end method

.method private getFloatPattern()Ljava/util/regex/Pattern;
    .registers 18

    .prologue
    .line 1786
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v15}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v15

    check-cast v15, Ljava/text/DecimalFormat;

    move-object/from16 v0, p0

    iput-object v15, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1788
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "([0-9]|(\\p{javaDigit}))"

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v4, digit:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "[\\p{javaDigit}&&[^0]]"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1790
    .local v12, nonZeroDigit:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1792
    .local v13, numeral:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\\"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1794
    .local v3, decimalSeparator:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "("

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "*+|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "++)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1798
    .local v2, decimalNumeral:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "([eE][+-]?"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "+)?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1801
    .local v5, exponent:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(([-+]?"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "))"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1808
    .local v1, decimal:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "([-+]?0[xX][0-9a-fA-F]*"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\\."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "[0-9a-fA-F]+([pP][-+]?[0-9]+)?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1811
    .local v8, hexFloat:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v15}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v15

    invoke-virtual {v15}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v9

    .line 1812
    .local v9, localNaN:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v15}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v15

    invoke-virtual {v15}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v10

    .line 1814
    .local v10, localeInfinity:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(NaN|\\Q"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\\E|Infinity|\\Q"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\\E)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1816
    .local v11, nonNumber:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "((([-+]?("

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")))|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "))"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1820
    .local v14, singedNonNumber:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1822
    .local v7, floatString:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1823
    .local v6, floatPattern:Ljava/util/regex/Pattern;
    return-object v6
.end method

.method private getIntegerPattern(I)Ljava/util/regex/Pattern;
    .registers 12
    .parameter "radix"

    .prologue
    .line 1761
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1762
    iget-object v8, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    check-cast v8, Ljava/text/DecimalFormat;

    iput-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1764
    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyz"

    .line 1765
    .local v1, allAvailableDigits:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, ASCIIDigit:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1768
    .local v5, nonZeroASCIIDigit:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|\\p{javaDigit})"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1770
    .local v2, digit:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|([\\p{javaDigit}&&[^0]]))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1772
    .local v6, nonZeroDigit:Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, v6}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1774
    .local v7, numeral:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(([-+]?("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")))|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1778
    .local v3, integer:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1779
    .local v4, integerPattern:Ljava/util/regex/Pattern;
    return-object v4
.end method

.method private getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8
    .parameter "digit"
    .parameter "nonZeroDigit"

    .prologue
    .line 1828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, groupSeparator:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")+)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1835
    .local v1, groupedNumeral:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "++)|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1837
    .local v2, numeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private initialization()V
    .registers 3

    .prologue
    .line 1706
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 1707
    iget-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1708
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 1709
    return-void
.end method

.method private readMore()V
    .registers 7

    .prologue
    .line 2125
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 2126
    .local v2, oldPosition:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2128
    .local v1, oldBufferLength:I
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    if-lt v4, v5, :cond_15

    .line 2129
    invoke-direct {p0}, Ljava/util/Scanner;->expandBuffer()V

    .line 2133
    :cond_15
    const/4 v3, 0x0

    .line 2135
    .local v3, readCount:I
    :try_start_16
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2136
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2137
    :cond_26
    iget-object v4, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-interface {v4, v5}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_41

    move-result v3

    if-eqz v3, :cond_26

    .line 2154
    :goto_30
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 2155
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2156
    const/4 v4, -0x1

    if-ne v4, v3, :cond_4e

    .line 2157
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 2161
    :goto_40
    return-void

    .line 2140
    :catch_41
    move-exception v0

    .line 2145
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2150
    const/4 v3, -0x1

    .line 2151
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_30

    .line 2159
    .end local v0           #e:Ljava/io/IOException;
    :cond_4e
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    goto :goto_40
.end method

.method private recoverPreviousStatus()V
    .registers 2

    .prologue
    .line 1754
    iget v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1755
    return-void
.end method

.method private removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;
    .registers 14
    .parameter "token"
    .parameter "type"

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    .line 1906
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1907
    .local v6, tokenBuilder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v6}, Ljava/util/Scanner;->removeLocaleSign(Ljava/lang/StringBuilder;)Z

    move-result v3

    .line 1909
    .local v3, negative:Z
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1911
    .local v1, groupSeparator:Ljava/lang/String;
    const/4 v5, -0x1

    .line 1912
    .local v5, separatorIndex:I
    :goto_1b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v9, v5, :cond_27

    .line 1913
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 1916
    :cond_27
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1918
    .local v0, decimalSeparator:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1919
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1920
    .local v4, result:Ljava/lang/StringBuilder;
    sget-object v7, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_61

    .line 1921
    const/4 v2, 0x0

    .local v2, i:I
    :goto_45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_61

    .line 1922
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_5e

    .line 1924
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1921
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1928
    .end local v2           #i:I
    :cond_61
    sget-object v7, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_7e

    .line 1929
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 1931
    const-string v7, "NaN"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_85

    .line 1946
    move-object v4, v6

    .line 1948
    :cond_85
    if-eq v9, v5, :cond_8c

    .line 1949
    const-string v7, "."

    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    :cond_8c
    if-eqz v3, :cond_94

    .line 1953
    const/4 v7, 0x0

    const/16 v8, 0x2d

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1955
    :cond_94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1932
    :cond_99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 1934
    const-string v7, "Infinity"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 1936
    :cond_b3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_7e

    .line 1937
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_cf

    .line 1938
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1936
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4
.end method

.method private removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "floatString"

    .prologue
    const/4 v4, -0x1

    .line 1881
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v4, v3, :cond_11

    const/16 v3, 0x58

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v4, v3, :cond_12

    .line 1898
    .end local p1
    :cond_11
    :goto_11
    return-object p1

    .line 1889
    .restart local p1
    :cond_12
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, exponentIndex:I
    if-ne v4, v1, :cond_22

    const/16 v3, 0x45

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v4, v1, :cond_4f

    .line 1891
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, decimalNumeralString:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1894
    .local v2, exponentString:Ljava/lang/String;
    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v0, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v0

    .line 1896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 1898
    .end local v0           #decimalNumeralString:Ljava/lang/String;
    .end local v2           #exponentString:Ljava/lang/String;
    :cond_4f
    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, p1, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11
.end method

.method private removeLocaleSign(Ljava/lang/StringBuilder;)Z
    .registers 12
    .parameter "tokenBuilder"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1963
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    .line 1964
    .local v3, positivePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    .line 1965
    .local v4, positiveSuffix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    .line 1966
    .local v1, negativePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    .line 1968
    .local v2, negativeSuffix:Ljava/lang/String;
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_26

    .line 1969
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1971
    :cond_26
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_39

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_39

    .line 1972
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1974
    :cond_39
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v8, v5, :cond_55

    .line 1976
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1980
    :cond_55
    const/4 v0, 0x0

    .line 1981
    .local v0, negative:Z
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_62

    .line 1982
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1983
    const/4 v0, 0x1

    .line 1985
    :cond_62
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_76

    .line 1986
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1987
    const/4 v0, 0x1

    .line 1989
    :cond_76
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_93

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v8, v5, :cond_93

    .line 1991
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1994
    const/4 v0, 0x1

    .line 1996
    :cond_93
    return v0
.end method

.method private resetMatcher()V
    .registers 4

    .prologue
    .line 1735
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    if-nez v0, :cond_18

    .line 1736
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 1740
    :goto_e
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1741
    return-void

    .line 1738
    :cond_18
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_e
.end method

.method private saveCurrentStatus()V
    .registers 2

    .prologue
    .line 1747
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1748
    return-void
.end method

.method private setHeadTokenRegion(I)Z
    .registers 8
    .parameter "findIndex"

    .prologue
    const/4 v5, -0x1

    .line 2071
    const/4 v0, 0x0

    .line 2073
    .local v0, setSuccess:Z
    if-ne v5, p1, :cond_18

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v3, v4, :cond_18

    .line 2074
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2075
    .local v2, tokenStartIndex:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2076
    .local v1, tokenEndIndex:I
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2077
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2078
    const/4 v0, 0x1

    .line 2081
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_18
    if-eq v5, p1, :cond_3a

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v3, v4, :cond_3a

    .line 2082
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2083
    .restart local v2       #tokenStartIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2084
    .restart local v1       #tokenEndIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2086
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2087
    const/4 v0, 0x1

    .line 2089
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_3a
    return v0
.end method

.method private setTokenRegion()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 2006
    const/4 v1, 0x0

    .line 2008
    .local v1, tokenStartIndex:I
    const/4 v0, 0x0

    .line 2010
    .local v0, tokenEndIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 2011
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2013
    invoke-direct {p0}, Ljava/util/Scanner;->findPreDelimiter()I

    move-result v1

    .line 2014
    invoke-direct {p0, v1}, Ljava/util/Scanner;->setHeadTokenRegion(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2029
    :goto_1d
    return v2

    .line 2017
    :cond_1e
    invoke-direct {p0}, Ljava/util/Scanner;->findPostDelimiter()I

    move-result v0

    .line 2019
    const/4 v3, -0x1

    if-ne v3, v0, :cond_33

    .line 2021
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_2d

    .line 2022
    const/4 v2, 0x0

    goto :goto_1d

    .line 2024
    :cond_2d
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2025
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2028
    :cond_33
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v1, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_1d
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 292
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_5

    .line 303
    :goto_4
    return-void

    .line 295
    :cond_5
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_12

    .line 297
    :try_start_b
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_16

    .line 302
    :cond_12
    :goto_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    goto :goto_4

    .line 298
    :catch_16
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_12
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 422
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 11
    .parameter "pattern"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 330
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 331
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, horizonLineSeparator:I
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v6, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 335
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v7, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, findComplete:Z
    const/4 v3, 0x0

    .line 339
    .local v3, terminatorLength:I
    :goto_1b
    if-nez v0, :cond_4a

    .line 340
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 341
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 342
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int v3, v5, v6

    .line 343
    const/4 v0, 0x1

    goto :goto_1b

    .line 345
    :cond_3b
    iget-boolean v5, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v5, :cond_46

    .line 346
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 347
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_1b

    .line 349
    :cond_46
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 350
    const/4 v0, 0x1

    goto :goto_1b

    .line 355
    :cond_4a
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 363
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    .line 365
    .local v2, oldLimit:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 369
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v7, v1, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 370
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 372
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 375
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-ne v1, v5, :cond_82

    .line 376
    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int/2addr v5, v3

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 380
    :cond_82
    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v5, :cond_98

    add-int v5, v1, v3

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-ne v5, v6, :cond_98

    .line 384
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 387
    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 404
    :goto_97
    return-object v4

    .line 390
    :cond_98
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 393
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 396
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    goto :goto_97

    .line 400
    :cond_a7
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 403
    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_97
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    .line 533
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 11
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 458
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 459
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 460
    if-gez p2, :cond_12

    .line 461
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "horizon < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 463
    :cond_12
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 465
    const/4 v3, 0x0

    .line 466
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 467
    .local v0, findEndIndex:I
    const/4 v1, 0x0

    .line 468
    .local v1, horizonEndIndex:I
    if-nez p2, :cond_54

    .line 469
    const v1, 0x7fffffff

    .line 474
    :cond_1f
    :goto_1f
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 479
    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 481
    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    if-gt v1, v6, :cond_59

    move v2, v4

    .line 485
    .local v2, isHorizonInBuffer:Z
    :goto_2c
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v7, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v6, v7, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 486
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 487
    if-nez v2, :cond_41

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v6, :cond_61

    .line 488
    :cond_41
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 506
    :cond_47
    if-eqz v3, :cond_6c

    .line 507
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 508
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 512
    :goto_53
    return-object v3

    .line 471
    .end local v2           #isHorizonInBuffer:Z
    :cond_54
    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v1, v6, p2

    goto :goto_1f

    :cond_59
    move v2, v5

    .line 481
    goto :goto_2c

    .line 495
    .restart local v2       #isHorizonInBuffer:Z
    :cond_5b
    if-nez v2, :cond_47

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_47

    .line 501
    :cond_61
    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_1f

    .line 502
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 503
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_1f

    .line 510
    :cond_6c
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_53
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 546
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .registers 3
    .parameter "pattern"

    .prologue
    .line 598
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .registers 4
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 562
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 563
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 564
    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 565
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 568
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v1

    if-nez v1, :cond_16

    .line 569
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 581
    :goto_15
    return v0

    .line 572
    :cond_16
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, hasNext:Z
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 576
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 577
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 578
    const/4 v0, 0x1

    .line 580
    :cond_2c
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    goto :goto_15
.end method

.method public hasNextBigDecimal()Z
    .registers 6

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 612
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 613
    .local v3, isBigDecimalValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 614
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    :try_start_15
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1c} :catch_1e

    .line 618
    const/4 v3, 0x1

    .line 623
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1d
    :goto_1d
    return v3

    .line 619
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1e
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1d
.end method

.method public hasNextBigInteger()Z
    .registers 2

    .prologue
    .line 636
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 653
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 654
    .local v3, isBigIntegerValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 655
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 658
    :try_start_17
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1e} :catch_20

    .line 659
    const/4 v3, 0x1

    .line 664
    .end local v1           #intString:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v3

    .line 660
    .restart local v1       #intString:Ljava/lang/String;
    :catch_20
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1f
.end method

.method public hasNextBoolean()Z
    .registers 2

    .prologue
    .line 677
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .registers 2

    .prologue
    .line 690
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 706
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 707
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 708
    .local v3, isByteValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 709
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 712
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 713
    const/4 v3, 0x1

    .line 718
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 714
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 715
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextDouble()Z
    .registers 6

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 732
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 733
    .local v3, isDoubleValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 734
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 737
    :try_start_15
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 738
    const/4 v3, 0x1

    .line 743
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v3

    .line 739
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 740
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1c
.end method

.method public hasNextFloat()Z
    .registers 6

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 757
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 758
    .local v3, isFloatValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 759
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 762
    :try_start_15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 763
    const/4 v3, 0x1

    .line 768
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v3

    .line 764
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 765
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1c
.end method

.method public hasNextInt()Z
    .registers 2

    .prologue
    .line 781
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 798
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 799
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 800
    .local v3, isIntValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 801
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 804
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 805
    const/4 v3, 0x1

    .line 810
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 806
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextLine()Z
    .registers 5

    .prologue
    .line 823
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 824
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v2, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 825
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, hasNextLine:Z
    :cond_14
    :goto_14
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 830
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_2a

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v2, :cond_37

    .line 831
    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 832
    const/4 v0, 0x1

    .line 846
    :goto_2e
    return v0

    .line 836
    :cond_2f
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_37

    .line 837
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_2e

    .line 841
    :cond_37
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_14

    .line 842
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 843
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_14
.end method

.method public hasNextLong()Z
    .registers 2

    .prologue
    .line 859
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 875
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 876
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 877
    .local v3, isLongValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 878
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 881
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 882
    const/4 v3, 0x1

    .line 887
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 883
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 884
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextShort()Z
    .registers 2

    .prologue
    .line 900
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 916
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 917
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 918
    .local v3, isShortValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 919
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 922
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 923
    const/4 v3, 0x1

    .line 928
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 924
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 925
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .registers 2

    .prologue
    .line 962
    iget-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    if-nez v0, :cond_a

    .line 963
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 965
    :cond_a
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .prologue
    .line 980
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1037
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1001
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1003
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 1004
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1005
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1007
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1009
    :cond_1b
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1010
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1011
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1012
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0

    .line 1015
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1016
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .registers 7

    .prologue
    .line 1060
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1061
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1062
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1063
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_13

    .line 1064
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1065
    check-cast v4, Ljava/math/BigDecimal;

    .line 1078
    .end local v4           #obj:Ljava/lang/Object;
    :goto_12
    return-object v4

    .line 1067
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_13
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1068
    .local v2, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, floatString:Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1072
    :try_start_1f
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_24} :catch_26

    .local v0, bigDecimalValue:Ljava/math/BigDecimal;
    move-object v4, v0

    .line 1078
    goto :goto_12

    .line 1073
    .end local v0           #bigDecimalValue:Ljava/math/BigDecimal;
    :catch_26
    move-exception v1

    .line 1074
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1075
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1076
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1095
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .registers 8
    .parameter "radix"

    .prologue
    .line 1122
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1123
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1124
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1125
    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_13

    .line 1126
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1127
    check-cast v4, Ljava/math/BigInteger;

    .line 1140
    .end local v4           #obj:Ljava/lang/Object;
    :goto_12
    return-object v4

    .line 1129
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_13
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1130
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1131
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    :try_start_21
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_26} :catch_28

    .local v0, bigIntegerValue:Ljava/math/BigInteger;
    move-object v4, v0

    .line 1140
    goto :goto_12

    .line 1135
    .end local v0           #bigIntegerValue:Ljava/math/BigInteger;
    :catch_28
    move-exception v1

    .line 1136
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1137
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1138
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBoolean()Z
    .registers 2

    .prologue
    .line 1157
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .registers 2

    .prologue
    .line 1174
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .registers 8
    .parameter "radix"

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1202
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1203
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1204
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_17

    .line 1205
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1206
    check-cast v4, Ljava/lang/Byte;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1219
    :goto_16
    return v0

    .line 1208
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1209
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1210
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    const/4 v0, 0x0

    .line 1213
    .local v0, byteValue:B
    :try_start_26
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2b

    move-result v0

    goto :goto_16

    .line 1214
    :catch_2b
    move-exception v1

    .line 1215
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1216
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1217
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextDouble()D
    .registers 8

    .prologue
    .line 1245
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1246
    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1247
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1248
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_17

    .line 1249
    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1250
    check-cast v5, Ljava/lang/Double;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1263
    :goto_16
    return-wide v0

    .line 1252
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1253
    .local v3, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    .line 1254
    .local v4, floatString:Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1255
    const-wide/16 v0, 0x0

    .line 1257
    .local v0, doubleValue:D
    :try_start_25
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_28} :catch_2a

    move-result-wide v0

    goto :goto_16

    .line 1258
    :catch_2a
    move-exception v2

    .line 1259
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1260
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1261
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextFloat()F
    .registers 7

    .prologue
    .line 1289
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1290
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1291
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1292
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_17

    .line 1293
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1294
    check-cast v4, Ljava/lang/Float;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1307
    :goto_16
    return v3

    .line 1296
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1297
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1298
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1299
    const/4 v3, 0x0

    .line 1301
    .local v3, floatValue:F
    :try_start_24
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_27} :catch_29

    move-result v3

    goto :goto_16

    .line 1302
    :catch_29
    move-exception v0

    .line 1303
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1304
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1305
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextInt()I
    .registers 2

    .prologue
    .line 1324
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 8
    .parameter "radix"

    .prologue
    .line 1352
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1353
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1354
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1355
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_17

    .line 1356
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1357
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1370
    :goto_16
    return v2

    .line 1359
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1360
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1361
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    const/4 v2, 0x0

    .line 1364
    .local v2, intValue:I
    :try_start_26
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2b

    move-result v2

    goto :goto_16

    .line 1365
    :catch_2b
    move-exception v0

    .line 1366
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1367
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1368
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextLine()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1387
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1389
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1390
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1391
    const/4 v0, 0x0

    .line 1393
    .local v0, result:Ljava/lang/String;
    :cond_15
    :goto_15
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1394
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_35

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 1396
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1397
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1398
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1413
    if-eqz v0, :cond_5c

    .line 1414
    sget-object v2, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1415
    .local v1, terminatorMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1416
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1419
    .end local v1           #terminatorMatcher:Ljava/util/regex/Matcher;
    :cond_5c
    return-object v0

    .line 1402
    :cond_5d
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v2, :cond_69

    .line 1403
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1404
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1407
    :cond_69
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_15

    .line 1408
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1409
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_15
.end method

.method public nextLong()J
    .registers 3

    .prologue
    .line 1436
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .registers 9
    .parameter "radix"

    .prologue
    .line 1464
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1465
    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1466
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1467
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_17

    .line 1468
    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1469
    check-cast v5, Ljava/lang/Long;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1482
    :goto_16
    return-wide v3

    .line 1471
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1472
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1473
    .local v1, intString:Ljava/lang/String;
    sget-object v6, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v6}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1474
    const-wide/16 v3, 0x0

    .line 1476
    .local v3, longValue:J
    :try_start_27
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_2c

    move-result-wide v3

    goto :goto_16

    .line 1477
    :catch_2c
    move-exception v0

    .line 1478
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1479
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1480
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextShort()S
    .registers 2

    .prologue
    .line 1499
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .registers 8
    .parameter "radix"

    .prologue
    .line 1527
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1528
    iget-object v3, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1529
    .local v3, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1530
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_17

    .line 1531
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1532
    check-cast v3, Ljava/lang/Short;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 1545
    :goto_16
    return v4

    .line 1534
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1535
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1536
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    const/4 v4, 0x0

    .line 1539
    .local v4, shortValue:S
    :try_start_26
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2b

    move-result v4

    goto :goto_16

    .line 1540
    :catch_2b
    move-exception v0

    .line 1541
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1542
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1543
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public radix()I
    .registers 2

    .prologue
    .line 1554
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1699
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .registers 2

    .prologue
    .line 2183
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 2184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 2185
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 2186
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1615
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 8
    .parameter "pattern"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1574
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1575
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 1576
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1577
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1579
    :cond_16
    :goto_16
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1580
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-lt v3, v4, :cond_36

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_44

    :cond_36
    move v0, v2

    .line 1582
    .local v0, matchInBuffer:Z
    :goto_37
    if-eqz v0, :cond_52

    .line 1583
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1584
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1598
    return-object p0

    .end local v0           #matchInBuffer:Z
    :cond_44
    move v0, v1

    .line 1580
    goto :goto_37

    .line 1588
    :cond_46
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_52

    .line 1589
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1590
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1593
    :cond_52
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v3, :cond_16

    .line 1594
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1595
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",findStartIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",matchSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1655
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 2
    .parameter "pattern"

    .prologue
    .line 1642
    iput-object p1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 1643
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .registers 3
    .parameter "l"

    .prologue
    .line 1666
    if-nez p1, :cond_8

    .line 1667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1669
    :cond_8
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 1670
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .registers 2
    .parameter "radix"

    .prologue
    .line 1681
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1682
    iput p1, p0, Ljava/util/Scanner;->integerRadix:I

    .line 1683
    return-object p0
.end method
