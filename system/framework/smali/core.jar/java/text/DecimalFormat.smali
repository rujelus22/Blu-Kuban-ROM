.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient dform:Llibcore/icu/NativeDecimalFormat;

.field private final finalizerGuardian:Ljava/lang/Object;

.field private transient roundingMode:Ljava/math/RoundingMode;

.field private transient symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 856
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x8000

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    .line 1123
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positivePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positiveSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativeSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "multiplier"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingSize"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingUsed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "decimalSeparatorAlwaysShown"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parseBigDecimal"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "roundingMode"

    const-class v4, Ljava/math/RoundingMode;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "symbols"

    const-class v4, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useExponentialNotation"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minExponentDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 505
    new-instance v1, Ljava/text/DecimalFormat$1;

    invoke-direct {v1, p0}, Ljava/text/DecimalFormat$1;-><init>(Ljava/text/DecimalFormat;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->finalizerGuardian:Ljava/lang/Object;

    .line 515
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 523
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 524
    .local v0, locale:Ljava/util/Locale;
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 525
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-object v1, v1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 538
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 539
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .registers 4
    .parameter "pattern"
    .parameter "value"

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 505
    new-instance v0, Ljava/text/DecimalFormat$1;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat$1;-><init>(Ljava/text/DecimalFormat;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->finalizerGuardian:Ljava/lang/Object;

    .line 515
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 553
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 554
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .parameter "pattern"
    .parameter "locale"

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 505
    new-instance v0, Ljava/text/DecimalFormat$1;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat$1;-><init>(Ljava/text/DecimalFormat;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->finalizerGuardian:Ljava/lang/Object;

    .line 515
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 559
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 560
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method static synthetic access$000(Ljava/text/DecimalFormat;)Llibcore/icu/NativeDecimalFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 498
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    return-object v0
.end method

.method private checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .registers 5
    .parameter "buffer"
    .parameter "position"

    .prologue
    .line 663
    if-nez p1, :cond_a

    .line 664
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_a
    if-nez p2, :cond_14

    .line 667
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_14
    return-void
.end method

.method private initNative(Ljava/lang/String;)V
    .registers 5
    .parameter "pattern"

    .prologue
    .line 565
    :try_start_0
    new-instance v1, Llibcore/icu/NativeDecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, p1, v2}, Llibcore/icu/NativeDecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_2e

    .line 569
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 570
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 571
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 572
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 573
    return-void

    .line 566
    :catch_2e
    move-exception v0

    .line 567
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 15
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x154

    const/16 v11, 0x135

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1198
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v5, "symbols"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DecimalFormatSymbols;

    iput-object v5, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 1200
    const-string v5, ""

    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 1201
    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "positivePrefix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1202
    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "positiveSuffix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1203
    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "negativePrefix"

    const-string v7, "-"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1204
    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "negativeSuffix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1205
    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "multiplier"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    .line 1206
    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "groupingSize"

    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    .line 1207
    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "groupingUsed"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    .line 1208
    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "decimalSeparatorAlwaysShown"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1210
    const-string v5, "roundingMode"

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/RoundingMode;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 1212
    const-string v5, "maximumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1213
    .local v2, maximumIntegerDigits:I
    const-string v5, "minimumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 1214
    .local v4, minimumIntegerDigits:I
    const-string v5, "maximumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 1215
    .local v1, maximumFractionDigits:I
    const-string v5, "minimumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    .line 1221
    .local v3, minimumFractionDigits:I
    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v5, v2}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1222
    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v5}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1224
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1225
    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1226
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1227
    const-string v5, "parseBigDecimal"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 1229
    const-string v5, "serialVersionOnStream"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v10, :cond_ec

    .line 1230
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1231
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1232
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1233
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1235
    :cond_ec
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1159
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1160
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "positivePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1161
    const-string v1, "positiveSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1162
    const-string v1, "negativePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1163
    const-string v1, "negativeSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1164
    const-string v3, "posPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1165
    const-string v3, "posSuffixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1166
    const-string v3, "negPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    const-string v1, "negSuffixPattern"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1168
    const-string v1, "multiplier"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1169
    const-string v1, "groupingSize"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1170
    const-string v1, "groupingUsed"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1171
    const-string v1, "decimalSeparatorAlwaysShown"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1172
    const-string v1, "parseBigDecimal"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1173
    const-string v1, "roundingMode"

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1174
    const-string v1, "symbols"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1175
    const-string v1, "useExponentialNotation"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1176
    const-string v1, "minExponentDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1177
    const-string v1, "maximumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1178
    const-string v1, "minimumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1179
    const-string v1, "maximumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1180
    const-string v1, "minimumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1181
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1182
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1183
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 585
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 598
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 610
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 611
    .local v0, clone:Ljava/text/DecimalFormat;
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/NativeDecimalFormat;

    iput-object v1, v0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    .line 612
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 613
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 629
    if-ne p0, p1, :cond_5

    .line 636
    :cond_4
    :goto_4
    return v1

    .line 632
    :cond_5
    instance-of v3, p1, Ljava/text/DecimalFormat;

    if-nez v3, :cond_b

    move v1, v2

    .line 633
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 635
    check-cast v0, Ljava/text/DecimalFormat;

    .line 636
    .local v0, other:Ljava/text/DecimalFormat;
    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_26

    iget-object v3, v0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_24

    :goto_16
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    iget-object v4, v0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3, v4}, Llibcore/icu/NativeDecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_16
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 10
    .parameter "value"
    .parameter "buffer"
    .parameter "position"

    .prologue
    .line 673
    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 675
    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    if-ne v2, v3, :cond_53

    .line 678
    :try_start_9
    sget-object v2, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v2, v3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, upResult:Ljava/lang/String;
    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 681
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v2, v3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, downResult:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 683
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "rounding mode UNNECESSARY but rounding required"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_47

    .line 686
    .end local v0           #downResult:Ljava/lang/String;
    .end local v1           #upResult:Ljava/lang/String;
    :catchall_47
    move-exception v2

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    throw v2

    .restart local v0       #downResult:Ljava/lang/String;
    .restart local v1       #upResult:Ljava/lang/String;
    :cond_4e
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 689
    .end local v0           #downResult:Ljava/lang/String;
    .end local v1           #upResult:Ljava/lang/String;
    :cond_53
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 690
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "value"
    .parameter "buffer"
    .parameter "position"

    .prologue
    .line 695
    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 696
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 697
    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 9
    .parameter "number"
    .parameter "buffer"
    .parameter "position"

    .prologue
    .line 702
    invoke-direct {p0, p2, p3}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 703
    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_27

    move-object v0, p1

    .line 704
    check-cast v0, Ljava/math/BigInteger;

    .line 705
    .local v0, bigInteger:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_20

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p3}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    move-result-object v1

    .line 708
    .local v1, chars:[C
    :goto_1c
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 714
    .end local v0           #bigInteger:Ljava/math/BigInteger;
    .end local v1           #chars:[C
    .end local p1
    .end local p2
    :goto_1f
    return-object p2

    .line 705
    .restart local v0       #bigInteger:Ljava/math/BigInteger;
    .restart local p1
    .restart local p2
    :cond_20
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, v0, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C

    move-result-object v1

    goto :goto_1c

    .line 710
    .end local v0           #bigInteger:Ljava/math/BigInteger;
    :cond_27
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_37

    .line 711
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    check-cast p1, Ljava/math/BigDecimal;

    .end local p1
    invoke-virtual {v2, p1, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 714
    .restart local p1
    :cond_37
    invoke-super {p0, p1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p2

    goto :goto_1f
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 3
    .parameter "object"

    .prologue
    .line 656
    if-nez p1, :cond_8

    .line 657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 659
    :cond_8
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public getGroupingSize()I
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .prologue
    .line 1242
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public isGroupingUsed()Z
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    move-result v0

    return v0
.end method

.method public isParseIntegerOnly()Z
    .registers 2

    .prologue
    .line 853
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 7
    .parameter "string"
    .parameter "position"

    .prologue
    .line 883
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1, p1, p2}, Llibcore/icu/NativeDecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 884
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_a

    .line 885
    const/4 v0, 0x0

    .line 907
    .end local v0           #number:Ljava/lang/Number;
    :cond_9
    :goto_9
    return-object v0

    .line 887
    .restart local v0       #number:Ljava/lang/Number;
    :cond_a
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 888
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1f

    .line 889
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    move-object v0, v1

    goto :goto_9

    .line 891
    :cond_1f
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_40

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_40

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_40

    .line 894
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_9

    .line 896
    :cond_40
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    .line 897
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_9

    .line 901
    :cond_4f
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-nez v1, :cond_57

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_62

    .line 902
    :cond_57
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_9

    .line 904
    :cond_62
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 905
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 4
    .parameter "currency"

    .prologue
    .line 935
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setCurrency(Ljava/util/Currency;)V

    .line 936
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 937
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 918
    if-eqz p1, :cond_11

    .line 920
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 921
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 923
    :cond_11
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 948
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 949
    return-void
.end method

.method public setGroupingSize(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 960
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    .line 961
    return-void
.end method

.method public setGroupingUsed(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 972
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    .line 973
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 994
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 995
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumFractionDigits(I)V

    .line 997
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 998
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1009
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1010
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1011
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1022
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1023
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumFractionDigits(I)V

    .line 1024
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1035
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1036
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1037
    return-void
.end method

.method public setMultiplier(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1047
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    .line 1048
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1057
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1067
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 1099
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseBigDecimal(Z)V

    .line 1100
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 841
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseIntegerOnly(Z)V

    .line 842
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1077
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1087
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .registers 10
    .parameter "roundingMode"

    .prologue
    .line 1250
    if-nez p1, :cond_8

    .line 1251
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1253
    :cond_8
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 1254
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    if-eq p1, v2, :cond_27

    .line 1255
    const-wide/high16 v2, 0x3ff0

    const-wide/high16 v4, 0x4024

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v0, v2, v4

    .line 1256
    .local v0, roundingIncrement:D
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, p1, v0, v1}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;D)V

    .line 1258
    .end local v0           #roundingIncrement:D
    :cond_27
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
