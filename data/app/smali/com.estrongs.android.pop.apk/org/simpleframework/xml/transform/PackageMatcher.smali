.class Lorg/simpleframework/xml/transform/PackageMatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private matchEnum(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lorg/simpleframework/xml/transform/EnumTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/EnumTransform;-><init>(Ljava/lang/Class;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private matchFile(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    const-class v0, Ljava/io/File;

    if-ne p1, v0, :cond_a

    new-instance v0, Lorg/simpleframework/xml/transform/FileTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/FileTransform;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchLanguage(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_a

    new-instance v0, Lorg/simpleframework/xml/transform/BooleanTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BooleanTransform;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/transform/IntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/IntegerTransform;-><init>()V

    goto :goto_9

    :cond_14
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_1e

    new-instance v0, Lorg/simpleframework/xml/transform/LongTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/LongTransform;-><init>()V

    goto :goto_9

    :cond_1e
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_28

    new-instance v0, Lorg/simpleframework/xml/transform/DoubleTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DoubleTransform;-><init>()V

    goto :goto_9

    :cond_28
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_32

    new-instance v0, Lorg/simpleframework/xml/transform/FloatTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/FloatTransform;-><init>()V

    goto :goto_9

    :cond_32
    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_3c

    new-instance v0, Lorg/simpleframework/xml/transform/ShortTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ShortTransform;-><init>()V

    goto :goto_9

    :cond_3c
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_46

    new-instance v0, Lorg/simpleframework/xml/transform/ByteTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ByteTransform;-><init>()V

    goto :goto_9

    :cond_46
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_50

    new-instance v0, Lorg/simpleframework/xml/transform/CharacterTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/CharacterTransform;-><init>()V

    goto :goto_9

    :cond_50
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_5a

    new-instance v0, Lorg/simpleframework/xml/transform/StringTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/StringTransform;-><init>()V

    goto :goto_9

    :cond_5a
    const-class v0, Ljava/lang/Class;

    if-ne p1, v0, :cond_64

    new-instance v0, Lorg/simpleframework/xml/transform/ClassTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ClassTransform;-><init>()V

    goto :goto_9

    :cond_64
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchMath(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_a

    new-instance v0, Lorg/simpleframework/xml/transform/BigDecimalTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BigDecimalTransform;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/transform/BigIntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BigIntegerTransform;-><init>()V

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchSQL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    const-class v0, Ljava/sql/Time;

    if-ne p1, v0, :cond_a

    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Ljava/sql/Date;

    if-ne p1, v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    :cond_14
    const-class v0, Ljava/sql/Timestamp;

    if-ne p1, v0, :cond_1e

    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchURL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    const-class v0, Ljava/net/URL;

    if-ne p1, v0, :cond_a

    new-instance v0, Lorg/simpleframework/xml/transform/URLTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/URLTransform;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchUtility(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_a

    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/transform/LocaleTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/LocaleTransform;-><init>()V

    goto :goto_9

    :cond_14
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_1e

    new-instance v0, Lorg/simpleframework/xml/transform/CurrencyTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/CurrencyTransform;-><init>()V

    goto :goto_9

    :cond_1e
    const-class v0, Ljava/util/GregorianCalendar;

    if-ne p1, v0, :cond_28

    new-instance v0, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;-><init>()V

    goto :goto_9

    :cond_28
    const-class v0, Ljava/util/TimeZone;

    if-ne p1, v0, :cond_32

    new-instance v0, Lorg/simpleframework/xml/transform/TimeZoneTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/TimeZoneTransform;-><init>()V

    goto :goto_9

    :cond_32
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchLanguage(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v1, "java.util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchUtility(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    :cond_1e
    const-string v1, "java.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchURL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    :cond_2b
    const-string v1, "java.io"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchFile(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    :cond_38
    const-string v1, "java.sql"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchSQL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    :cond_45
    const-string v1, "java.math"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchMath(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    :cond_52
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchEnum(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10
.end method
