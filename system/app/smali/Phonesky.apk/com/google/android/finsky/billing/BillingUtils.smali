.class public Lcom/google/android/finsky/billing/BillingUtils;
.super Ljava/lang/Object;
.source "BillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/BillingUtils$AddressMode;,
        Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static addressDataFromInstrumentAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/android/i18n/addressinput/AddressData;
    .registers 3
    .parameter "address"

    .prologue
    .line 254
    new-instance v0, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    .line 256
    .local v0, builder:Lcom/android/i18n/addressinput/AddressData$Builder;
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 257
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 259
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 260
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 262
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 263
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 265
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 266
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 268
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 269
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 271
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 272
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setDependentLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 274
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 275
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 277
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 278
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setSortingCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 280
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 281
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 283
    :cond_7a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 284
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 286
    :cond_87
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    return-object v1
.end method

.method public static findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .registers 5
    .parameter "isoCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;)",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 219
    .local v0, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 227
    .end local v0           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_20
    return-object v0

    .line 224
    :cond_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_30

    .line 225
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-object v0, v2

    goto :goto_20

    .line 227
    :cond_30
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static getAddressFormOptions(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/android/i18n/addressinput/FormOptions;
    .registers 4
    .parameter "mode"

    .prologue
    .line 237
    new-instance v1, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v0

    .line 240
    .local v0, builder:Lcom/android/i18n/addressinput/FormOptions$Builder;
    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne p0, v1, :cond_42

    .line 241
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    .line 242
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    .line 245
    :cond_42
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "country"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    invoke-static {p0}, Lcom/google/android/finsky/billing/BillingUtils;->getSimCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 76
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 77
    const-string p1, "US"

    .line 80
    :cond_12
    return-object p1
.end method

.method public static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 185
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 187
    const/4 v2, 0x1

    .line 189
    :try_start_9
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 190
    const-string v3, "isVoiceCapable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 191
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_20} :catch_28

    move-result v1

    .line 195
    :goto_21
    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    .line 192
    :catch_28
    move-exception v1

    move v1, v2

    goto :goto_21

    .line 195
    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static getRiskHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, androidId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimCountry(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 88
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 90
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, iso:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTopMostView(Landroid/view/ViewGroup;Ljava/util/Collection;)Landroid/view/View;
    .registers 7
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Collection",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, views:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v1, 0x0

    .line 165
    .local v1, topMost:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 166
    .local v2, view:Landroid/view/View;,"TT;"
    invoke-static {p0, v2}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v3

    .line 167
    .local v3, yOffset:I
    if-eqz v1, :cond_21

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 168
    :cond_21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_5

    .line 171
    .end local v2           #view:Landroid/view/View;,"TT;"
    .end local v3           #yOffset:I
    :cond_2a
    if-eqz v1, :cond_31

    .line 172
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 174
    :goto_30
    return-object v4

    :cond_31
    const/4 v4, 0x0

    goto :goto_30
.end method

.method public static getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I
    .registers 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 153
    iget v1, v0, Landroid/graphics/Rect;->top:I

    return v1
.end method

.method public static instrumentAddressFromAddressData(Lcom/android/i18n/addressinput/AddressData;Ljava/util/List;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 4
    .parameter "addressData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, requiredFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;-><init>()V

    .line 299
    .local v0, result:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 301
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 303
    :cond_1e
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 305
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine1(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 307
    :cond_36
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 309
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine2(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 311
    :cond_4e
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 313
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 315
    :cond_67
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 316
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 318
    :cond_7f
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 320
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setDependentLocality(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 322
    :cond_98
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 324
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 326
    :cond_b1
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_be

    .line 327
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setSortingCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 330
    :cond_be
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d6

    .line 332
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 334
    :cond_d6
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 335
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 337
    :cond_e3
    return-object v0
.end method

.method public static isEmptyOrSpaces(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "text"

    .prologue
    .line 137
    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 122
    const-string v1, "%lang%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "%region%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 123
    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 124
    .local v0, locale:Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 127
    .end local v0           #locale:Ljava/util/Locale;
    :cond_30
    return-object p0
.end method

.method public static replaceLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 104
    const-string v2, "%locale%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 106
    .local v0, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, tmp:Ljava/lang/String;
    const-string v2, "%locale%"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 109
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #tmp:Ljava/lang/String;
    :cond_35
    return-object p0
.end method
