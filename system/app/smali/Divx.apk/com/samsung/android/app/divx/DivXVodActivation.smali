.class public Lcom/samsung/android/app/divx/DivXVodActivation;
.super Landroid/preference/PreferenceActivity;
.source "DivXVodActivation.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static m_CorruptedDrmMessage:Ljava/lang/String;

.field private static m_DeRegCodeMessage:Ljava/lang/String;

.field private static m_ExpiredRantalDrmMessage:Ljava/lang/String;

.field private static m_NotRegDevice:Ljava/lang/String;

.field private static m_QuestionAboutDeReg:Ljava/lang/String;

.field private static m_ReRegMessage:Ljava/lang/String;

.field private static m_RegInfo:Ljava/lang/String;


# instance fields
.field private divxvoidPreference:Landroid/preference/Preference;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-string v0, "You must register your phone to play DivX protected videos. Your registration code is: "

    sput-object v0, Lcom/samsung/android/app/divx/DivXVodActivation;->m_NotRegDevice:Ljava/lang/String;

    .line 68
    const-string v0, "Register at\nhttp://vod.divx.com"

    sput-object v0, Lcom/samsung/android/app/divx/DivXVodActivation;->m_RegInfo:Ljava/lang/String;

    .line 69
    const-string v0, "Your phone is registered. Are you sure you wish to deregister?"

    sput-object v0, Lcom/samsung/android/app/divx/DivXVodActivation;->m_QuestionAboutDeReg:Ljava/lang/String;

    .line 70
    const-string v0, "Your deregistration code was: "

    sput-object v0, Lcom/samsung/android/app/divx/DivXVodActivation;->m_DeRegCodeMessage:Ljava/lang/String;

    .line 71
    const-string v0, ". Choose OK to register again"

    sput-object v0, Lcom/samsung/android/app/divx/DivXVodActivation;->m_ReRegMessage:Ljava/lang/String;

    .line 72
    const-string v0, "DRM is corrupted"

    sput-object v0, Lcom/samsung/android/app/divx/DivXVodActivation;->m_CorruptedDrmMessage:Ljava/lang/String;

    .line 73
    const-string v0, "DRM Rental has been expired."

    sput-object v0, Lcom/samsung/android/app/divx/DivXVodActivation;->m_ExpiredRantalDrmMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private expiryReminder(Z)V
    .registers 2
    .parameter "isChecked"

    .prologue
    .line 203
    return-void
.end method

.method private transferTracking(Z)V
    .registers 2
    .parameter "isChecked"

    .prologue
    .line 183
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/divx/DivXVodActivation;->addPreferencesFromResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/divx/DivXVodActivation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/divx/DivXVodActivation;->mPreferences:Landroid/content/SharedPreferences;

    .line 114
    const-string v0, "DivxVoid"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/divx/DivXVodActivation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/divx/DivXVodActivation;->divxvoidPreference:Landroid/preference/Preference;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivXVodActivation;->divxvoidPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/samsung/android/app/divx/DivXVodActivation$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/divx/DivXVodActivation$1;-><init>(Lcom/samsung/android/app/divx/DivXVodActivation;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 405
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 406
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 147
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v0, "expiryStatus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivXVodActivation;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "expiryStatus"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/divx/DivXVodActivation;->expiryReminder(Z)V

    .line 156
    :cond_14
    :goto_14
    return-void

    .line 153
    :cond_15
    const-string v0, "transferStatus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivXVodActivation;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "transferStatus"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/divx/DivXVodActivation;->transferTracking(Z)V

    goto :goto_14
.end method
