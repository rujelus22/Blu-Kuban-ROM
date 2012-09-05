.class public Lcom/syncmldstmo/cust/smlDevInfoAdapter;
.super Ljava/lang/Object;
.source "smlDevInfoAdapter.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static MODEL_NAME:Ljava/lang/String;

.field public static MODEL_VERSION:Ljava/lang/String;

.field public static bChangeModel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_NAME:Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_VERSION:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->bChangeModel:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlGetOEMName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string v1, "ro.product.OEM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 131
    const-string v0, "Samsung Electronics."

    .line 133
    :cond_e
    return-object v0
.end method

.method public static smldevAdpGetDeviceID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    const-string v0, ""

    .line 47
    .local v0, szDeviceId:Ljava/lang/String;
    const-string v2, "phone"

    invoke-static {v2}, Lcom/syncmldstmo/DSService;->smlGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 48
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_21

    .line 50
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v2, "IMEI:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_16
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-nez v2, :cond_20

    .line 59
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 60
    :cond_20
    return-object v0

    .line 55
    :cond_21
    const-string v0, "IMEI:000000000000000"

    .line 56
    const-string v2, "TelephonyManager is null!"

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static smldevAdpGetFirmwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 139
    .local v0, str:Ljava/lang/String;
    const-string v1, "ro.build.FW"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 141
    const-string v0, "1.0"

    .line 143
    :cond_10
    return-object v0
.end method

.method public static smldevAdpGetHardwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    const-string v1, "ro.build.HW"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 164
    const-string v0, "0.4"

    .line 165
    :cond_e
    return-object v0
.end method

.method public static smldevAdpGetIMSIFromSIM()Ljava/lang/String;
    .registers 4

    .prologue
    .line 170
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 171
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, IMSI_key:Ljava/lang/String;
    return-object v0
.end method

.method public static smldevAdpGetManufacturer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 68
    .local v0, str:Ljava/lang/String;
    const-string v0, "Samsung"

    .line 69
    return-object v0
.end method

.method public static smldevAdpGetModelName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    sget-boolean v1, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->bChangeModel:Z

    if-eqz v1, :cond_7

    .line 76
    sget-object v0, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_NAME:Ljava/lang/String;

    .line 86
    .local v0, str:Ljava/lang/String;
    :cond_6
    :goto_6
    return-object v0

    .line 79
    .end local v0           #str:Ljava/lang/String;
    :cond_7
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0       #str:Ljava/lang/String;
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 82
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static smldevAdpGetSalesCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, szSalesCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 185
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_12
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 188
    const-string v0, ""

    .line 189
    :cond_1a
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_36

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "szSalesCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 191
    :cond_36
    return-object v0
.end method

.method public static smldevAdpGetSoftwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    sget-boolean v1, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->bChangeModel:Z

    if-eqz v1, :cond_7

    .line 150
    sget-object v0, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_VERSION:Ljava/lang/String;

    .line 157
    .local v0, str:Ljava/lang/String;
    :cond_6
    :goto_6
    return-object v0

    .line 153
    .end local v0           #str:Ljava/lang/String;
    :cond_7
    const-string v1, "ro.build.PDA"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0       #str:Ljava/lang/String;
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    const-string v0, "1.0"

    goto :goto_6
.end method

.method public static smldevAdpSetIMSIModelName(Ljava/lang/String;)V
    .registers 8
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 91
    const-string v4, "SYSTEM"

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2d

    .line 93
    sput-boolean v6, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->bChangeModel:Z

    .line 95
    sput-object v5, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_NAME:Ljava/lang/String;

    .line 96
    sput-object v5, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_VERSION:Ljava/lang/String;

    .line 97
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_2c

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original model name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 118
    :cond_2c
    :goto_2c
    return-void

    .line 102
    :cond_2d
    sput-boolean v6, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->bChangeModel:Z

    .line 103
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetModelName()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, version:Ljava/lang/String;
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_5d

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original model name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 108
    :cond_5d
    const/4 v4, 0x1

    sput-boolean v4, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->bChangeModel:Z

    .line 109
    const/4 v4, 0x5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, model:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, replace_model:Ljava/lang/String;
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_98

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replace model name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 115
    :cond_98
    sput-object p0, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_NAME:Ljava/lang/String;

    .line 116
    sput-object v3, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->MODEL_VERSION:Ljava/lang/String;

    goto :goto_2c
.end method
