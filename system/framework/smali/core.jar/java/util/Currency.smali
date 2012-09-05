.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final codesToCurrencies:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final localesToCurrencies:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final currencyCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "currencyCode"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Llibcore/icu/ICU;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, symbol:Ljava/lang/String;
    if-nez v0, :cond_2a

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported ISO 4217 currency code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_2a
    return-void
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Currency;>;"
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCurrencyCodes()[Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, currencyCodes:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v4, :cond_1a

    aget-object v1, v0, v3

    .line 100
    .local v1, currencyCode:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 102
    .end local v1           #currencyCode:Ljava/lang/String;
    :cond_1a
    return-object v5
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .registers 4
    .parameter "currencyCode"

    .prologue
    .line 51
    sget-object v2, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    monitor-enter v2

    .line 52
    :try_start_3
    sget-object v1, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    .line 53
    .local v0, currency:Ljava/util/Currency;
    if-nez v0, :cond_17

    .line 54
    new-instance v0, Ljava/util/Currency;

    .end local v0           #currency:Ljava/util/Currency;
    invoke-direct {v0, p0}, Ljava/util/Currency;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v0       #currency:Ljava/util/Currency;
    sget-object v1, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_17
    monitor-exit v2

    return-object v0

    .line 58
    .end local v0           #currency:Ljava/util/Currency;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .registers 10
    .parameter "locale"

    .prologue
    .line 67
    sget-object v6, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    monitor-enter v6

    .line 68
    :try_start_3
    sget-object v5, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Currency;

    .line 69
    .local v1, currency:Ljava/util/Currency;
    if-eqz v1, :cond_f

    .line 70
    monitor-exit v6

    .line 87
    .end local v1           #currency:Ljava/util/Currency;
    :goto_e
    return-object v1

    .line 72
    .restart local v1       #currency:Ljava/util/Currency;
    :cond_f
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, variant:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4c

    const-string v5, "EURO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "HK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "PREEURO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 76
    :cond_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_4c
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, currencyCode:Ljava/lang/String;
    if-nez v2, :cond_6e

    .line 81
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported ISO 3166 country: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #currency:Ljava/util/Currency;
    .end local v2           #currencyCode:Ljava/lang/String;
    .end local v4           #variant:Ljava/lang/String;
    :catchall_6b
    move-exception v5

    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw v5

    .line 82
    .restart local v0       #country:Ljava/lang/String;
    .restart local v1       #currency:Ljava/util/Currency;
    .restart local v2       #currencyCode:Ljava/lang/String;
    .restart local v4       #variant:Ljava/lang/String;
    :cond_6e
    :try_start_6e
    const-string v5, "None"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 83
    const/4 v1, 0x0

    monitor-exit v6

    goto :goto_e

    .line 85
    :cond_79
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v3

    .line 86
    .local v3, result:Ljava/util/Currency;
    sget-object v5, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v6
    :try_end_83
    .catchall {:try_start_6e .. :try_end_83} :catchall_6b

    move-object v1, v3

    goto :goto_e
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    const-string v1, "XXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    const/4 v0, -0x1

    .line 180
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyFractionDigits(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .parameter "locale"

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .parameter "locale"

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 153
    iget-object v1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 164
    :cond_c
    :goto_c
    return-object v1

    .line 157
    :cond_d
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 158
    .local v0, localeData:Llibcore/icu/LocaleData;
    iget-object v2, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 159
    iget-object v1, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    goto :goto_c

    .line 163
    :cond_1e
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/icu/ICU;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, symbol:Ljava/lang/String;
    if-nez v1, :cond_c

    iget-object v1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method
