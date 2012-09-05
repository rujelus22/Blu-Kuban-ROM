.class Ljava/util/Formatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatSpecifierParser"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private i:I

.field private length:I

.field private startIndex:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "format"

    .prologue
    .line 2269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2270
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    .line 2271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    .line 2272
    return-void
.end method

.method static synthetic access$000(Ljava/util/Formatter$FormatSpecifierParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2259
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    return v0
.end method

.method private advance()C
    .registers 4

    .prologue
    .line 2297
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-lt v0, v1, :cond_b

    .line 2298
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v0

    throw v0

    .line 2300
    :cond_b
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private failNextInt()I
    .registers 2

    .prologue
    .line 2400
    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2401
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    .line 2403
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private nextInt()I
    .registers 8

    .prologue
    .line 2388
    const-wide/16 v0, 0x0

    .line 2389
    .local v0, value:J
    :cond_2
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-ge v2, v3, :cond_36

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2390
    const-wide/16 v2, 0xa

    mul-long/2addr v2, v0

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 2391
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2392
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->failNextInt()I

    move-result v2

    .line 2395
    :goto_35
    return v2

    :cond_36
    long-to-int v2, v0

    goto :goto_35
.end method

.method private parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .registers 7
    .parameter "token"

    .prologue
    .line 2309
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    .line 2310
    .local v2, position:I
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2311
    .local v0, ch:I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2312
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v1

    .line 2313
    .local v1, number:I
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_40

    .line 2315
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    .line 2316
    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    .line 2317
    new-instance v3, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2321
    :cond_28
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    .line 2337
    .end local v1           #number:I
    :cond_32
    :goto_32
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setFlag(I)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2338
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_32

    .line 2323
    .restart local v1       #number:I
    :cond_40
    const/16 v3, 0x30

    if-ne v0, v3, :cond_47

    .line 2325
    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    goto :goto_32

    .line 2328
    :cond_47
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    .line 2348
    .end local v1           #number:I
    :goto_4b
    return-object v3

    .line 2331
    :cond_4c
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_32

    .line 2332
    const/4 v3, -0x2

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    .line 2333
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_32

    .line 2342
    :cond_58
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2343
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2344
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v3

    invoke-direct {p0, p1, v3}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_4b

    .line 2345
    :cond_6b
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_74

    .line 2346
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_4b

    .line 2348
    :cond_74
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_4b
.end method

.method private parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .registers 5
    .parameter "token"

    .prologue
    .line 2377
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    .line 2378
    .local v0, conversionType:C
    invoke-virtual {p1, v0}, Ljava/util/Formatter$FormatToken;->setConversionType(C)V

    .line 2379
    const/16 v2, 0x74

    if-eq v0, v2, :cond_f

    const/16 v2, 0x54

    if-ne v0, v2, :cond_16

    .line 2380
    :cond_f
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v1

    .line 2381
    .local v1, dateSuffix:C
    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setDateSuffix(C)V

    .line 2383
    .end local v1           #dateSuffix:C
    :cond_16
    return-object p1
.end method

.method private parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .registers 4
    .parameter "token"

    .prologue
    .line 2365
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    .line 2366
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2367
    .local v0, ch:I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2368
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2369
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    return-object v1

    .line 2372
    :cond_19
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v1

    throw v1
.end method

.method private parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;
    .registers 5
    .parameter "token"
    .parameter "width"

    .prologue
    .line 2355
    invoke-virtual {p1, p2}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 2356
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2357
    .local v0, ch:I
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_10

    .line 2358
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    .line 2360
    :goto_f
    return-object v1

    :cond_10
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    goto :goto_f
.end method

.method private peek()I
    .registers 3

    .prologue
    .line 2293
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .registers 3

    .prologue
    .line 2304
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getFormatSpecifierText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2289
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseFormatToken(I)Ljava/util/Formatter$FormatToken;
    .registers 4
    .parameter "offset"

    .prologue
    .line 2279
    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    .line 2280
    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    .line 2281
    new-instance v0, Ljava/util/Formatter$FormatToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$FormatToken;-><init>(Ljava/util/Formatter$1;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifierParser;->parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v0

    return-object v0
.end method
