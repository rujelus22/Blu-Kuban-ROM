.class public final Llibcore/icu/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# static fields
.field private static final localeDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/icu/LocaleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public NaN:Ljava/lang/String;

.field public amPm:[Ljava/lang/String;

.field public currencyPattern:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public decimalSeparator:C

.field public eras:[Ljava/lang/String;

.field public exponentSeparator:Ljava/lang/String;

.field public firstDayOfWeek:Ljava/lang/Integer;

.field public fullDateFormat:Ljava/lang/String;

.field public fullTimeFormat:Ljava/lang/String;

.field public groupingSeparator:C

.field public infinity:Ljava/lang/String;

.field public integerPattern:Ljava/lang/String;

.field public internationalCurrencySymbol:Ljava/lang/String;

.field public longDateFormat:Ljava/lang/String;

.field public longMonthNames:[Ljava/lang/String;

.field public longStandAloneMonthNames:[Ljava/lang/String;

.field public longStandAloneWeekdayNames:[Ljava/lang/String;

.field public longTimeFormat:Ljava/lang/String;

.field public longWeekdayNames:[Ljava/lang/String;

.field public mediumDateFormat:Ljava/lang/String;

.field public mediumTimeFormat:Ljava/lang/String;

.field public minimalDaysInFirstWeek:Ljava/lang/Integer;

.field public minusSign:C

.field public monetarySeparator:C

.field public numberPattern:Ljava/lang/String;

.field public patternSeparator:C

.field public perMill:C

.field public percent:C

.field public percentPattern:Ljava/lang/String;

.field public shortDateFormat:Ljava/lang/String;

.field public shortMonthNames:[Ljava/lang/String;

.field public shortStandAloneMonthNames:[Ljava/lang/String;

.field public shortStandAloneWeekdayNames:[Ljava/lang/String;

.field public shortTimeFormat:Ljava/lang/String;

.field public shortWeekdayNames:[Ljava/lang/String;

.field public zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    .line 39
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 40
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static get(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 6
    .parameter "locale"

    .prologue
    .line 101
    if-nez p0, :cond_6

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 104
    :cond_6
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, localeName:Ljava/lang/String;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 106
    :try_start_d
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/icu/LocaleData;

    .line 107
    .local v0, localeData:Llibcore/icu/LocaleData;
    if-eqz v0, :cond_19

    .line 108
    monitor-exit v4

    .line 118
    .end local v0           #localeData:Llibcore/icu/LocaleData;
    :goto_18
    return-object v0

    .line 110
    .restart local v0       #localeData:Llibcore/icu/LocaleData;
    :cond_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_30

    .line 111
    invoke-static {p0}, Llibcore/icu/LocaleData;->makeLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 112
    .local v2, newLocaleData:Llibcore/icu/LocaleData;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 113
    :try_start_21
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #localeData:Llibcore/icu/LocaleData;
    check-cast v0, Llibcore/icu/LocaleData;

    .line 114
    .restart local v0       #localeData:Llibcore/icu/LocaleData;
    if-eqz v0, :cond_33

    .line 115
    monitor-exit v4

    goto :goto_18

    .line 119
    .end local v0           #localeData:Llibcore/icu/LocaleData;
    :catchall_2d
    move-exception v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v3

    .line 110
    .end local v2           #newLocaleData:Llibcore/icu/LocaleData;
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v3

    .line 117
    .restart local v0       #localeData:Llibcore/icu/LocaleData;
    .restart local v2       #newLocaleData:Llibcore/icu/LocaleData;
    :cond_33
    :try_start_33
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_2d

    move-object v0, v2

    goto :goto_18
.end method

.method private static initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 5
    .parameter "locale"

    .prologue
    .line 324
    new-instance v0, Llibcore/icu/LocaleData;

    invoke-direct {v0}, Llibcore/icu/LocaleData;-><init>()V

    .line 325
    .local v0, localeData:Llibcore/icu/LocaleData;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/icu/ICU;->initLocaleDataImpl(Ljava/lang/String;Llibcore/icu/LocaleData;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 326
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t initialize LocaleData for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 328
    :cond_28
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 334
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    const/16 v2, 0x76

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    .line 336
    :cond_38
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 343
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    const-string v2, "\\.[#,]*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    .line 345
    :cond_48
    return-object v0
.end method

.method private static makeLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 8
    .parameter "locale"

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, variant:Ljava/lang/String;
    new-instance v2, Llibcore/icu/LocaleData;

    invoke-direct {v2}, Llibcore/icu/LocaleData;-><init>()V

    .line 128
    .local v2, result:Llibcore/icu/LocaleData;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 129
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v4, v1, v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    .line 136
    :cond_25
    :goto_25
    invoke-static {p0}, Llibcore/icu/LocaleData;->initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    .line 137
    return-object v2

    .line 130
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 131
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v4, v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    goto :goto_25

    .line 132
    :cond_44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 133
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    goto :goto_25
.end method

.method private overrideWithDataFrom(Llibcore/icu/LocaleData;)V
    .registers 3
    .parameter "overrides"

    .prologue
    .line 182
    iget-object v0, p1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 183
    iget-object v0, p1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    iput-object v0, p0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    .line 185
    :cond_8
    iget-object v0, p1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 186
    iget-object v0, p1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    iput-object v0, p0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    .line 188
    :cond_10
    iget-object v0, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 189
    iget-object v0, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    .line 191
    :cond_18
    iget-object v0, p1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 192
    iget-object v0, p1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    .line 194
    :cond_20
    iget-object v0, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 195
    iget-object v0, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .line 197
    :cond_28
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 198
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 200
    :cond_30
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 201
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 203
    :cond_38
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 204
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    .line 206
    :cond_40
    iget-object v0, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 207
    iget-object v0, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .line 209
    :cond_48
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 210
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 212
    :cond_50
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 213
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    .line 215
    :cond_58
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 216
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    .line 218
    :cond_60
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 219
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    .line 221
    :cond_68
    iget-object v0, p1, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 222
    iget-object v0, p1, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    .line 224
    :cond_70
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 225
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    .line 227
    :cond_78
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 228
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    .line 230
    :cond_80
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 231
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    .line 233
    :cond_88
    iget-object v0, p1, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_90

    .line 234
    iget-object v0, p1, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    .line 236
    :cond_90
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_98

    .line 237
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    .line 239
    :cond_98
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_a0

    .line 240
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    .line 242
    :cond_a0
    iget-char v0, p1, Llibcore/icu/LocaleData;->zeroDigit:C

    if-eqz v0, :cond_a8

    .line 243
    iget-char v0, p1, Llibcore/icu/LocaleData;->zeroDigit:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 245
    :cond_a8
    iget-char v0, p1, Llibcore/icu/LocaleData;->decimalSeparator:C

    if-eqz v0, :cond_b0

    .line 246
    iget-char v0, p1, Llibcore/icu/LocaleData;->decimalSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->decimalSeparator:C

    .line 248
    :cond_b0
    iget-char v0, p1, Llibcore/icu/LocaleData;->groupingSeparator:C

    if-eqz v0, :cond_b8

    .line 249
    iget-char v0, p1, Llibcore/icu/LocaleData;->groupingSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->groupingSeparator:C

    .line 251
    :cond_b8
    iget-char v0, p1, Llibcore/icu/LocaleData;->patternSeparator:C

    if-eqz v0, :cond_c0

    .line 252
    iget-char v0, p1, Llibcore/icu/LocaleData;->patternSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->patternSeparator:C

    .line 254
    :cond_c0
    iget-char v0, p1, Llibcore/icu/LocaleData;->percent:C

    if-eqz v0, :cond_c8

    .line 255
    iget-char v0, p1, Llibcore/icu/LocaleData;->percent:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->percent:C

    .line 257
    :cond_c8
    iget-char v0, p1, Llibcore/icu/LocaleData;->perMill:C

    if-eqz v0, :cond_d0

    .line 258
    iget-char v0, p1, Llibcore/icu/LocaleData;->perMill:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->perMill:C

    .line 260
    :cond_d0
    iget-char v0, p1, Llibcore/icu/LocaleData;->monetarySeparator:C

    if-eqz v0, :cond_d8

    .line 261
    iget-char v0, p1, Llibcore/icu/LocaleData;->monetarySeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->monetarySeparator:C

    .line 263
    :cond_d8
    iget-char v0, p1, Llibcore/icu/LocaleData;->minusSign:C

    if-eqz v0, :cond_e0

    .line 264
    iget-char v0, p1, Llibcore/icu/LocaleData;->minusSign:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->minusSign:C

    .line 266
    :cond_e0
    iget-object v0, p1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    if-eqz v0, :cond_e8

    .line 267
    iget-object v0, p1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    .line 269
    :cond_e8
    iget-object v0, p1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    if-eqz v0, :cond_f0

    .line 270
    iget-object v0, p1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    .line 272
    :cond_f0
    iget-object v0, p1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    if-eqz v0, :cond_f8

    .line 273
    iget-object v0, p1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    .line 275
    :cond_f8
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    if-eqz v0, :cond_100

    .line 276
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    .line 278
    :cond_100
    iget-object v0, p1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    if-eqz v0, :cond_108

    .line 279
    iget-object v0, p1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    .line 281
    :cond_108
    iget-object v0, p1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v0, :cond_110

    .line 282
    iget-object v0, p1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    .line 284
    :cond_110
    iget-object v0, p1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    if-eqz v0, :cond_118

    .line 285
    iget-object v0, p1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    .line 287
    :cond_118
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    if-eqz v0, :cond_120

    .line 288
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    .line 290
    :cond_120
    iget-object v0, p1, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    if-eqz v0, :cond_128

    .line 291
    iget-object v0, p1, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    .line 293
    :cond_128
    return-void
.end method


# virtual methods
.method public getDateFormat(I)Ljava/lang/String;
    .registers 3
    .parameter "style"

    .prologue
    .line 296
    packed-switch p1, :pswitch_data_16

    .line 306
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    :pswitch_9
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    .line 304
    :goto_b
    return-object v0

    .line 300
    :pswitch_c
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    goto :goto_b

    .line 302
    :pswitch_f
    iget-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    goto :goto_b

    .line 304
    :pswitch_12
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    goto :goto_b

    .line 296
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public getTimeFormat(I)Ljava/lang/String;
    .registers 3
    .parameter "style"

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_16

    .line 320
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 312
    :pswitch_9
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    .line 318
    :goto_b
    return-object v0

    .line 314
    :pswitch_c
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    goto :goto_b

    .line 316
    :pswitch_f
    iget-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    goto :goto_b

    .line 318
    :pswitch_12
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    goto :goto_b

    .line 310
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocaleData[firstDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minimalDaysInFirstWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "amPm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longStandAloneMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortStandAloneMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longStandAloneWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortStandAloneWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mediumTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mediumDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zeroDigit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "decimalSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groupingSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "patternSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->patternSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->percent:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "perMill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->perMill:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "monetarySeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->monetarySeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minusSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->minusSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exponentSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "infinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NaN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "internationalCurrencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numberPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "integerPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currencyPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "percentPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
