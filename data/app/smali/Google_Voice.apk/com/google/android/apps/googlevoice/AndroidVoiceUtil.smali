.class public Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;
.super Lcom/google/android/apps/googlevoice/VoiceUtil;
.source "AndroidVoiceUtil.java"


# static fields
.field private static final PHONE_TYPE_CDMA:I = 0x2


# instance fields
.field private final SPRINT_SIM_OPERATOR_NAME:Ljava/lang/String;

.field private final versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/system/VersionHelper;)V
    .registers 3
    .parameter "versionHelper"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;-><init>()V

    .line 36
    const-string v0, "sprint"

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->SPRINT_SIM_OPERATOR_NAME:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 40
    return-void
.end method

.method private getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_b

    .end local v0           #result:Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0       #result:Ljava/lang/String;
    :cond_b
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLine1Number(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasTelephony(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 119
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isCdmaPhone(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isOnSprintNetwork(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->isSimReady(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 87
    const/4 v1, 0x0

    .line 90
    :goto_7
    return v1

    .line 89
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 90
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, "sprint"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public isSimReady(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 101
    .local v0, simState:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_f

    :cond_d
    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public mayCreateNewAccount(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 108
    const/4 v1, 0x0

    .line 114
    :goto_9
    return v1

    .line 110
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;->getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, simCountryIso:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_2e

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM country ISO = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 114
    :cond_2e
    const-string v1, "us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method
