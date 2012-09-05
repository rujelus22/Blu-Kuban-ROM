.class public Lcom/sec/android/app/controlpanel/SpecialPackageList;
.super Ljava/lang/Object;
.source "SpecialPackageList.java"


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/SpecialPackageList;

.field private static final mHiddenPackageStringArray:[Ljava/lang/String;

.field private static final mIntentActionAfterKilledPackageStringArray:[[Ljava/lang/String;

.field private static final mMemoryClearHiddennPackageStringArray:[Ljava/lang/String;

.field private static final mMustBeShownPackageStringArray:[Ljava/lang/String;


# instance fields
.field private mHiddenPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentActionAfterKilledPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryClearHiddennPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMustBeShownPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.music"

    aput-object v1, v0, v4

    const-string v1, "com.android.music"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.voicerecorder"

    aput-object v1, v0, v6

    const-string v1, "com.sec.android.app.fm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.samsung.app.fmradio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.iloen.melon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.mnet.polgtapp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.mnet.app"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.mnet.lgtapp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.neowiz.android.bugs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.skt.nate.A00000000D"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMustBeShownPackageStringArray:[Ljava/lang/String;

    .line 31
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.twlauncher"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.seniorlauncher"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.app.controlpanel"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.dialertop"

    aput-object v1, v0, v6

    const-string v1, "com.sec.android.app.dialer"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.providers.telephony"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "system"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.bluetoothtest"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.samsung.sec.android.application.csc"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.callsetting"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.samsung.crashnotifier"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.sec.android.app.factorytest"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings.mt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.samsung.mobileTracker.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.osp.app.signin"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.wipereceiver"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.sec.android.app.personalization"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.Preconfig"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.sec.android.app.wlantest"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.sec.android.app.dialertab"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.wssyncmldm"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.android.samsungtest.DataCreate"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.android.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.google.android.googleapps"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.android.wallpaper.livepicker"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.android.magicsmoke"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.sec.android.voip"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.android.samsungtest.FactoryTest"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.sec.android.widgetapp.dualclock"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.spritemobile.backup.samsung"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.sec.android.app.samsungapps.una"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.palmia.qspider"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.sec.android.widgetapp.buddiesnow"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.kt.iwlan"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.sec.android.provider.logsprovider"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.sec.android.widgetapp.digitalclock"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mHiddenPackageStringArray:[Ljava/lang/String;

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMemoryClearHiddennPackageStringArray:[Ljava/lang/String;

    .line 104
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.android.email"

    aput-object v2, v1, v3

    const-string v2, "com.android.email.RESTART_SYNCMANAGER"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.socialhub"

    aput-object v2, v1, v3

    const-string v2, "com.sec.android.socialhub.RESTART_PACKAGE_ACTION"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mIntentActionAfterKilledPackageStringArray:[[Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/SpecialPackageList;-><init>()V

    sput-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->instance:Lcom/sec/android/app/controlpanel/SpecialPackageList;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMustBeShownPackage:Ljava/util/Set;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mHiddenPackage:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMemoryClearHiddennPackage:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mIntentActionAfterKilledPackage:Ljava/util/HashMap;

    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->updateExcludePackageList()V

    .line 127
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->instance:Lcom/sec/android/app/controlpanel/SpecialPackageList;

    return-object v0
.end method

.method private updateExcludePackageList()V
    .registers 7

    .prologue
    .line 130
    sget-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMustBeShownPackageStringArray:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 131
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addMustBeShownPackage(Ljava/lang/String;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 133
    .end local v3           #s:Ljava/lang/String;
    :cond_e
    sget-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mHiddenPackageStringArray:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 134
    .restart local v3       #s:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addHiddenPackage(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 136
    .end local v3           #s:Ljava/lang/String;
    :cond_1c
    sget-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMemoryClearHiddennPackageStringArray:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v2, :cond_2a

    aget-object v3, v0, v1

    .line 137
    .restart local v3       #s:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addMemoryClearHiddennPackage(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 139
    .end local v3           #s:Ljava/lang/String;
    :cond_2a
    sget-object v0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mIntentActionAfterKilledPackageStringArray:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v2, :cond_3e

    aget-object v3, v0, v1

    .line 140
    .local v3, s:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->addIntentActionAfterKilledPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 142
    .end local v3           #s:[Ljava/lang/String;
    :cond_3e
    return-void
.end method


# virtual methods
.method public addHiddenPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mHiddenPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mHiddenPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_d
    return-void
.end method

.method public addIntentActionAfterKilledPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"
    .parameter "action"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mIntentActionAfterKilledPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mIntentActionAfterKilledPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_d
    return-void
.end method

.method public addMemoryClearHiddennPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMemoryClearHiddennPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMemoryClearHiddennPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_d
    return-void
.end method

.method public addMustBeShownPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMustBeShownPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMustBeShownPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_d
    return-void
.end method

.method public getIntentActionAfterKilledPkg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mIntentActionAfterKilledPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isHiddenPkg(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mHiddenPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isIntentActionAfterKilledPkg(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mIntentActionAfterKilledPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMemoryClearHiddennPkg(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMemoryClearHiddennPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMustBeShownPkg(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/SpecialPackageList;->mMustBeShownPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
