.class public final Lcom/android/contacts/util/PhoneCapabilityTester;
.super Ljava/lang/Object;
.source "PhoneCapabilityTester.java"


# static fields
.field private static sIsInitialized:Z

.field private static sIsPhone:Z

.field private static sIsSipPhone:Z

.field private static sIsVideoCall:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialize(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    .line 67
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_31

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_31

    move v1, v2

    :goto_18
    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    .line 68
    sput-boolean v2, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    .line 69
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_33

    :goto_20
    sput-boolean v2, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVideoCall:Z

    .line 77
    const-string v1, "SPH-D710"

    const-string v2, "SGH-T869"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 79
    sput-boolean v3, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    .line 80
    sput-boolean v3, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVideoCall:Z

    .line 82
    :cond_30
    return-void

    :cond_31
    move v1, v3

    .line 67
    goto :goto_18

    :cond_33
    move v2, v3

    .line 69
    goto :goto_20
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 50
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, receiverList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 61
    :cond_7
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    return v0
.end method

.method public static isSipPhone(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 89
    :cond_7
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    return v0
.end method

.method public static isSmsIntentRegistered(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isUsingTwoPanes(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoCall(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 99
    :cond_7
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVideoCall:Z

    return v0
.end method
