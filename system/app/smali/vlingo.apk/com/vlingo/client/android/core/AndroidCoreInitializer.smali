.class public Lcom/vlingo/client/android/core/AndroidCoreInitializer;
.super Ljava/lang/Object;
.source "AndroidCoreInitializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/vlingo/client/android/core/common/AndroidSharedInstanceManager;

    invoke-static {v0}, Lcom/vlingo/client/core/common/SharedInstanceManager;->setSharedInstanceImpl(Ljava/lang/Class;)V

    .line 45
    const-class v0, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;

    invoke-static {v0}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->setRestrictedMethodsImpl(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;

    invoke-static {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->setPhoneInfoImplClass(Ljava/lang/Class;)V

    .line 51
    const-class v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;

    invoke-static {v0}, Lcom/vlingo/client/core/location/LocationUtils;->setLocationUtilsImpl(Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtableFactory;

    invoke-static {v0}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->setToIntHashtableFactoryImpl(Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/vlingo/client/android/core/util/AndroidTimerSingletonTimer;

    invoke-static {v0}, Lcom/vlingo/client/core/util/TimerSingleton;->setTimerSingletonTimerImpl(Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/vlingo/client/android/core/util/AndroidCompressUtils;

    invoke-static {v0}, Lcom/vlingo/client/core/util/CompressUtils;->setCompressUtilsImpl(Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/vlingo/client/android/core/http/custom/AndroidVConnectionFactory;

    invoke-static {v0}, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->setVConnectionFactoryImpl(Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/vlingo/client/android/core/net/AndroidConnectionManager;

    invoke-static {v0}, Lcom/vlingo/client/core/net/ConnectionManager;->setConnectionManagerImpl(Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/vlingo/client/android/core/http/AndroidHttpRequest;

    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpRequest;->setHttpRequestImplClass(Ljava/lang/Class;)V

    .line 64
    const-class v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    invoke-static {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->setRecoManagerImpl(Ljava/lang/Class;)V

    .line 67
    const-class v0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;

    invoke-static {v0}, Lcom/vlingo/client/core/http/cookies/CookieJarManagerSingleton;->setCookieJarManagerImpl(Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    invoke-static {v0}, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->setCookieJarImpl(Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;

    invoke-static {v0}, Lcom/vlingo/client/core/mru/MRU;->setMRUStoreImpl(Ljava/lang/Class;)V

    .line 73
    return-void
.end method

.method public static initializeLMTT()V
    .registers 1

    .prologue
    .line 77
    const-class v0, Lcom/vlingo/client/android/core/common/AndroidSharedInstanceManager;

    invoke-static {v0}, Lcom/vlingo/client/core/common/SharedInstanceManager;->setSharedInstanceImpl(Ljava/lang/Class;)V

    .line 80
    const-class v0, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;

    invoke-static {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->setPhoneInfoImplClass(Ljava/lang/Class;)V

    .line 83
    const-class v0, Lcom/vlingo/client/android/core/location/AndroidLocationUtils;

    invoke-static {v0}, Lcom/vlingo/client/core/location/LocationUtils;->setLocationUtilsImpl(Ljava/lang/Class;)V

    .line 86
    const-class v0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtableFactory;

    invoke-static {v0}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->setToIntHashtableFactoryImpl(Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/vlingo/client/android/core/util/AndroidTimerSingletonTimer;

    invoke-static {v0}, Lcom/vlingo/client/core/util/TimerSingleton;->setTimerSingletonTimerImpl(Ljava/lang/Class;)V

    .line 88
    const-class v0, Lcom/vlingo/client/android/core/util/AndroidCompressUtils;

    invoke-static {v0}, Lcom/vlingo/client/core/util/CompressUtils;->setCompressUtilsImpl(Ljava/lang/Class;)V

    .line 91
    const-class v0, Lcom/vlingo/client/android/core/net/AndroidConnectionManager;

    invoke-static {v0}, Lcom/vlingo/client/core/net/ConnectionManager;->setConnectionManagerImpl(Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/vlingo/client/android/core/vlservice/AndroidVLServiceCookieManager;

    invoke-static {v0}, Lcom/vlingo/client/core/http/cookies/CookieJarManagerSingleton;->setCookieJarManagerImpl(Ljava/lang/Class;)V

    .line 95
    const-class v0, Lcom/vlingo/client/android/core/http/cookies/AndroidCookieJar;

    invoke-static {v0}, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->setCookieJarImpl(Ljava/lang/Class;)V

    .line 96
    return-void
.end method
