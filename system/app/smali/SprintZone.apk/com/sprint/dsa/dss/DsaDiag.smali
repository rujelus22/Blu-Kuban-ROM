.class public Lcom/sprint/dsa/dss/DsaDiag;
.super Ljava/lang/Object;
.source "DsaDiag.java"


# static fields
.field static final SIX_ZEROS:Ljava/lang/String; = "000000"

.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"

.field private static availablePrlVersion:Ljava/lang/String;

.field private static availableSoftwareVersion:Ljava/lang/String;

.field private static mdn:Ljava/lang/String;

.field private static systemProperties:Lcom/sprint/internal/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/dss/DsaDiag;->mdn:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canConnectTo(Ljava/lang/String;)Z
    .registers 7
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 297
    :try_start_1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 300
    .local v1, ip:Ljava/net/InetAddress;
    new-instance v3, Ljava/net/Socket;

    const/16 v5, 0x50

    invoke-direct {v3, v1, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 301
    .local v3, socket:Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 303
    .local v2, out:Ljava/io/OutputStream;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 304
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_18

    .line 308
    .end local v1           #ip:Ljava/net/InetAddress;
    .end local v2           #out:Ljava/io/OutputStream;
    .end local v3           #socket:Ljava/net/Socket;
    :goto_17
    return v4

    .line 306
    :catch_18
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_17
.end method

.method public static canConnectToDSA1()Z
    .registers 1

    .prologue
    .line 290
    const-string v0, "deviceselfservice.sprint.com"

    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDiag;->canConnectTo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static doHaveSignal()Z
    .registers 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static get4GStatusText(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "cx"

    .prologue
    .line 187
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 190
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_12

    .line 191
    const-string v2, "not supported"

    .line 193
    .local v2, wimaxStatus:Ljava/lang/String;
    :goto_11
    return-object v2

    .line 192
    .end local v2           #wimaxStatus:Ljava/lang/String;
    :cond_12
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #wimaxStatus:Ljava/lang/String;
    goto :goto_11
.end method

.method public static getAvailablePrlVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 286
    sget-object v0, Lcom/sprint/dsa/dss/DsaDiag;->availablePrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableSoftwareVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 275
    sget-object v0, Lcom/sprint/dsa/dss/DsaDiag;->availableSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getMDN()Ljava/lang/String;
    .registers 1

    .prologue
    .line 220
    sget-object v0, Lcom/sprint/dsa/dss/DsaDiag;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public static getMdn(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 223
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_7

    const-string v2, ""

    .line 228
    :goto_6
    return-object v2

    .line 225
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v1

    .line 226
    .local v1, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_6

    .line 227
    .end local v1           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_11
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_6
.end method

.method public static getMeid(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6
    .parameter "ctx"
    .parameter "asHex"

    .prologue
    .line 253
    sget-boolean v3, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v3, :cond_7

    const-string v3, ""

    .line 263
    :goto_6
    return-object v3

    .line 255
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v2

    .line 256
    .local v2, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, hex:Ljava/lang/String;
    if-eqz p1, :cond_18

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 260
    :cond_18
    invoke-static {v1}, Lcom/sprint/dsa/Util;->hexMeidToDec(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1d

    move-result-object v3

    goto :goto_6

    .line 262
    .end local v1           #hex:Ljava/lang/String;
    .end local v2           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_1d
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_6
.end method

.method public static getMsid(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 233
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_7

    const-string v2, ""

    .line 238
    :goto_6
    return-object v2

    .line 235
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v1

    .line 236
    .local v1, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v2

    goto :goto_6

    .line 237
    .end local v1           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_12
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_6
.end method

.method public static getNai(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 243
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_7

    const-string v2, ""

    .line 248
    :goto_6
    return-object v2

    .line 245
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v1

    .line 246
    .local v1, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_6

    .line 247
    .end local v1           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_11
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_6
.end method

.method public static getPrlVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lcom/sprint/internal/Platform;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_e

    move-result-object v1

    .line 143
    .local v1, version:Ljava/lang/String;
    if-nez v1, :cond_9

    .line 144
    const-string v2, "Not Available"

    .line 150
    :goto_8
    return-object v2

    .line 146
    :cond_9
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v2

    goto :goto_8

    .line 148
    :catch_e
    move-exception v0

    .line 149
    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "SprintZone_DSA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPrlVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const-string v2, "Not Available"

    goto :goto_8
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;
    .registers 2
    .parameter "context"

    .prologue
    .line 36
    sget-object v0, Lcom/sprint/dsa/dss/DsaDiag;->systemProperties:Lcom/sprint/internal/SystemProperties;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v0, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/dsa/dss/DsaDiag;->systemProperties:Lcom/sprint/internal/SystemProperties;

    .line 39
    :cond_b
    sget-object v0, Lcom/sprint/dsa/dss/DsaDiag;->systemProperties:Lcom/sprint/internal/SystemProperties;

    return-object v0
.end method

.method public static hasSMS()Z
    .registers 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public static hasVoice()Z
    .registers 2

    .prologue
    .line 198
    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 199
    const-string v0, "SPH-P100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public static is4GCapable(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9
    .parameter "make"
    .parameter "model"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    const-string v4, "Samsung"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 174
    const-string v4, "SPH-D700"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 183
    :cond_12
    :goto_12
    return v2

    .line 177
    :cond_13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1b

    move v2, v3

    goto :goto_12

    .line 178
    :cond_1b
    const-string v4, "connectivity"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 180
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 181
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_12

    move v2, v3

    .line 183
    goto :goto_12
.end method

.method public static isAirplaneMode(Landroid/content/Context;)Z
    .registers 5
    .parameter "me"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 68
    const-string v3, "airplane_mode_on"

    .line 67
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    .line 69
    .local v0, isEnabled:Z
    :goto_e
    return v0

    .end local v0           #isEnabled:Z
    :cond_f
    move v0, v1

    .line 67
    goto :goto_e
.end method

.method public static isFactoryDefault(Landroid/content/Context;)Z
    .registers 8
    .parameter "me"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/dsa/data/Device;->isIden()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 44
    sput-boolean v3, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    .line 63
    :cond_e
    :goto_e
    return v3

    .line 47
    :cond_f
    sget-boolean v5, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v5, :cond_16

    sget-boolean v3, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    goto :goto_e

    .line 51
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v2

    .line 53
    .local v2, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sprint/dsa/dss/DsaDiag;->mdn:Ljava/lang/String;

    .line 54
    const/16 v5, 0x23

    invoke-virtual {v2, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, msid:Ljava/lang/String;
    sget-object v5, Lcom/sprint/dsa/dss/DsaDiag;->mdn:Ljava/lang/String;

    const-string v6, "000000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    const-string v5, "000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_3b

    move-result v5

    if-eqz v5, :cond_e

    :cond_39
    move v3, v4

    .line 56
    goto :goto_e

    .line 60
    .end local v1           #msid:Ljava/lang/String;
    .end local v2           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_3b
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_DSA"

    const-string v5, "Unable to get System Properties"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public static isRoamming(Landroid/content/Context;)Z
    .registers 3
    .parameter "me"

    .prologue
    .line 160
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 161
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method public static isSamsungTablet()Z
    .registers 2

    .prologue
    .line 208
    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 209
    const-string v0, "SPH-P100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    const/4 v0, 0x1

    .line 213
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static setAirplaneMode(Landroid/content/Context;Z)V
    .registers 6
    .parameter "me"
    .parameter "isEnabled"

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    .line 119
    :goto_9
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_23

    .line 130
    .end local v0           #intent:Landroid/content/Intent;
    :goto_20
    return-void

    .line 120
    :cond_21
    const/4 v1, 0x0

    goto :goto_9

    .line 127
    :catch_23
    move-exception v1

    goto :goto_20
.end method

.method public static setAvailablePrlVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "availablePrlVersion"

    .prologue
    .line 279
    if-eqz p0, :cond_e

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 280
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/dss/DsaDiag;->availablePrlVersion:Ljava/lang/String;

    .line 283
    :goto_d
    return-void

    .line 282
    :cond_e
    sput-object p0, Lcom/sprint/dsa/dss/DsaDiag;->availablePrlVersion:Ljava/lang/String;

    goto :goto_d
.end method

.method public static setAvailableSoftwareVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "availableSoftwareVersion"

    .prologue
    .line 268
    if-eqz p0, :cond_e

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 269
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/dss/DsaDiag;->availableSoftwareVersion:Ljava/lang/String;

    .line 272
    :goto_d
    return-void

    .line 271
    :cond_e
    sput-object p0, Lcom/sprint/dsa/dss/DsaDiag;->availableSoftwareVersion:Ljava/lang/String;

    goto :goto_d
.end method

.method public static testSMS(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .registers 14
    .parameter "context"
    .parameter "sPI"
    .parameter "dPI"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, smsNumber:Ljava/lang/String;
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_19

    .line 75
    const-string v1, "9135551212"

    .line 99
    :goto_9
    if-eqz v1, :cond_5c

    .line 100
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 102
    .local v0, sms:Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    :try_start_10
    const-string v3, "//voice check"

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_45

    move v2, v10

    .line 113
    .end local v0           #sms:Landroid/telephony/SmsManager;
    :goto_18
    return v2

    .line 80
    :cond_19
    :try_start_19
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_23

    move-result-object v8

    .line 87
    .local v8, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x1

    :try_start_1e
    invoke-virtual {v8, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_2d

    move-result-object v1

    goto :goto_9

    .line 81
    .end local v8           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_23
    move-exception v7

    .line 82
    .local v7, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_DSA"

    const-string v3, "Unable to get System Properties"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v9

    .line 83
    goto :goto_18

    .line 89
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #sp:Lcom/sprint/internal/SystemProperties;
    :catch_2d
    move-exception v7

    .line 91
    .local v7, e:Ljava/lang/Throwable;
    new-instance v6, Landroid/content/Intent;

    const-string v2, "SMS_SENT"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, broadcast:Landroid/content/Intent;
    const-string v2, "SmsError"

    invoke-virtual {v6, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    const-string v2, "SprintZone_DSA"

    const-string v3, "Reading MDN and msid"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 104
    .end local v6           #broadcast:Landroid/content/Intent;
    .end local v7           #e:Ljava/lang/Throwable;
    .end local v8           #sp:Lcom/sprint/internal/SystemProperties;
    .restart local v0       #sms:Landroid/telephony/SmsManager;
    :catch_45
    move-exception v7

    .line 105
    .restart local v7       #e:Ljava/lang/Throwable;
    new-instance v6, Landroid/content/Intent;

    const-string v2, "SMS_SENT"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v6       #broadcast:Landroid/content/Intent;
    const-string v2, "SmsError"

    invoke-virtual {v6, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    const-string v2, "SprintZone_DSA"

    const-string v3, "Error sending voice check SMS"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #sms:Landroid/telephony/SmsManager;
    .end local v6           #broadcast:Landroid/content/Intent;
    .end local v7           #e:Ljava/lang/Throwable;
    :cond_5c
    move v2, v9

    .line 113
    goto :goto_18
.end method
