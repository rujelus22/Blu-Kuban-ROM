.class public final Llibcore/icu/TimeZones;
.super Ljava/lang/Object;
.source "TimeZones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/TimeZones$ZoneStringsCache;
    }
.end annotation


# static fields
.field public static final LONG_NAME:I = 0x1

.field public static final LONG_NAME_DST:I = 0x3

.field public static final NAME_COUNT:I = 0x5

.field public static final OLSON_NAME:I = 0x0

.field public static final SHORT_NAME:I = 0x2

.field public static final SHORT_NAME_DST:I = 0x4

.field private static final ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final availableTimeZones:[Ljava/lang/String;

.field private static final cachedZoneStrings:Llibcore/icu/TimeZones$ZoneStringsCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    .line 42
    new-instance v0, Llibcore/icu/TimeZones$ZoneStringsCache;

    invoke-direct {v0}, Llibcore/icu/TimeZones$ZoneStringsCache;-><init>()V

    sput-object v0, Llibcore/icu/TimeZones;->cachedZoneStrings:Llibcore/icu/TimeZones$ZoneStringsCache;

    .line 48
    sget-object v0, Llibcore/icu/TimeZones;->cachedZoneStrings:Llibcore/icu/TimeZones$ZoneStringsCache;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/TimeZones$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Llibcore/icu/TimeZones;->cachedZoneStrings:Llibcore/icu/TimeZones$ZoneStringsCache;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/TimeZones$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Llibcore/icu/TimeZones;->cachedZoneStrings:Llibcore/icu/TimeZones$ZoneStringsCache;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/icu/TimeZones$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Llibcore/icu/TimeZones$1;

    invoke-direct {v0}, Llibcore/icu/TimeZones$1;-><init>()V

    sput-object v0, Llibcore/icu/TimeZones;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-static {p0, p1}, Llibcore/icu/TimeZones;->getZoneStringsImpl(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native forCountryCode(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static forLocale(Ljava/util/Locale;)[Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/TimeZones;->forCountryCode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 9
    .parameter "zoneStrings"
    .parameter "id"
    .parameter "daylight"
    .parameter "style"

    .prologue
    const/4 v4, 0x1

    .line 109
    new-array v1, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 110
    .local v1, needle:[Ljava/lang/String;
    sget-object v3, Llibcore/icu/TimeZones;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 111
    .local v0, index:I
    if-ltz v0, :cond_25

    .line 112
    aget-object v2, p0, v0

    .line 113
    .local v2, row:[Ljava/lang/String;
    if-eqz p2, :cond_1c

    .line 114
    if-ne p3, v4, :cond_18

    const/4 v3, 0x3

    aget-object v3, v2, v3

    .line 119
    .end local v2           #row:[Ljava/lang/String;
    :goto_17
    return-object v3

    .line 114
    .restart local v2       #row:[Ljava/lang/String;
    :cond_18
    const/4 v3, 0x4

    aget-object v3, v2, v3

    goto :goto_17

    .line 116
    :cond_1c
    if-ne p3, v4, :cond_21

    aget-object v3, v2, v4

    goto :goto_17

    :cond_21
    const/4 v3, 0x2

    aget-object v3, v2, v3

    goto :goto_17

    .line 119
    .end local v2           #row:[Ljava/lang/String;
    :cond_25
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 126
    if-nez p0, :cond_6

    .line 127
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 129
    :cond_6
    sget-object v0, Llibcore/icu/TimeZones;->cachedZoneStrings:Llibcore/icu/TimeZones$ZoneStringsCache;

    invoke-virtual {v0, p0}, Llibcore/icu/TimeZones$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method private static native getZoneStringsImpl(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
.end method
