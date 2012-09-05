.class public Lcom/swype/android/connect/util/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"


# static fields
.field public static final DEVICE_PROPERTIES:[Ljava/lang/String; = null

.field public static final SWIB:Ljava/lang/String; = "SWIB"

.field public static final SWYPE_VERSION:Ljava/lang/String; = "SWYPE_VERSION"


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/swype/android/connect/ConnectClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PRODUCT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DEVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BOARD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MANUFACTURER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BRAND"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MODEL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SWYPE_OEM_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SWYPE_PROJECT_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IMEI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SERIAL"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ANDROID_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "OS_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SWYPE_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SCREENTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "LANGUAGES"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BOOTLOADER"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CPU_ABI"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CPU_ABI2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DISPLAY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "FINGERPRINT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "HARDWARE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "RADIO"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TAGS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TIMEZONE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SWIB"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "LANGUAGES_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SWYPE_PRIVACY_ENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SWYPE_BUILD_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "TRIAL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method

.method protected static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 79
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    const-class v1, Landroid/os/Build;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 83
    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method

.method private getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    .line 194
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient;

    .line 195
    if-eqz p0, :cond_f

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_e
    return-object v0

    :cond_f
    move-object v0, p2

    goto :goto_e
.end method


# virtual methods
.method public compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    if-eqz p2, :cond_a

    array-length v1, p2

    if-nez v1, :cond_63

    .line 229
    :cond_a
    sget-object v1, Lcom/swype/android/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .line 231
    :goto_c
    invoke-virtual {p0}, Lcom/swype/android/connect/util/BuildProperties;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v2

    .line 232
    if-eqz p1, :cond_56

    .line 233
    array-length v3, v1

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_56

    aget-object v5, v1, v4

    .line 234
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3c

    .line 235
    const-string v6, "IMEI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    const-string v6, "IMEI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    if-nez p3, :cond_39

    .line 237
    :cond_30
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 238
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 241
    :cond_3c
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 243
    :cond_52
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 250
    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_63
    move-object v1, p2

    goto :goto_c
.end method

.method public getDeviceProperties()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    sget-object v1, Lcom/swype/android/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 210
    invoke-virtual {p0, v4}, Lcom/swype/android/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 214
    :cond_17
    return-object v0
.end method

.method protected getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_d
    return-object v0

    .line 99
    :cond_e
    const-string v0, "PRODUCT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 100
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 101
    :cond_1b
    const-string v0, "DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 102
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 103
    :cond_28
    const-string v0, "BOARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 104
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 105
    :cond_35
    const-string v0, "MANUFACTURER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 106
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 107
    :cond_42
    const-string v0, "BRAND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 108
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 109
    :cond_4f
    const-string v0, "MODEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 110
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 111
    :cond_5c
    const-string v0, "BOOTLOADER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 112
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 113
    :cond_69
    const-string v0, "CPU_ABI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 114
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 115
    :cond_76
    const-string v0, "CPU_ABI2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 116
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 117
    :cond_83
    const-string v0, "DISPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 118
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 119
    :cond_91
    const-string v0, "FINGERPRINT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 120
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 121
    :cond_9f
    const-string v0, "HARDWARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 122
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 123
    :cond_ad
    const-string v0, "RADIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 124
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 125
    :cond_bb
    const-string v0, "TAGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 126
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 127
    :cond_c9
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 128
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 129
    :cond_d7
    const-string v0, "IMEI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 130
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_235

    .line 131
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 132
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 134
    :cond_101
    const-string v0, "SERIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 135
    invoke-static {p1}, Lcom/swype/android/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 136
    :cond_10f
    const-string v0, "ANDROID_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 137
    const-string v0, "android_id"

    goto/16 :goto_d

    .line 138
    :cond_11b
    const-string v0, "SWYPE_VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 139
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_235

    .line 140
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getSwypeVersion()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 142
    :cond_139
    const-string v0, "OS_VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 143
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_d

    .line 144
    :cond_145
    const-string v0, "SCREENTYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 145
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_235

    .line 146
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 147
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/swype/android/connect/util/ScreenType;->fromDimension(II)Lcom/swype/android/connect/util/ScreenType;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/swype/android/connect/util/ScreenType;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 151
    :cond_17f
    const-string v0, "LANGUAGES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 152
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_235

    .line 153
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getLanguagesAvailable()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 155
    :cond_19d
    const-string v0, "SWIB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 156
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_235

    .line 157
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getSwib()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 159
    :cond_1bb
    const-string v0, "DEVICE_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 160
    const-string v0, "DEVICE_ID"

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/util/BuildProperties;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 163
    :cond_1cb
    const-string v0, "TRIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 164
    iget-object v0, p0, Lcom/swype/android/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getTrialStatus()Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 165
    const-string v0, "True"

    goto/16 :goto_d

    .line 167
    :cond_1e5
    const-string v0, "False"

    goto/16 :goto_d

    .line 169
    :cond_1e9
    const-string v0, "TIMEZONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 173
    :cond_1ff
    const-string v0, "SWYPER_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 174
    const-string v0, "SWYPER_ID"

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/util/BuildProperties;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 177
    :cond_20f
    const-string v0, "LANGUAGES_DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 178
    const-string v0, "LANGUAGES_DL"

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/util/BuildProperties;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 181
    :cond_21f
    const-string v0, "SWYPE_PRIVACY_ENABLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22a

    move-object v0, v1

    .line 182
    goto/16 :goto_d

    .line 184
    :cond_22a
    const-string v0, "SWYPE_BUILD_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    move-object v0, v1

    .line 185
    goto/16 :goto_d

    :cond_235
    move-object v0, v1

    .line 189
    goto/16 :goto_d
.end method
