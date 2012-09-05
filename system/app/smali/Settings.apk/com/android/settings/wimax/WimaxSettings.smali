.class public Lcom/android/settings/wimax/WimaxSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxSettings$3;,
        Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;
    }
.end annotation


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilter:Landroid/content/IntentFilter;

.field private mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mView:Landroid/view/View;

.field private mWimaxCategory:Landroid/preference/PreferenceCategory;

.field private mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

.field private mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private m_bLog:Z

.field private m_nCurrentStateDetail:I

.field private m_nWimaxSignal:I

.field private m_nWimaxStatus:I

.field private m_strNapId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    .line 66
    iput v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    .line 67
    iput v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    .line 80
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$1;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wimax/WimaxSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/wimax/WimaxSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxSettings;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStatusChanged(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wimax/WimaxSettings;Landroid/preference/Preference;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxSettings;->buildDialogConnected(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method private addMessagePreference(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 550
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 551
    const-string v0, "WimaxSettings"

    const-string v1, " mWimaxEnabler != null && !mWimaxEnabler.isWimaxAllowed(getActivity()) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    :goto_22
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_27
    return-void

    .line 554
    :cond_28
    const-string v0, "WimaxSettings"

    const-string v1, " entered else mWimaxEnabler != null && !mWimaxEnabler.isWimaxAllowed(getActivity()) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22
.end method

.method private buildDialogConnected(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 588
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0864

    invoke-virtual {p0, v2}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0869

    new-instance v2, Lcom/android/settings/wimax/WimaxSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxSettings$2;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    .line 594
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 595
    const/4 v0, 0x1

    return v0
.end method

.method private createPreference(Ljava/lang/String;)V
    .registers 6
    .parameter "napId"

    .prologue
    .line 531
    new-instance v0, Lcom/android/settings/wimax/WimaxNetworkPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wimax/WimaxNetworkPreference;-><init>(Lcom/android/settings/wimax/WimaxSettings;Ljava/lang/String;)V

    .line 532
    .local v0, pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    .line 533
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    const-string v1, "000002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "000004"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    :cond_19
    const v1, 0x7f0b0862

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_48

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPreference called adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_48
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_55

    .line 539
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 541
    :cond_55
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 544
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 545
    return-void

    .line 533
    :cond_62
    const v1, 0x7f0b0863

    goto :goto_1c
.end method

.method private deletePreference()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 565
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_e

    .line 566
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 567
    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    .line 568
    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 570
    :cond_e
    return-void
.end method

.method private getConnectedNSP()V
    .registers 4

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxSettings"

    const-string v1, "[getConnectedNSP] Called11"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 479
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNapId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 482
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_2a

    const-string v0, "WimaxSettings"

    const-string v1, "[getConnectedNSP]  napId of mConnectedNspInfo is null. It will be changed to 000000."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->setNapId(Ljava/lang/String;)V

    .line 484
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 487
    :cond_35
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->updateNapId(Ljava/lang/String;)V

    .line 489
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_58

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getConnectedNSP]  m_strNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_58
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->createPreference(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 13
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    const v9, 0x7f0b086a

    const v8, 0x7f0b0859

    const/4 v7, 0x0

    const/4 v6, 0x6

    .line 332
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_24

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  Received Wimax state changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_24
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_52

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  pre and now r same 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_52
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v2

    if-eqz v2, :cond_86

    .line 336
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_86

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  pre and now r same111 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->equals(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_86
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 339
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_aa

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  WimaxState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_aa
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, summary:Ljava/lang/String;
    if-eqz v0, :cond_cb

    .line 342
    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->addMessagePreference(Ljava/lang/CharSequence;)V

    .line 349
    .end local v0           #summary:Ljava/lang/String;
    :cond_b7
    :goto_b7
    sget-object v2, Lcom/android/settings/wimax/WimaxSettings$3;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    invoke-virtual {p1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_210

    .line 402
    :cond_c2
    :goto_c2
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    .line 408
    :cond_ca
    :goto_ca
    return-void

    .line 344
    .restart local v0       #summary:Ljava/lang/String;
    :cond_cb
    const-string v2, "WimaxSettings"

    const-string v3, "unknown carrier passing empty string to addMessagePreference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/android/settings/wimax/WimaxSettings;->addMessagePreference(Ljava/lang/CharSequence;)V

    goto :goto_b7

    .line 352
    .end local v0           #summary:Ljava/lang/String;
    :pswitch_d8
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    if-eqz v2, :cond_10f

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v2

    if-eqz v2, :cond_10f

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->equals(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 353
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_fd

    const-string v2, "WimaxSettings"

    const-string v3, "duplicate return here"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_fd
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_ca

    .line 356
    if-ne p2, v6, :cond_109

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_ca

    .line 357
    :cond_109
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_ca

    .line 361
    :cond_10f
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-nez v2, :cond_132

    .line 362
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_11e

    const-string v2, "WimaxSettings"

    const-string v3, "[handleWimaxStateChanged]  preference == null, create preference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_11e
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getConnectedNSP()V

    .line 387
    :cond_121
    :goto_121
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_12c

    .line 388
    if-ne p2, v6, :cond_1f2

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 393
    :cond_12c
    :goto_12c
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ca

    .line 365
    :cond_132
    if-eq p2, v6, :cond_121

    .line 366
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_13f

    const-string v2, "WimaxSettings"

    const-string v3, "[handleWimaxStateChanged]  preference != null, check napid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_13f
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getConnectedNSP()V

    .line 369
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNapId()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, tempNapId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 372
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_178

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  settings napId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", framework napid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_178
    const-string v2, "000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d4

    if-eqz v1, :cond_1d4

    .line 374
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b6

    .line 375
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_1a6

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged] napid changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1a6
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNspName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->updateNapId(Ljava/lang/String;)V

    goto/16 :goto_121

    .line 379
    :cond_1b6
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_121

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  Dont update same napid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121

    .line 382
    :cond_1d4
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_121

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore napid 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121

    .line 389
    .end local v1           #tempNapId:Ljava/lang/String;
    :cond_1f2
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_12c

    .line 397
    :pswitch_1f9
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_c2

    .line 398
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 399
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_c2

    const-string v2, "WimaxSettings"

    const-string v3, "[handleWimaxStateChanged] Called to dismiss pop-ups"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 349
    nop

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_1f9
    .end packed-switch
.end method

.method private handleWimaxStatusChanged(II)V
    .registers 8
    .parameter "mWimaxStatus"
    .parameter "nPreviousWimaxStatus"

    .prologue
    const/4 v4, 0x0

    .line 414
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_1d

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStatusChanged]  Received Wimax status changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1d
    packed-switch p1, :pswitch_data_e2

    .line 447
    const v0, 0x7f0b086c

    .line 448
    .local v0, nMessage:I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_db

    const v0, 0x7f0b0878

    .line 452
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addMessagePreference(Ljava/lang/CharSequence;)V

    .line 457
    .end local v0           #nMessage:I
    :cond_30
    :goto_30
    return-void

    .line 417
    :pswitch_31
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 419
    const v1, 0x7f0b0876

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addMessagePreference(Ljava/lang/CharSequence;)V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    goto :goto_30

    .line 424
    :pswitch_49
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_82

    .line 425
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 429
    :cond_82
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addMessagePreference(Ljava/lang/CharSequence;)V

    .line 430
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    goto :goto_30

    .line 433
    :pswitch_8b
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 435
    const v1, 0x7f0b0877

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addMessagePreference(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 438
    :pswitch_a0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_30

    .line 439
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 441
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    goto/16 :goto_30

    .line 449
    .restart local v0       #nMessage:I
    :cond_db
    if-nez p2, :cond_29

    const v0, 0x7f0b0879

    goto/16 :goto_29

    .line 415
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_31
        :pswitch_49
        :pswitch_8b
        :pswitch_a0
    .end packed-switch
.end method

.method private onCreatePreferences()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    const v1, 0x7f050056

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addPreferencesFromResource(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 200
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "wimax_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    .line 201
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v1, :cond_22

    .line 202
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wimax/WimaxEnabler;->getEnableLog()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    .line 205
    :cond_22
    const-string v1, "open_network_notifications_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    .line 206
    const-string v1, "WimaxSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOpenNetworkNotificationsEnabled called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wimax_networks_available_notification_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5d

    move v1, v2

    :goto_59
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    return-void

    :cond_5d
    move v1, v3

    .line 208
    goto :goto_59
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 618
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 620
    return-void
.end method

.method private updateNapId(Ljava/lang/String;)V
    .registers 5
    .parameter "strNapId"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 624
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_1e

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateNapId]  Calling WimaxStatus.updateNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_1e
    const-string v0, "000002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "000004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxStatus;->updateNapId(Z)V

    .line 626
    return-void

    .line 625
    :cond_33
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private updateWimaxSignal(II)V
    .registers 3
    .parameter "WimaxSignalLevel"
    .parameter "stateDetail"

    .prologue
    .line 629
    invoke-static {p1, p2}, Lcom/android/settings/wimax/WimaxNetworkPreference;->updateWimaxSignal(II)V

    .line 630
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 161
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v3, :cond_18

    const-string v3, "WimaxSettings"

    const-string v4, "on create called .."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    .line 167
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_5d

    move-object v2, v0

    .line 168
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 169
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 170
    :cond_36
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 172
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 173
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 182
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_5d
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mView:Landroid/view/View;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 184
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    new-instance v3, Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wimax/WimaxEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    .line 187
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Lcom/android/settings/wimax/WimaxEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 189
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->setHasOptionsMenu(Z)V

    .line 190
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v0

    .line 260
    .local v0, wimaxIsEnabled:Z
    :goto_b
    const/4 v2, 0x1

    const v3, 0x7f0b086b

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 264
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 265
    return-void

    .end local v0           #wimaxIsEnabled:Z
    :cond_1f
    move v0, v1

    .line 259
    goto :goto_b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->onCreatePreferences()V

    .line 150
    const v0, 0x7f040032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mView:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_e

    const-string v0, "WimaxSettings"

    const-string v1, "[onDestroy] Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    .line 247
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 248
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxSettings"

    const-string v1, "[onDestroy] Called to dismiss pop-ups"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_22
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->destroy()V

    .line 251
    :cond_2b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 279
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 287
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 283
    :pswitch_d
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v0}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan(Z)Z

    goto :goto_c

    .line 281
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 235
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_e

    const-string v0, "WimaxSettings"

    const-string v1, "[onPause] Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_20

    .line 238
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->pause()V

    .line 240
    :cond_20
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 298
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_25

    const-string v0, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick called for Preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_25
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6d

    .line 300
    const-string v3, "WimaxSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick called for Preference: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wimax_networks_available_notification_on"

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_49
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wimax_networks_available_notification_on"

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_91

    :goto_6a
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    :cond_6d
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 307
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    :cond_8e
    return v2

    :cond_8f
    move v0, v2

    .line 300
    goto :goto_49

    :cond_91
    move v1, v2

    .line 301
    goto :goto_6a
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 270
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 274
    :goto_13
    return-void

    .line 273
    :cond_14
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_13
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 216
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_e

    const-string v0, "WimaxSettings"

    const-string v1, "[onResume] called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_28

    .line 220
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->resume()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_28
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 227
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxStateDetail()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStatusChanged(II)V

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 599
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 600
    .local v0, info:Landroid/net/DhcpInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 602
    .local v1, str:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0865

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0866

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0867

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    iget v2, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0868

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    iget v2, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 610
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_c5

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wimax Connected getDhcpInfo toString :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_c5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateIdleWimaxSignal(I)V
    .registers 7
    .parameter "stateDetail"

    .prologue
    .line 516
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    .line 517
    .local v1, state:Landroid/net/fourG/wimax/WimaxState;
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_22

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateIdleWimaxSignal]  extraStateDetail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_22
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_32

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_32

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_32

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_4b

    .line 520
    :cond_32
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4b

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wimax/WimaxNetworkPreference;

    .line 522
    .local v0, pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    if-eqz v0, :cond_4b

    invoke-virtual {v0, p1}, Lcom/android/settings/wimax/WimaxNetworkPreference;->updateIdleSignalLevelIcon(I)V

    .line 525
    .end local v0           #pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    :cond_4b
    return-void
.end method

.method public updateWimaxSignalLevel(I)V
    .registers 7
    .parameter "signalLevel"

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    .line 495
    .local v1, state:Landroid/net/fourG/wimax/WimaxState;
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_2c

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateWimaxSignalInfo]  Wimax intent signal level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WiMAX State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_2c
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3c

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3c

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3c

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_a4

    .line 499
    :cond_3c
    const/4 v2, 0x3

    if-le p1, v2, :cond_62

    .line 500
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_61

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateWimaxSignalInfo]  SignalLevel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is too big."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_61
    const/4 p1, 0x3

    .line 503
    :cond_62
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    .line 505
    iget v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    iget v3, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->updateWimaxSignal(II)V

    .line 507
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_89

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateWimaxSignalInfo]  Wimax signal changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_89
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_a4

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wimax/WimaxNetworkPreference;

    .line 510
    .local v0, pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    if-eqz v0, :cond_a4

    iget v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    invoke-virtual {v0, v2}, Lcom/android/settings/wimax/WimaxNetworkPreference;->updateWimaxSignalLevelIcon(I)V

    .line 513
    .end local v0           #pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    :cond_a4
    return-void
.end method
