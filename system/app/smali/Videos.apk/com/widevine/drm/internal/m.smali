.class public final Lcom/widevine/drm/internal/m;
.super Lcom/widevine/drm/internal/aa;


# instance fields
.field private b:Landroid/content/pm/ApplicationInfo;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/widevine/drm/internal/ab;Landroid/content/pm/ApplicationInfo;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/widevine/drm/internal/ab;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/widevine/drm/internal/aa;-><init>(Lcom/widevine/drm/internal/ab;)V

    iput-object v0, p0, Lcom/widevine/drm/internal/m;->b:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/widevine/drm/internal/m;->c:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/widevine/drm/internal/m;->b:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/widevine/drm/internal/m;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    .registers 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Initialized:Lcom/widevine/drmapi/android/WVEvent;

    const-string v2, "WVStatusKey"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq p1, v2, :cond_17

    const-string v0, "WVErrorKey"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

    :cond_17
    invoke-virtual {p0, v0, v1}, Lcom/widevine/drm/internal/m;->a(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/widevine/drm/internal/ad;
        }
    .end annotation

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_b
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1f

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/widevine/drm/internal/m;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/widevine/drm/internal/ad;
        }
    .end annotation

    const-string v0, "WVPortalKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const-string v0, "WVPortalKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "WVDRMServer"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const-string v0, "WVDRMServer"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    const-string v0, "WVAssetDBPathKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "WVAssetDBPathKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :cond_33
    const-string v4, ""

    const-string v0, "WVCAUserDataKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "WVCAUserDataKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :cond_46
    const-string v5, ""

    const-string v0, "WVDeviceIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "WVDeviceIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    :cond_59
    const-string v6, ""

    const-string v0, "WVStreamIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "WVStreamIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    :cond_6c
    const-string v0, "WVLicenseTypeKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    const-string v0, "WVLicenseTypeKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_80
    const-string v8, ""

    const-string v0, "WVAndroidIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "WVAndroidIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    :cond_93
    const-string v9, ""

    const-string v0, "WVIMEIKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string v0, "WVIMEIKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    :cond_a6
    const-string v10, ""

    const-string v0, "WVWifiMacKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string v0, "WVWifiMacKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    :cond_b9
    const-string v11, ""

    const-string v0, "WVHWDeviceKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "WVHWDeviceKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    :cond_cc
    const-string v12, ""

    const-string v0, "WVHWModelKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    const-string v0, "WVHWModelKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    :cond_df
    const-string v13, ""

    const-string v0, "WVUIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const-string v0, "WVUIDKey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    :cond_f2
    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->a()Lcom/widevine/drm/internal/HTTPDecrypter;

    move-result-object v0

    move-object/from16 v14, p1

    invoke-virtual/range {v0 .. v14}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_fc
    new-instance v0, Lcom/widevine/drm/internal/ad;

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->MandatorySettingAbsent:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "WVPortalKey absent"

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v0

    :cond_106
    new-instance v0, Lcom/widevine/drm/internal/ad;

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->MandatorySettingAbsent:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "WVDRMServer absent"

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v0

    :cond_110
    const/4 v7, 0x0

    goto/16 :goto_80
.end method

.method private static b(I)C
    .registers 3

    rem-int/lit8 v0, p0, 0x3e

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_a

    add-int/lit8 v0, v0, 0x41

    :goto_8
    int-to-char v0, v0

    return v0

    :cond_a
    const/16 v1, 0x34

    if-ge v0, v1, :cond_11

    add-int/lit8 v0, v0, 0x47

    goto :goto_8

    :cond_11
    add-int/lit8 v0, v0, -0x4

    goto :goto_8
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/high16 v8, 0xf00

    const/high16 v7, -0x1000

    new-instance v1, Lcom/widevine/drm/internal/y;

    invoke-direct {v1}, Lcom/widevine/drm/internal/y;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iget-object v0, p0, Lcom/widevine/drm/internal/m;->c:Ljava/util/HashMap;

    const-string v3, "WVAndroidIDKey"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/widevine/drm/internal/m;->c:Ljava/util/HashMap;

    const-string v3, "WVAndroidIDKey"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    and-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Random;->setSeed(J)V

    :cond_3a
    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->a()Lcom/widevine/drm/internal/HTTPDecrypter;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/widevine/drm/internal/HTTPDecrypter;->gin(I)I

    move-result v0

    :try_start_46
    invoke-virtual {v1, v0}, Lcom/widevine/drm/internal/y;->a(I)I

    move-result v3

    if-nez v3, :cond_72

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "serror (11) "

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/m;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_54

    :goto_53
    return-void

    :catch_54
    move-exception v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serror (12) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/m;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto :goto_53

    :cond_72
    :try_start_72
    iget-object v4, p0, Lcom/widevine/drm/internal/m;->b:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0, v4}, Lcom/widevine/drm/internal/y;->a(ILandroid/content/pm/ApplicationInfo;)I

    move-result v0

    if-nez v0, :cond_a0

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "serror (13) "

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/m;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_81} :catch_82

    goto :goto_53

    :catch_82
    move-exception v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serror (14) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/m;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto :goto_53

    :cond_a0
    :try_start_a0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v4, v0, 0xf

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int v4, v3, v8

    ushr-int/lit8 v4, v4, 0x18

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int v4, v0, v8

    ushr-int/lit8 v4, v4, 0x18

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit16 v4, v3, 0x3f00

    ushr-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit16 v4, v0, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int v4, v3, v7

    ushr-int/lit8 v4, v4, 0x1c

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit16 v4, v0, 0x3f00

    ushr-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/2addr v0, v7

    ushr-int/lit8 v0, v0, 0x1c

    invoke-static {v0}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/widevine/drm/internal/m;->b(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/widevine/drm/internal/m;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/widevine/drm/internal/m;->a(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_14b
    .catch Lcom/widevine/drm/internal/ad; {:try_start_a0 .. :try_end_14b} :catch_158

    iget-object v0, p0, Lcom/widevine/drm/internal/m;->a:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->a()V

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/m;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_53

    :catch_158
    move-exception v0

    iget-object v1, v0, Lcom/widevine/drm/internal/ad;->a:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ad;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/m;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_53
.end method
