.class public Lcom/widevine/drmapi/android/WVPlayback;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/widevine/drm/internal/o;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/widevine/drm/internal/ab;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "[^a-zA-Z0-9]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private a(Ljava/util/HashMap;)V
    .registers 3
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

    const-string v0, "WVAssetRootKey"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "WVAssetRootKey"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    :goto_12
    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/widevine/drm/internal/v;->a(Ljava/lang/String;)V

    return-void

    :cond_18
    const-string v0, "/sdcard/media/"

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    goto :goto_12
.end method

.method private b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "WVAndroidIDKey"

    iget-object v2, p0, Lcom/widevine/drmapi/android/WVPlayback;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVIMEIKey"

    iget-object v2, p0, Lcom/widevine/drmapi/android/WVPlayback;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVWifiMacKey"

    iget-object v2, p0, Lcom/widevine/drmapi/android/WVPlayback;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVHWDeviceKey"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Lcom/widevine/drmapi/android/WVPlayback;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVHWModelKey"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/widevine/drmapi/android/WVPlayback;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVUIDKey"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WVAssetDBPathKey"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "WVAssetDBPathKey"

    iget-object v2, p0, Lcom/widevine/drmapi/android/WVPlayback;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Ljava/util/HashMap;Lcom/widevine/drmapi/android/WVEventListener;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/widevine/drmapi/android/WVEventListener;",
            ")",
            "Lcom/widevine/drmapi/android/WVStatus;"
        }
    .end annotation

    invoke-static {}, Lcom/widevine/drm/internal/s;->c()V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drmapi/android/WVPlayback;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMEI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drmapi/android/WVPlayback;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drmapi/android/WVPlayback;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wifi MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default asset DB Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/widevine/drmapi/android/WVPlayback;->a(Ljava/util/HashMap;)V

    invoke-static {p3}, Lcom/widevine/drm/internal/b;->a(Lcom/widevine/drmapi/android/WVEventListener;)V

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->a()Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-static {p1}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v0, :cond_a8

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_a7
    return-object v0

    :cond_a8
    new-instance v0, Lcom/widevine/drm/internal/ab;

    invoke-direct {v0, p3}, Lcom/widevine/drm/internal/ab;-><init>(Lcom/widevine/drmapi/android/WVEventListener;)V

    iput-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    new-instance v0, Lcom/widevine/drm/internal/m;

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/widevine/drmapi/android/WVPlayback;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/widevine/drm/internal/m;-><init>(Lcom/widevine/drm/internal/ab;Landroid/content/pm/ApplicationInfo;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v1, v0}, Lcom/widevine/drm/internal/ab;->a(Lcom/widevine/drm/internal/aa;)I

    move-result v1

    if-gez v1, :cond_c9

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_a7

    :cond_c9
    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/aa;->a(I)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/aa;->start()V

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_a7
.end method

.method public isRooted()Z
    .registers 2

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->a()Lcom/widevine/drm/internal/HTTPDecrypter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->ir()Z

    move-result v0

    return v0
.end method

.method public play(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/16 v3, 0x2f

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/ab;->c()Z

    move-result v1

    if-nez v1, :cond_24

    :cond_f
    new-instance v1, Lcom/widevine/drm/internal/b;

    sget-object v2, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v1, v2, v3}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    invoke-virtual {v1, p1}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    const-string v2, "Unable to play. Not initialized (wp:p)"

    invoke-virtual {v1, v2}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/widevine/drm/internal/b;->a()V

    :goto_23
    return-object v0

    :cond_24
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/widevine/drm/internal/s;->b()Lcom/widevine/drm/internal/u;

    move-result-object v1

    if-eqz v1, :cond_43

    new-instance v1, Lcom/widevine/drm/internal/b;

    sget-object v2, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->NotPlaying:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v1, v2, v3}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    invoke-virtual {v1, p1}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    const-string v2, "Unable to play. Previous commands still being processed (wp:p)"

    invoke-virtual {v1, v2}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/widevine/drm/internal/b;->a()V

    goto :goto_23

    :cond_43
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_b2

    :cond_6b
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_b2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_89
    :goto_89
    :try_start_89
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    new-instance v1, Lcom/widevine/drm/internal/i;

    invoke-direct {v1, p1}, Lcom/widevine/drm/internal/i;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->a:Lcom/widevine/drm/internal/o;
    :try_end_98
    .catch Lcom/widevine/drm/internal/ad; {:try_start_89 .. :try_end_98} :catch_ce

    :goto_98
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->a:Lcom/widevine/drm/internal/o;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/o;)V

    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-virtual {v0, v1, p1}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->a:Lcom/widevine/drm/internal/o;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/o;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    :cond_b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/widevine/drmapi/android/WVPlayback;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_89

    :cond_c6
    :try_start_c6
    new-instance v1, Lcom/widevine/drm/internal/g;

    invoke-direct {v1, p1}, Lcom/widevine/drm/internal/g;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->a:Lcom/widevine/drm/internal/o;
    :try_end_cd
    .catch Lcom/widevine/drm/internal/ad; {:try_start_c6 .. :try_end_cd} :catch_ce

    goto :goto_98

    :catch_ce
    move-exception v1

    new-instance v2, Lcom/widevine/drm/internal/b;

    sget-object v3, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/ad;->a()Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    invoke-virtual {v1}, Lcom/widevine/drm/internal/ad;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/widevine/drm/internal/b;->a()V

    goto/16 :goto_23
.end method

.method public queryAssetStatus(JJJ)Lcom/widevine/drmapi/android/WVStatus;
    .registers 15

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->c()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_e
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_10
    return-object v0

    :cond_11
    cmp-long v0, p1, v1

    if-ltz v0, :cond_1d

    cmp-long v0, p3, v1

    if-ltz v0, :cond_1d

    cmp-long v0, p5, v1

    if-gez v0, :cond_20

    :cond_1d
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensed:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_10

    :cond_20
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->o:Lcom/widevine/drm/internal/x;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;JJJ)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_10

    :cond_32
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_10
.end method

.method public queryAssetStatus(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 4

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->c()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->o:Lcom/widevine/drm/internal/x;

    invoke-virtual {v0, v1, p1}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_e

    :cond_1e
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_e
.end method

.method public registerAsset(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 4

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->c()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->f:Lcom/widevine/drm/internal/x;

    invoke-virtual {v0, v1, p1}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_e

    :cond_1e
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_e
.end method

.method public requestLicense(JJJ)Lcom/widevine/drmapi/android/WVStatus;
    .registers 15

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->c()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_e
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_10
    return-object v0

    :cond_11
    cmp-long v0, p1, v1

    if-ltz v0, :cond_1d

    cmp-long v0, p3, v1

    if-ltz v0, :cond_1d

    cmp-long v0, p5, v1

    if-gez v0, :cond_20

    :cond_1d
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensed:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_10

    :cond_20
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->l:Lcom/widevine/drm/internal/x;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;JJJ)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_10

    :cond_32
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_10
.end method

.method public requestLicense(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 4

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->c()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->l:Lcom/widevine/drm/internal/x;

    invoke-virtual {v0, v1, p1}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_e

    :cond_1e
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_e
.end method

.method public setCredentials(Ljava/util/HashMap;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/widevine/drmapi/android/WVStatus;"
        }
    .end annotation

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->c()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1}, Lcom/widevine/drmapi/android/WVPlayback;->a(Ljava/util/HashMap;)V

    new-instance v0, Lcom/widevine/drm/internal/m;

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/widevine/drmapi/android/WVPlayback;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/widevine/drm/internal/m;-><init>(Lcom/widevine/drm/internal/ab;Landroid/content/pm/ApplicationInfo;Ljava/util/HashMap;)V

    :try_start_1e
    invoke-direct {p0, p1}, Lcom/widevine/drmapi/android/WVPlayback;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/m;->a(Ljava/util/HashMap;)V
    :try_end_25
    .catch Lcom/widevine/drm/internal/ad; {:try_start_1e .. :try_end_25} :catch_28

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_e

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ad;->a()Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v0

    goto :goto_e
.end method

.method public terminate()Lcom/widevine/drmapi/android/WVStatus;
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->a:Lcom/widevine/drm/internal/o;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->a:Lcom/widevine/drm/internal/o;

    const/4 v1, 0x1

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    const-string v3, "Terminate command received"

    invoke-virtual {v0, v1, v2, v3}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/widevine/drmapi/android/WVPlayback;->a:Lcom/widevine/drm/internal/o;

    :cond_11
    iget-object v0, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    if-nez v0, :cond_18

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/widevine/drm/internal/ac;

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-direct {v0, v1}, Lcom/widevine/drm/internal/ac;-><init>(Lcom/widevine/drm/internal/ab;)V

    iget-object v1, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v1, v0}, Lcom/widevine/drm/internal/ab;->a(Lcom/widevine/drm/internal/aa;)I

    move-result v1

    if-gez v1, :cond_2a

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_17

    :cond_2a
    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/aa;->a(I)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/aa;->start()V

    iput-object v4, p0, Lcom/widevine/drmapi/android/WVPlayback;->g:Lcom/widevine/drm/internal/ab;

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_17
.end method
