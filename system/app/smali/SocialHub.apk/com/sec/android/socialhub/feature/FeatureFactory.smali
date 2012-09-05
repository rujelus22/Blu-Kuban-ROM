.class public Lcom/sec/android/socialhub/feature/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;,
        Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;,
        Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;,
        Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getContactSort()Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;
    .registers 4

    .prologue
    .line 299
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, locale:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getProductName()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, product:Ljava/lang/String;
    const-string v3, "China"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 315
    new-instance v3, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;

    invoke-direct {v3}, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;-><init>()V

    .line 353
    :goto_15
    return-object v3

    .line 326
    :cond_16
    const-string v3, "Korea"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 336
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getProductLocale()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, product_locale:Ljava/lang/String;
    const-string v3, "KR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 340
    new-instance v3, Lcom/sec/android/socialhub/contacts/sort/KoreaContactSort;

    invoke-direct {v3}, Lcom/sec/android/socialhub/contacts/sort/KoreaContactSort;-><init>()V

    goto :goto_15

    .line 342
    :cond_30
    const-string v3, "SHW-M250S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "SHW-M250K"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "SHW-M250L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "SHV-E110S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "SHV-E120S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "SHV-E120K"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "SHV-E120L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 344
    :cond_68
    new-instance v3, Lcom/sec/android/socialhub/contacts/sort/KoreaContactSort;

    invoke-direct {v3}, Lcom/sec/android/socialhub/contacts/sort/KoreaContactSort;-><init>()V

    goto :goto_15

    .line 348
    .end local v2           #product_locale:Ljava/lang/String;
    :cond_6e
    const-string v3, "SHW-M250S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    const-string v3, "SHW-M250K"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    const-string v3, "SHW-M250L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    const-string v3, "SHV-E110S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    const-string v3, "SHV-E120S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    const-string v3, "SHV-E120K"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    const-string v3, "SHV-E120L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 350
    :cond_a6
    new-instance v3, Lcom/sec/android/socialhub/contacts/sort/KoreaContactSort;

    invoke-direct {v3}, Lcom/sec/android/socialhub/contacts/sort/KoreaContactSort;-><init>()V

    goto/16 :goto_15

    .line 353
    :cond_ad
    new-instance v3, Lcom/sec/android/socialhub/contacts/sort/DefaultContactSort;

    invoke-direct {v3}, Lcom/sec/android/socialhub/contacts/sort/DefaultContactSort;-><init>()V

    goto/16 :goto_15
.end method

.method public static getLocalISP(Ljava/lang/String;)Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;
    .registers 3
    .parameter "type"

    .prologue
    .line 227
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, locale:Ljava/lang/String;
    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 242
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;

    invoke-direct {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;-><init>()V

    .line 263
    :goto_11
    return-object v1

    .line 244
    :cond_12
    const-string v1, "Brazil"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "ZTA CHL PET CTI CTU CTP TCE COM PGU PER NPC NEN HME PCT CDR CJM CPA ECO UWA CRC"

    invoke-static {v1}, Lcom/sec/android/socialhub/feature/FeatureFactory;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 246
    :cond_22
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;

    invoke-direct {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;-><init>()V

    goto :goto_11

    .line 257
    :cond_28
    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 259
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/isp/JapanISP;

    invoke-direct {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/JapanISP;-><init>()V

    goto :goto_11

    .line 263
    :cond_36
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;

    invoke-direct {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;-><init>()V

    goto :goto_11
.end method

.method public static getLocalOrder()Ljava/lang/String;
    .registers 8

    .prologue
    .line 157
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, locale:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getProductName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, product:Ljava/lang/String;
    const-string v3, ""

    .line 162
    .local v3, ret:Ljava/lang/String;
    const-string v4, "China"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 164
    const-string v3, " COLLATE LOCALIZED "

    .line 192
    :cond_14
    :goto_14
    const-string v4, "FeatureFactory"

    const-string v5, "getLocalOrder()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "order - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v3

    .line 166
    :cond_2f
    const-string v4, "Korea"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 176
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getProductLocale()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, product_locale:Ljava/lang/String;
    const-string v4, "KR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 180
    const-string v3, " COLLATE LOCALIZED "

    goto :goto_14

    .line 182
    :cond_46
    const-string v4, "SHW-M250S"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    const-string v4, "SHW-M250K"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    const-string v4, "SHW-M250L"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    const-string v4, "SHV-E110S"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    const-string v4, "SHV-E120S"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    const-string v4, "SHV-E120K"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    const-string v4, "SHV-E120L"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 184
    :cond_7e
    const-string v3, " COLLATE LOCALIZED "

    goto :goto_14

    .line 187
    .end local v2           #product_locale:Ljava/lang/String;
    :cond_81
    const-string v4, "SHW-M250S"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    const-string v4, "SHW-M250K"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    const-string v4, "SHW-M250L"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    const-string v4, "SHV-E110S"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    const-string v4, "SHV-E120S"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    const-string v4, "SHV-E120K"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    const-string v4, "SHV-E120L"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 189
    :cond_b9
    const-string v3, " COLLATE LOCALIZED "

    goto/16 :goto_14
.end method

.method public static getLocale()Ljava/lang/String;
    .registers 5

    .prologue
    .line 119
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, locale:Ljava/lang/String;
    const-string v1, "FeatureFactory"

    const-string v2, "getLocale()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object v0
.end method

.method public static getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;
    .registers 4

    .prologue
    .line 417
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, locale:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getProductName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, product:Ljava/lang/String;
    const-string v3, "Korea"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 430
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, sales_code:Ljava/lang/String;
    const-string v3, "MSK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "MLG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 434
    :cond_24
    const-string v3, "SHW-M250S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "SHW-M250L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 435
    :cond_34
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;-><init>()V

    .line 468
    .end local v2           #sales_code:Ljava/lang/String;
    :goto_39
    return-object v3

    .line 437
    .restart local v2       #sales_code:Ljava/lang/String;
    :cond_3a
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;-><init>()V

    goto :goto_39

    .line 439
    :cond_40
    const-string v3, "MKT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 441
    const-string v3, "SHW-M250K"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 442
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;-><init>()V

    goto :goto_39

    .line 446
    .end local v2           #sales_code:Ljava/lang/String;
    :cond_56
    const-string v3, "SHW-M250S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "SHW-M250L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 448
    :cond_66
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;-><init>()V

    goto :goto_39

    .line 450
    :cond_6c
    const-string v3, "SHW-M250K"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 452
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;-><init>()V

    goto :goto_39

    .line 454
    :cond_7a
    const-string v3, "SHV-E110S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 456
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;-><init>()V

    goto :goto_39

    .line 458
    :cond_88
    const-string v3, "SHV-E120S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    const-string v3, "SHV-E120L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 460
    :cond_98
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;-><init>()V

    goto :goto_39

    .line 462
    :cond_9e
    const-string v3, "SHV-E120K"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 464
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;-><init>()V

    goto :goto_39

    .line 468
    :cond_ac
    new-instance v3, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;

    invoke-direct {v3}, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;-><init>()V

    goto :goto_39
.end method

.method public static getProductLocale()Ljava/lang/String;
    .registers 5

    .prologue
    .line 144
    const-string v1, "ro.product.locale.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, locale:Ljava/lang/String;
    const-string v1, "FeatureFactory"

    const-string v2, "getProductLocal()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, product:Ljava/lang/String;
    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 128
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, sales:Ljava/lang/String;
    const-string v1, "FeatureFactory"

    const-string v2, "getSalesCode()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sales code - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public static getSyncDB()Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;
    .registers 1

    .prologue
    .line 208
    new-instance v0, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;

    invoke-direct {v0}, Lcom/sec/android/socialhub/service/sync/DefaultSyncDB;-><init>()V

    return-object v0
.end method

.method public static isOperator(Ljava/lang/String;)Z
    .registers 6
    .parameter "operator_list"

    .prologue
    const/4 v1, 0x0

    .line 79
    if-nez p0, :cond_d

    .line 81
    const-string v2, "FeatureFactory"

    const-string v3, "isOperator()"

    const-string v4, "operator_list is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_c
    return v1

    .line 85
    :cond_d
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, salesCode:Ljava/lang/String;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 89
    :cond_1a
    const-string v2, "FeatureFactory"

    const-string v3, "isOperator()"

    const-string v4, "sales code is null or empty."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 93
    :cond_24
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_c
.end method

.method public static isOperator(Ljava/lang/String;I)Z
    .registers 7
    .parameter "operator_list"
    .parameter "min_code_len"

    .prologue
    .line 106
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, salesCode:Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_28

    .line 110
    :cond_c
    const-string v1, "FeatureFactory"

    const-string v2, "isOperator()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sales code length is shorter than min_code_len - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    .line 114
    :goto_27
    return v1

    :cond_28
    invoke-static {p0}, Lcom/sec/android/socialhub/feature/FeatureFactory;->isOperator(Ljava/lang/String;)Z

    move-result v1

    goto :goto_27
.end method
