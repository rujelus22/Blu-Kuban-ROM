.class public Lcom/android/sprintmenu/EVDO_View;
.super Landroid/preference/PreferenceActivity;
.source "EVDO_View.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private DDTM_Pref:Landroid/preference/Preference;

.field private mDDTMHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;

.field private savedInstanceState:Landroid/os/Bundle;

.field private tmpDDTM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/android/sprintmenu/EVDO_View;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/EVDO_View;->LOG_TAG:Ljava/lang/String;

    .line 40
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/EVDO_View;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_View;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_View;->tmpDDTM:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/android/sprintmenu/EVDO_View$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/EVDO_View$1;-><init>(Lcom/android/sprintmenu/EVDO_View;)V

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_View;->mDDTMHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/sprintmenu/EVDO_View;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/EVDO_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/sprintmenu/EVDO_View;->DDTM_Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 46
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 47
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/EVDO_View;->sNotSet:Ljava/lang/String;

    .line 49
    .end local p1
    :cond_a
    return-object p1
.end method

.method private getDDTMData()V
    .registers 9

    .prologue
    const/16 v7, 0x17

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 124
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 125
    const/16 v4, 0x17

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 126
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_2b

    .line 132
    iget-object v4, p0, Lcom/android/sprintmenu/EVDO_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/EVDO_View;->mDDTMHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 133
    :goto_2a
    return-void

    .line 127
    :catch_2b
    move-exception v2

    .line 128
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/sprintmenu/EVDO_View;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getDDTMData exception occured during operation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private updatePreference()V
    .registers 2

    .prologue
    .line 167
    const-string v0, "On"

    iput-object v0, p0, Lcom/android/sprintmenu/EVDO_View;->tmpDDTM:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/android/sprintmenu/EVDO_View;->getDDTMData()V

    .line 171
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget-object v2, Lcom/android/sprintmenu/EVDO_View;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v2, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 96
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    invoke-virtual {p0}, Lcom/android/sprintmenu/EVDO_View;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 102
    .local v1, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v2, 0x7f0500aa

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 106
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->DDTM_Pref:Landroid/preference/Preference;

    .line 107
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->DDTM_Pref:Landroid/preference/Preference;

    const v3, 0x7f0500ab

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 108
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->DDTM_Pref:Landroid/preference/Preference;

    const-string v3, "DDTM_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->DDTM_Pref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_View;->tmpDDTM:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/EVDO_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->DDTM_Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 112
    invoke-direct {p0}, Lcom/android/sprintmenu/EVDO_View;->updatePreference()V

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/EVDO_View;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 116
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/sprintmenu/EVDO_View;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 185
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/android/sprintmenu/EVDO_View;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 178
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 54
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/EVDO_View;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 58
    .local v1, pref:Landroid/preference/Preference;
    sget-object v2, Lcom/android/sprintmenu/EVDO_View;->LOG_TAG:Ljava/lang/String;

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

    .line 60
    if-eqz v1, :cond_47

    .line 63
    const v2, 0x7f0500ab

    :try_start_21
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/EVDO_View;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 65
    sget-object v2, Lcom/android/sprintmenu/EVDO_View;->LOG_TAG:Ljava/lang/String;

    const-string v3, "DDTM is Set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/EVDO_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->tmpDDTM:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->tmpDDTM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_47} :catch_48

    .line 87
    :cond_47
    :goto_47
    return-void

    .line 82
    :catch_48
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Invalid Input, Try again"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v2, p0, Lcom/android/sprintmenu/EVDO_View;->savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/EVDO_View;->onCreate(Landroid/os/Bundle;)V

    goto :goto_47
.end method
