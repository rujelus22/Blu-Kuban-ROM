.class public Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;
.super Landroid/preference/PreferenceActivity;
.source "OMADM_Settings_2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;,
        Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;,
        Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;,
        Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;,
        Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;,
        Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;
    }
.end annotation


# instance fields
.field private final ProductionConfig:I

.field private final SCTSConfig:I

.field private final SprintLabConfig:I

.field private final list_name:[Ljava/lang/String;

.field private final list_name_phone_config:[Ljava/lang/String;

.field private final list_value:[Ljava/lang/String;

.field private final list_value_phone_config:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

.field myCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    iput-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 39
    iput-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->myCtx:Landroid/content/Context;

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Slot 0"

    aput-object v1, v0, v2

    const-string v1, "Slot 1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_name:[Ljava/lang/String;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value:[Ljava/lang/String;

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Production"

    aput-object v1, v0, v2

    const-string v1, "SCTS SIDI"

    aput-object v1, v0, v3

    const-string v1, "STIC Lab"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_name_phone_config:[Ljava/lang/String;

    .line 45
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value_phone_config:[Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->ProductionConfig:I

    .line 47
    iput v3, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->SCTSConfig:I

    .line 48
    iput v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->SprintLabConfig:I

    .line 50
    iput-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    .line 51
    iput-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    .line 74
    new-instance v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$1;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->generateCredIPC()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->restoreIPC()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setProdConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setSCTSConfig()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setSprintLabConfig()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 91
    .local v5, settingsPrefs:Landroid/preference/PreferenceScreen;
    const-string v10, "DMAPP_STATE"

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 96
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 97
    .local v0, cred:Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.PasswordNonceSettings"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, i:Landroid/content/Intent;
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 100
    const v10, 0x7f050058

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 101
    const-string v10, "View/Edit Server/Client Password/Nonce"

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    new-instance v7, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;

    invoke-direct {v7, p0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V

    .line 106
    .local v7, togglePref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;
    const-string v10, "toggle_preference"

    invoke-virtual {v7, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;->setKey(Ljava/lang/String;)V

    .line 107
    const v10, 0x7f050059

    invoke-virtual {v7, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;->setTitle(I)V

    .line 108
    const-string v10, "Enable/Disable Logging in DM Core"

    invoke-virtual {v7, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    const-string v10, "Log_Enabled"

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 110
    invoke-virtual {v7, v13}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$DMLogger;->setChecked(Z)V

    .line 112
    :cond_57
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 116
    .local v8, wap:Landroid/preference/PreferenceScreen;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.WapPushSimulation"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v9, wapIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 118
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 119
    const v10, 0x7f05005a

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 120
    const-string v10, "Set UI mode & Session Id and simulate WAP PUSH"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 124
    new-instance v1, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;

    invoke-direct {v1, p0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V

    .line 125
    .local v1, genCred:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;
    const v10, 0x7f05005b

    invoke-virtual {v1, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;->setTitle(I)V

    .line 126
    const-string v10, "Press to Generate Credentials"

    invoke-virtual {v1, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 130
    new-instance v4, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;

    invoke-direct {v4, p0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V

    .line 131
    .local v4, restore:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;
    const v10, 0x7f05005c

    invoke-virtual {v4, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->setTitle(I)V

    .line 132
    const-string v10, "Press to restore default OMADM settings"

    invoke-virtual {v4, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 136
    new-instance v10, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    invoke-direct {v10, p0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    .line 137
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    const-string v11, "proxy_preference"

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->setKey(Ljava/lang/String;)V

    .line 138
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    const v11, 0x7f05005d

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->setTitle(I)V

    .line 139
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    const-string v11, "Enable/Disable Connection to Proxy Server"

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    const-string v10, "Proxy_Enabled"

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 141
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    invoke-virtual {v10, v13}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->setChecked(Z)V

    .line 143
    :cond_d0
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 146
    new-instance v10, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    invoke-direct {v10, p0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    .line 147
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    iget-object v11, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_name:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 148
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    iget-object v11, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 149
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    const-string v11, "Choose active MIP slot"

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    const-string v11, "slot_preference"

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setKey(Ljava/lang/String;)V

    .line 151
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    const v11, 0x7f05005e

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setTitle(I)V

    .line 152
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    const-string v11, "Select the active MIP slot to use for OMADM session"

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    const-string v10, "Active_Slot"

    const/4 v11, -0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_14d

    .line 154
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    iget-object v11, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setValue(Ljava/lang/String;)V

    .line 158
    :goto_119
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    const-string v10, "OMADM_Settings_2"

    const-string v11, "Adding SCTS Sidi Config"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v3, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;

    invoke-direct {v3, p0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V

    .line 163
    .local v3, phoneConfig:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_name_phone_config:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->setEntries([Ljava/lang/CharSequence;)V

    .line 164
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value_phone_config:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 165
    const-string v10, "Choose phone settings"

    invoke-virtual {v3, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 166
    const-string v10, "phone_config_preference"

    invoke-virtual {v3, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->setKey(Ljava/lang/String;)V

    .line 167
    const v10, 0x7f050061

    invoke-virtual {v3, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->setTitle(I)V

    .line 168
    const-string v10, "OMADM settings: STIC Prod/SCTS-SIDI/STIC Lab"

    invoke-virtual {v3, v10}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    return-object v5

    .line 156
    .end local v3           #phoneConfig:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$TestOmadmSettings;
    :cond_14d
    iget-object v10, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    iget-object v11, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setValue(Ljava/lang/String;)V

    goto :goto_119
.end method

.method private generateCredIPC()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 313
    const-string v0, "OMADM_Settings_2"

    const-string v1, "generateCredIPC()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-array v6, v2, [B

    aput-byte v2, v6, v5

    .line 315
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 316
    .local v3, data:Ljava/lang/String;
    new-array v7, v2, [B

    aput-byte v2, v7, v5

    .line 317
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 318
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x14

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7da

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 321
    return-void
.end method

.method private restoreIPC()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 353
    const-string v0, "OMADM_Settings_2"

    const-string v1, "restoreIPC()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-array v6, v2, [B

    aput-byte v2, v6, v5

    .line 355
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 356
    .local v3, data:Ljava/lang/String;
    new-array v7, v2, [B

    aput-byte v2, v7, v5

    .line 357
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 358
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x15

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7da

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 361
    return-void
.end method

.method private setProdConfig()V
    .registers 18

    .prologue
    .line 399
    const-string v1, "OMADM_Settings_2"

    const-string v2, "setProdConfig():Set Korean Mode to off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v13, -0x1

    .line 403
    .local v13, mode_ID:B
    const-string v1, "net.cdma.configurable.mode"

    invoke-static {v13}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://telephony_cdma/cdma_carriers/restore"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 406
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 407
    .local v7, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 411
    .local v9, dos:Ljava/io/DataOutputStream;
    const/4 v12, 0x5

    .line 412
    .local v12, fileSize:I
    const/16 v1, 0x51

    :try_start_2d
    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 413
    const/16 v1, 0x13

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 414
    invoke-virtual {v9, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 416
    invoke-virtual {v9, v13}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_116

    .line 424
    const-string v1, "OMADM_Settings_2"

    const-string v2, "setProdConfig():SendRILRequest:KoreanMode=off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7da

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 428
    const-string v1, "OMADM_Settings_2"

    const-string v2, "setProdConfig():Enable DNS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 432
    const-string v1, "OMADM_Settings_2"

    const-string v2, "setProdConfig():Activate Slot and Enable proxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->myCtx:Landroid/content/Context;

    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 434
    .local v15, sp:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 435
    .local v11, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Active_Slot"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 436
    const-string v1, "Proxy_Enabled"

    const/4 v2, 0x1

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setValue(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->setChecked(Z)V

    .line 440
    const-string v1, "OMADM_Settings_2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProdConfig():Active Slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Active_Slot"

    const/4 v6, -0x1

    invoke-interface {v15, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v1, "OMADM_Settings_2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProdConfig():Proxy enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Proxy_Enabled"

    const/4 v6, 0x0

    invoke-interface {v15, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v1, 0x1

    new-array v8, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v8, v1

    .line 445
    .local v8, byteMsg:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 446
    .local v4, data:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v14, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v14, v1

    .line 447
    .local v14, msgLen:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v14}, Ljava/lang/String;-><init>([B)V

    .line 448
    .local v5, len:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, -0x78

    const/16 v3, 0xc

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x7da

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 452
    const-string v1, "OMADM_Settings_2"

    const-string v2, "setProdConfig()-End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v4           #data:Ljava/lang/String;
    .end local v5           #len:Ljava/lang/String;
    .end local v8           #byteMsg:[B
    .end local v11           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v14           #msgLen:[B
    .end local v15           #sp:Landroid/content/SharedPreferences;
    :goto_115
    return-void

    .line 418
    :catch_116
    move-exception v10

    .line 420
    .local v10, e:Ljava/io/IOException;
    const-string v1, "OMADM_Settings_2"

    const-string v2, "setProdConfig():FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115
.end method

.method private setSCTSConfig()V
    .registers 21

    .prologue
    .line 473
    const-string v2, "OMADM_Settings_2"

    const-string v3, "setSCTSConfig():Set Korean Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v14, 0x0

    .line 477
    .local v14, korean_mode_ID:B
    const-string v2, "net.cdma.configurable.mode"

    invoke-static {v14}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget-object v2, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v3, 0x1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 479
    .local v17, url:Landroid/net/Uri;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "SK Telecom"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v2, "user"

    const-string v3, "sktelecom"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v2, "password"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v2, "auth"

    const-string v3, "pap"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "proxy"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "port"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 489
    .local v8, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 493
    .local v10, dos:Ljava/io/DataOutputStream;
    const/4 v13, 0x5

    .line 494
    .local v13, fileSize:I
    const/16 v2, 0x51

    :try_start_6e
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 495
    const/16 v2, 0x13

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 496
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 499
    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7c} :catch_15b

    .line 507
    const-string v2, "OMADM_Settings_2"

    const-string v3, "setSCTSConfig():SendRILRequest:KoreanMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7da

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 512
    const-string v2, "OMADM_Settings_2"

    const-string v3, "setSCTSConfig():Disable DNS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 516
    const-string v2, "OMADM_Settings_2"

    const-string v3, "setSCTSConfig():Activate Slot and Disable proxy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->myCtx:Landroid/content/Context;

    const-string v3, "DMAPP_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 519
    .local v16, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 520
    .local v12, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Active_Slot"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 521
    const-string v2, "Proxy_Enabled"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mListPref:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->list_value:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->setValue(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPrxy:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->setChecked(Z)V

    .line 525
    const-string v2, "OMADM_Settings_2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSCTSConfig():Active Slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Active_Slot"

    const/4 v7, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v2, "OMADM_Settings_2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSCTSConfig():Proxy enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Proxy_Enabled"

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v2, 0x1

    new-array v9, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v9, v2

    .line 530
    .local v9, byteMsg:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V

    .line 531
    .local v5, data:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v15, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v15, v2

    .line 532
    .local v15, msgLen:[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/lang/String;-><init>([B)V

    .line 533
    .local v6, len:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, -0x78

    const/16 v4, 0xc

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v19, 0x7da

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 537
    const-string v2, "OMADM_Settings_2"

    const-string v3, "setSCTSConfig()-End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v5           #data:Ljava/lang/String;
    .end local v6           #len:Ljava/lang/String;
    .end local v9           #byteMsg:[B
    .end local v12           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v15           #msgLen:[B
    .end local v16           #sp:Landroid/content/SharedPreferences;
    :goto_15a
    return-void

    .line 501
    :catch_15b
    move-exception v11

    .line 503
    .local v11, e:Ljava/io/IOException;
    const-string v2, "OMADM_Settings_2"

    const-string v3, "setSCTSConfig():FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15a
.end method

.method private setSprintLabConfig()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 457
    const-string v0, "OMADM_Settings_2"

    const-string v1, "Begin: setSprintLabConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setProdConfig()V

    .line 463
    new-array v6, v2, [B

    const/4 v0, 0x2

    aput-byte v0, v6, v5

    .line 464
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 465
    .local v3, data:Ljava/lang/String;
    new-array v7, v2, [B

    aput-byte v2, v7, v5

    .line 466
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 467
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, -0x78

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7da

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 470
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 58
    iput-object p0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->myCtx:Landroid/content/Context;

    .line 59
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d9

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForOmaDmSendData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 71
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForOmaDmSendData(Landroid/os/Handler;)V

    .line 72
    return-void
.end method
