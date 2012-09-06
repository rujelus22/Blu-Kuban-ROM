.class public Lcom/google/tts/OldPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "OldPrefsActivity.java"


# static fields
.field private static final TTS_VOICE_DATA_CHECK_CODE:I = 0x2a

.field private static final TTS_VOICE_DATA_INSTALL_CODE:I = 0x2b


# instance fields
.field private hellos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myTts:Lcom/google/tts/TTS;

.field private ttsInitListener:Lcom/google/tts/TTS$InitListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/google/tts/OldPrefsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/tts/OldPrefsActivity$1;-><init>(Lcom/google/tts/OldPrefsActivity;)V

    iput-object v0, p0, Lcom/google/tts/OldPrefsActivity;->ttsInitListener:Lcom/google/tts/TTS$InitListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/google/tts/OldPrefsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/tts/OldPrefsActivity;->loadEngines()V

    return-void
.end method

.method static synthetic access$1(Lcom/google/tts/OldPrefsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/tts/OldPrefsActivity;->loadHellos()V

    return-void
.end method

.method static synthetic access$2(Lcom/google/tts/OldPrefsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/tts/OldPrefsActivity;->sayHello()V

    return-void
.end method

.method private loadEngines()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 51
    const-string v7, "engine_pref"

    invoke-virtual {p0, v7}, Lcom/google/tts/OldPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 53
    .local v1, enginesPref:Landroid/preference/ListPreference;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.START_TTS_ENGINE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v4, intent:Landroid/content/Intent;
    new-array v0, v8, [Landroid/content/pm/ResolveInfo;

    .line 56
    .local v0, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/google/tts/OldPrefsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 57
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v0, [Landroid/content/pm/ResolveInfo;

    .line 59
    .restart local v0       #enginesArray:[Landroid/content/pm/ResolveInfo;
    array-length v7, v0

    new-array v2, v7, [Ljava/lang/CharSequence;

    .line 60
    .local v2, entries:[Ljava/lang/CharSequence;
    array-length v7, v0

    new-array v6, v7, [Ljava/lang/CharSequence;

    .line 61
    .local v6, values:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    array-length v7, v0

    if-lt v3, v7, :cond_39

    .line 65
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 71
    new-instance v7, Lcom/google/tts/OldPrefsActivity$2;

    invoke-direct {v7, p0}, Lcom/google/tts/OldPrefsActivity$2;-><init>(Lcom/google/tts/OldPrefsActivity;)V

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    return-void

    .line 62
    :cond_39
    aget-object v7, v0, v3

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v2, v3

    .line 63
    aget-object v7, v0, v3

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_27
.end method

.method private loadHellos()V
    .registers 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    .line 88
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "afr"

    const v2, 0x7f070042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "bos"

    const v2, 0x7f070043

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "yue"

    const v2, 0x7f070044

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "cmn"

    const v2, 0x7f070045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "hrv"

    const v2, 0x7f070046

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "ces"

    const v2, 0x7f070047

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "nld"

    const v2, 0x7f070048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "eng-USA"

    const v2, 0x7f070049

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "eng-GBR"

    const v2, 0x7f07004a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "epo"

    const v2, 0x7f07004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "fin"

    const v2, 0x7f07004c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "fra"

    const v2, 0x7f07004d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "deu"

    const v2, 0x7f07004e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "ell"

    const v2, 0x7f07004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "hin"

    const v2, 0x7f070050

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "hun"

    const v2, 0x7f070051

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "isl"

    const v2, 0x7f070052

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "ind"

    const v2, 0x7f070053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "ita"

    const v2, 0x7f070054

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "kur"

    const v2, 0x7f070055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "lat"

    const v2, 0x7f070056

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "mkd"

    const v2, 0x7f070057

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "nor"

    const v2, 0x7f070058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "pol"

    const v2, 0x7f070059

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "por"

    const v2, 0x7f07005a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "ron"

    const v2, 0x7f07005b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "rus"

    const v2, 0x7f07005c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "srp"

    const v2, 0x7f07005d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "slk"

    const v2, 0x7f07005e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "spa"

    const v2, 0x7f07005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "spa-MEX"

    const v2, 0x7f070060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "swe"

    const v2, 0x7f070061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "swe"

    const v2, 0x7f070062

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "tam"

    const v2, 0x7f070063

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "tur"

    const v2, 0x7f070064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "vie"

    const v2, 0x7f070065

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    const-string v1, "cym"

    const v2, 0x7f070066

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method private sayHello()V
    .registers 10

    .prologue
    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 130
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v0, "com.svox.pico"

    .line 131
    .local v0, DEFAULT_TTS_BINARY:Ljava/lang/String;
    const-string v6, "engine_pref"

    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, engine:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/tts/OldPrefsActivity;->myTts:Lcom/google/tts/TTS;

    invoke-virtual {v6, v1}, Lcom/google/tts/TTS;->setEngine(Ljava/lang/String;)V

    .line 134
    const-string v6, "lang_pref"

    const-string v7, "eng-USA"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, languageCode:Ljava/lang/String;
    const-string v6, "rate_pref"

    const-string v7, "140"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 137
    .local v5, rate:I
    iget-object v6, p0, Lcom/google/tts/OldPrefsActivity;->myTts:Lcom/google/tts/TTS;

    invoke-virtual {v6, v3}, Lcom/google/tts/TTS;->setLanguage(Ljava/lang/String;)V

    .line 138
    iget-object v6, p0, Lcom/google/tts/OldPrefsActivity;->myTts:Lcom/google/tts/TTS;

    invoke-virtual {v6, v5}, Lcom/google/tts/TTS;->setSpeechRate(I)V

    .line 139
    iget-object v6, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 140
    const-string v3, "eng-USA"

    .line 142
    :cond_39
    iget-object v6, p0, Lcom/google/tts/OldPrefsActivity;->hellos:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/tts/OldPrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, hello:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/tts/OldPrefsActivity;->myTts:Lcom/google/tts/TTS;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/google/tts/TTS;->speak(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 182
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_1d

    .line 183
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "com.svox.pico"

    const-string v2, "com.svox.pico.DownloadVoiceData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Lcom/google/tts/OldPrefsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/tts/OldPrefsActivity;->setVolumeControlStream(I)V

    .line 32
    new-instance v0, Lcom/google/tts/TTS;

    iget-object v1, p0, Lcom/google/tts/OldPrefsActivity;->ttsInitListener:Lcom/google/tts/TTS$InitListener;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/tts/TTS;-><init>(Landroid/content/Context;Lcom/google/tts/TTS$InitListener;Z)V

    iput-object v0, p0, Lcom/google/tts/OldPrefsActivity;->myTts:Lcom/google/tts/TTS;

    .line 33
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const v3, 0x7f070002

    const v0, 0x7f070001

    const/4 v2, 0x0

    .line 149
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 150
    invoke-interface {p1, v2, v3, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 151
    const v1, 0x1080041

    .line 150
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->myTts:Lcom/google/tts/TTS;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity;->myTts:Lcom/google/tts/TTS;

    invoke-virtual {v0}, Lcom/google/tts/TTS;->shutdown()V

    .line 197
    :cond_9
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 198
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 161
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_42

    .line 176
    :goto_22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 166
    :pswitch_27
    const-string v3, "http://eyes-free.googlecode.com/svn/trunk/documentation/tts_apps.html"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 167
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/tts/OldPrefsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    .line 171
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_34
    const-string v3, "http://eyes-free.googlecode.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 172
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v1}, Lcom/google/tts/OldPrefsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    .line 164
    nop

    :pswitch_data_42
    .packed-switch 0x7f070001
        :pswitch_27
        :pswitch_34
    .end packed-switch
.end method
