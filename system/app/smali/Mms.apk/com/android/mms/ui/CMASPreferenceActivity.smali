.class public Lcom/android/mms/ui/CMASPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CMASPreferenceActivity.java"


# instance fields
.field private cmasPreviewDialog:Lcom/android/mms/ui/CmasPreviewDialog;

.field private isPlaying:Z

.field private mplayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isPlaying:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASPreferenceActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->showCmasPreviewDialog()V

    return-void
.end method

.method private showCmasPreviewDialog()V
    .registers 2

    .prologue
    .line 177
    new-instance v0, Lcom/android/mms/ui/CmasPreviewDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CmasPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CmasPreviewDialog;

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CmasPreviewDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CmasPreviewDialog;->show()V

    .line 179
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASPreferenceActivity;->addPreferencesFromResource(I)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "pref_emergency_alert"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 76
    .local v1, mCheckBox:Landroid/preference/Preference;
    new-instance v3, Lcom/android/mms/ui/CMASPreferenceActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/android/mms/ui/CMASPreferenceActivity$1;-><init>(Lcom/android/mms/ui/CMASPreferenceActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    const-string v3, "pref_key_emergency_alert_preview"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 127
    .local v0, mAlertPreview:Landroid/preference/Preference;
    new-instance v3, Lcom/android/mms/ui/CMASPreferenceActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/CMASPreferenceActivity$2;-><init>(Lcom/android/mms/ui/CMASPreferenceActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 168
    const-string v0, "CMASPreferenceActivity"

    const-string v1, "CMAS onKeyDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v0, 0x54

    if-ne p1, v0, :cond_14

    .line 170
    const-string v0, "CMASPreferenceActivity"

    const-string v1, "CMAS KEYCODE_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 139
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CmasPreviewDialog;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CmasPreviewDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/CmasPreviewDialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CmasPreviewDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/CmasPreviewDialog;->dismiss()V

    .line 144
    :cond_25
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3b

    .line 145
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 146
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 147
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 150
    :cond_3b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isPlaying:Z

    .line 151
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 163
    :cond_1a
    return-void
.end method
