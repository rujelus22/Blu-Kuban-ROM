.class public Lcom/android/sprintmenu/EVDO_Edit;
.super Landroid/preference/PreferenceActivity;
.source "EVDO_Edit.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private DDTMPrefString:[Ljava/lang/String;

.field private DDTMPrefvalues:[Ljava/lang/String;

.field private DDTM_Pref:Landroid/preference/ListPreference;

.field private mDDTMHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;

.field private savedInstanceState:Landroid/os/Bundle;

.field private tmpDDTM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/android/sprintmenu/EVDO_Edit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/EVDO_Edit;->LOG_TAG:Ljava/lang/String;

    .line 43
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/EVDO_Edit;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "OFF"

    aput-object v1, v0, v2

    const-string v1, "ON"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTMPrefString:[Ljava/lang/String;

    .line 33
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTMPrefvalues:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_Edit;->tmpDDTM:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/sprintmenu/EVDO_Edit$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/EVDO_Edit$1;-><init>(Lcom/android/sprintmenu/EVDO_Edit;)V

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_Edit;->mDDTMHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/sprintmenu/EVDO_Edit;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/EVDO_Edit;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 51
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 52
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/EVDO_Edit;->sNotSet:Ljava/lang/String;

    .line 54
    .end local p1
    :cond_a
    return-object p1
.end method

.method private getDDTMData()V
    .registers 9

    .prologue
    const/16 v7, 0x17

    .line 134
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 139
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    const/16 v4, 0x17

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 141
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_2b

    .line 147
    iget-object v4, p0, Lcom/android/sprintmenu/EVDO_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/EVDO_Edit;->mDDTMHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 148
    :goto_2a
    return-void

    .line 142
    :catch_2b
    move-exception v2

    .line 143
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/sprintmenu/EVDO_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getDDTMData exception occured during operation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private handleDDTMChange(Landroid/content/SharedPreferences;Ljava/lang/Object;)V
    .registers 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 58
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 59
    .local v0, buttonDDTMMode:B
    invoke-direct {p0, v0}, Lcom/android/sprintmenu/EVDO_Edit;->setDDTMData(B)V

    .line 60
    return-void
.end method

.method private setDDTMData(B)V
    .registers 10
    .parameter "value"

    .prologue
    const/16 v7, 0x18

    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 155
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 158
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_46

    .line 164
    iget-object v4, p0, Lcom/android/sprintmenu/EVDO_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/EVDO_Edit;->mDDTMHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 165
    iget-object v4, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 166
    iget-object v5, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    if-ne p1, v4, :cond_4f

    const v4, 0x7f05001e

    invoke-virtual {p0, v4}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_42
    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :goto_45
    return-void

    .line 159
    :catch_46
    move-exception v2

    .line 160
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/sprintmenu/EVDO_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v5, "setDDTMData exception occured during operation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 166
    .end local v2           #e:Ljava/io/IOException;
    :cond_4f
    const v4, 0x7f05001d

    invoke-virtual {p0, v4}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_42
.end method

.method private updatePreference()V
    .registers 2

    .prologue
    .line 129
    const-string v0, "ON"

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_Edit;->tmpDDTM:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/android/sprintmenu/EVDO_Edit;->getDDTMData()V

    .line 132
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0500ab

    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget-object v2, Lcom/android/sprintmenu/EVDO_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    new-instance v2, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 99
    invoke-direct {p0}, Lcom/android/sprintmenu/EVDO_Edit;->updatePreference()V

    .line 101
    invoke-virtual {p0}, Lcom/android/sprintmenu/EVDO_Edit;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 104
    .local v1, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v2, 0x7f0500aa

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 106
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    .line 109
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTMPrefString:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTMPrefvalues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 112
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    const-string v3, "DDTM_modekey"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 114
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit;->tmpDDTM:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/EVDO_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit;->tmpDDTM:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/EVDO_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 116
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/EVDO_Edit;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 123
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/sprintmenu/EVDO_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 217
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/android/sprintmenu/EVDO_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 210
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 62
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/EVDO_Edit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 66
    .local v1, pref:Landroid/preference/Preference;
    sget-object v2, Lcom/android/sprintmenu/EVDO_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz v1, :cond_5a

    .line 71
    const v2, 0x7f0500ab

    :try_start_21
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 74
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/EVDO_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->tmpDDTM:Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/android/sprintmenu/EVDO_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDTM is Set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/EVDO_Edit;->tmpDDTM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->tmpDDTM:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/sprintmenu/EVDO_Edit;->handleDDTMChange(Landroid/content/SharedPreferences;Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5a} :catch_5b

    .line 88
    :cond_5a
    :goto_5a
    return-void

    .line 82
    :catch_5b
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v2, "Invalid Input, Try again"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 85
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_Edit;->savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/EVDO_Edit;->onCreate(Landroid/os/Bundle;)V

    goto :goto_5a
.end method
