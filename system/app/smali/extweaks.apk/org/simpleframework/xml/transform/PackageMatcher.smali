.class Lorg/simpleframework/xml/transform/PackageMatcher;
.super Ljava/lang/Object;
.source "PackageMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private matchEnum(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    new-instance v0, Lorg/simpleframework/xml/transform/EnumTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/EnumTransform;-><init>(Ljava/lang/Class;)V

    .line 105
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private matchFile(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 240
    const-class v0, Ljava/io/File;

    if-ne p1, v0, :cond_a

    .line 241
    new-instance v0, Lorg/simpleframework/xml/transform/FileTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/FileTransform;-><init>()V

    .line 243
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchLanguage(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 120
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_a

    .line 121
    new-instance v0, Lorg/simpleframework/xml/transform/BooleanTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BooleanTransform;-><init>()V

    .line 150
    :goto_9
    return-object v0

    .line 123
    :cond_a
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_14

    .line 124
    new-instance v0, Lorg/simpleframework/xml/transform/IntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/IntegerTransform;-><init>()V

    goto :goto_9

    .line 126
    :cond_14
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_1e

    .line 127
    new-instance v0, Lorg/simpleframework/xml/transform/LongTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/LongTransform;-><init>()V

    goto :goto_9

    .line 129
    :cond_1e
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_28

    .line 130
    new-instance v0, Lorg/simpleframework/xml/transform/DoubleTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DoubleTransform;-><init>()V

    goto :goto_9

    .line 132
    :cond_28
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_32

    .line 133
    new-instance v0, Lorg/simpleframework/xml/transform/FloatTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/FloatTransform;-><init>()V

    goto :goto_9

    .line 135
    :cond_32
    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_3c

    .line 136
    new-instance v0, Lorg/simpleframework/xml/transform/ShortTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ShortTransform;-><init>()V

    goto :goto_9

    .line 138
    :cond_3c
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_46

    .line 139
    new-instance v0, Lorg/simpleframework/xml/transform/ByteTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ByteTransform;-><init>()V

    goto :goto_9

    .line 141
    :cond_46
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_50

    .line 142
    new-instance v0, Lorg/simpleframework/xml/transform/CharacterTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/CharacterTransform;-><init>()V

    goto :goto_9

    .line 144
    :cond_50
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_5a

    .line 145
    new-instance v0, Lorg/simpleframework/xml/transform/StringTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/StringTransform;-><init>()V

    goto :goto_9

    .line 147
    :cond_5a
    const-class v0, Ljava/lang/Class;

    if-ne p1, v0, :cond_64

    .line 148
    new-instance v0, Lorg/simpleframework/xml/transform/ClassTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ClassTransform;-><init>()V

    goto :goto_9

    .line 150
    :cond_64
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchMath(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 165
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_a

    .line 166
    new-instance v0, Lorg/simpleframework/xml/transform/BigDecimalTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BigDecimalTransform;-><init>()V

    .line 171
    :goto_9
    return-object v0

    .line 168
    :cond_a
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_14

    .line 169
    new-instance v0, Lorg/simpleframework/xml/transform/BigIntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BigIntegerTransform;-><init>()V

    goto :goto_9

    .line 171
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchSQL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 216
    const-class v0, Ljava/sql/Time;

    if-ne p1, v0, :cond_a

    .line 217
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    .line 225
    :goto_9
    return-object v0

    .line 219
    :cond_a
    const-class v0, Ljava/sql/Date;

    if-ne p1, v0, :cond_14

    .line 220
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    .line 222
    :cond_14
    const-class v0, Ljava/sql/Timestamp;

    if-ne p1, v0, :cond_1e

    .line 223
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    .line 225
    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchURL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 258
    const-class v0, Ljava/net/URL;

    if-ne p1, v0, :cond_a

    .line 259
    new-instance v0, Lorg/simpleframework/xml/transform/URLTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/URLTransform;-><init>()V

    .line 261
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private matchUtility(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 186
    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_a

    .line 187
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    .line 201
    :goto_9
    return-object v0

    .line 189
    :cond_a
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_14

    .line 190
    new-instance v0, Lorg/simpleframework/xml/transform/LocaleTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/LocaleTransform;-><init>()V

    goto :goto_9

    .line 192
    :cond_14
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_1e

    .line 193
    new-instance v0, Lorg/simpleframework/xml/transform/CurrencyTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/CurrencyTransform;-><init>()V

    goto :goto_9

    .line 195
    :cond_1e
    const-class v0, Ljava/util/GregorianCalendar;

    if-ne p1, v0, :cond_28

    .line 196
    new-instance v0, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;-><init>()V

    goto :goto_9

    .line 198
    :cond_28
    const-class v0, Ljava/util/TimeZone;

    if-ne p1, v0, :cond_32

    .line 199
    new-instance v0, Lorg/simpleframework/xml/transform/TimeZoneTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/TimeZoneTransform;-><init>()V

    goto :goto_9

    .line 201
    :cond_32
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "java.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 72
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchLanguage(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    .line 89
    :goto_10
    return-object v0

    .line 74
    :cond_11
    const-string v1, "java.util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 75
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchUtility(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    .line 77
    :cond_1e
    const-string v1, "java.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 78
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchURL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    .line 80
    :cond_2b
    const-string v1, "java.io"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 81
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchFile(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    .line 83
    :cond_38
    const-string v1, "java.sql"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 84
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchSQL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    .line 86
    :cond_45
    const-string v1, "java.math"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 87
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchMath(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10

    .line 89
    :cond_52
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchEnum(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_10
.end method
