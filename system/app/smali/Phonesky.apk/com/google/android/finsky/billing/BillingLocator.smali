.class public Lcom/google/android/finsky/billing/BillingLocator;
.super Ljava/lang/Object;
.source "BillingLocator.java"


# static fields
.field private static isInitialized:Z

.field private static sApplicationContext:Landroid/content/Context;

.field private static sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/finsky/billing/BillingLocator;->isInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDcbApi()Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
    .registers 8

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 75
    sget-object v5, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    if-nez v5, :cond_9

    .line 76
    const/4 v5, 0x0

    .line 92
    .local v0, carrierBillingRequestQueue:Lcom/android/volley/RequestQueue;
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    .local v2, dcbApiContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;
    .local v3, radioConnFactory:Lcom/google/android/finsky/remoting/RadioConnectionFactory;
    .local v4, radioHttpClient:Lcom/google/android/finsky/remoting/RadioHttpClient;,"Lcom/google/android/finsky/remoting/RadioHttpClient<Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;>;"
    :goto_8
    return-object v5

    .line 79
    .end local v0           #carrierBillingRequestQueue:Lcom/android/volley/RequestQueue;
    .end local v1           #connMgr:Landroid/net/ConnectivityManager;
    .end local v2           #dcbApiContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;
    .end local v3           #radioConnFactory:Lcom/google/android/finsky/remoting/RadioConnectionFactory;
    .end local v4           #radioHttpClient:Lcom/google/android/finsky/remoting/RadioHttpClient;,"Lcom/google/android/finsky/remoting/RadioHttpClient<Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;>;"
    :cond_9
    sget-object v5, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 81
    .restart local v1       #connMgr:Landroid/net/ConnectivityManager;
    new-instance v3, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;

    invoke-direct {v3, v1}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;-><init>(Landroid/net/ConnectivityManager;)V

    .line 83
    .restart local v3       #radioConnFactory:Lcom/google/android/finsky/remoting/RadioConnectionFactory;
    new-instance v4, Lcom/google/android/finsky/remoting/RadioHttpClient;

    new-instance v5, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;

    sget-object v6, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5, v3}, Lcom/google/android/finsky/remoting/RadioHttpClient;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/google/android/finsky/remoting/RadioConnectionFactory;)V

    .line 87
    .restart local v4       #radioHttpClient:Lcom/google/android/finsky/remoting/RadioHttpClient;,"Lcom/google/android/finsky/remoting/RadioHttpClient<Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;>;"
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v5, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v5}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    new-instance v6, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v6, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v0, v5, v6}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 90
    .restart local v0       #carrierBillingRequestQueue:Lcom/android/volley/RequestQueue;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .restart local v2       #dcbApiContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;
    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-direct {v5, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;)V

    goto :goto_8
.end method

.method public static getBillingCountries()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 123
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 124
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 126
    .local v4, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    sget-object v9, Lcom/google/android/finsky/billing/BillingPreferences;->BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v9}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 127
    .local v5, countriesString:Ljava/lang/String;
    if-nez v5, :cond_16

    .line 128
    const/4 v4, 0x0

    .line 163
    .end local v4           #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_15
    return-object v4

    .line 131
    .restart local v4       #countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    :cond_16
    const-string v9, "\\}\\{"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, codeCountryStrings:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1f
    if-ge v7, v8, :cond_15

    aget-object v2, v0, v7

    .line 133
    .local v2, codeCountryString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_33

    .line 134
    const-string v9, "Got empty billing country string."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :goto_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 138
    :cond_33
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_3f

    .line 139
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_57

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_57
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, codeCountryParts:[Ljava/lang/String;
    array-length v9, v1

    if-ge v9, v13, :cond_71

    .line 147
    const-string v9, "Invalid country string: %s. Expected at least 2 parts, got %d."

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v2, v10, v12

    array-length v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30

    .line 151
    :cond_71
    new-instance v6, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-direct {v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;-><init>()V

    .line 152
    .local v6, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    aget-object v9, v1, v12

    invoke-virtual {v6, v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 153
    aget-object v9, v1, v14

    invoke-virtual {v6, v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setCountryName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 154
    array-length v9, v1

    const/4 v10, 0x3

    if-lt v9, v10, :cond_bf

    .line 155
    aget-object v9, v1, v13

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b4

    aget-object v9, v1, v13

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b4

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid reducedBillingAddress flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 159
    :cond_b4
    aget-object v9, v1, v13

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setAllowsReducedBillingAddress(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 161
    :cond_bf
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30
.end method

.method public static getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 61
    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    if-nez v0, :cond_13

    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarrierBillingStorage has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_13
    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method

.method public static getLine1NumberFromTelephony()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 97
    sget-object v2, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_f

    .line 98
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "BillingLocator has not been initialized."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_f
    sget-object v2, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 102
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, line1Number:Ljava/lang/String;
    if-nez v0, :cond_21

    .line 106
    const-string v0, ""

    .line 108
    .end local v0           #line1Number:Ljava/lang/String;
    :cond_21
    return-object v0
.end method

.method private static getSubscriberIdFromTelephony()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    sget-object v1, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 114
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initCarrierBillingStorage(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "runnable"

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 52
    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->init(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public static initSingleton()V
    .registers 2

    .prologue
    .line 37
    sget-boolean v0, Lcom/google/android/finsky/billing/BillingLocator;->isInitialized:Z

    if-nez v0, :cond_17

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/billing/BillingLocator;->isInitialized:Z

    .line 40
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    sget-object v1, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 45
    return-void

    .line 43
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BillingLocator already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setBillingCountries(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, billingCountries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    const/16 v5, 0x2c

    .line 171
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 174
    .local v0, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getAllowsReducedBillingAddress()Z

    move-result v3

    if-eqz v3, :cond_48

    const/16 v3, 0x31

    :goto_3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_48
    const/16 v3, 0x30

    goto :goto_3e

    .line 178
    .end local v0           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    :cond_4b
    sget-object v3, Lcom/google/android/finsky/billing/BillingPreferences;->BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 179
    sget-object v3, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_BILLING_COUNTRIES_REFRESH_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 180
    return-void
.end method