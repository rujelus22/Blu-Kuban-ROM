.class public Lcom/google/android/apps/googlevoice/UpdateIntervalPreference;
.super Landroid/preference/Preference;
.source "UpdateIntervalPreference.java"


# instance fields
.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalPreference;->prepare()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalPreference;->prepare()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalPreference;->prepare()V

    .line 24
    return-void
.end method

.method private prepare()V
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalPreference;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 38
    return-void
.end method


# virtual methods
.method public shouldDisableDependents()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalPreference;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUpdateIntervalSeconds()I

    move-result v3

    if-lez v3, :cond_10

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_10
    move v0, v2

    .line 44
    .local v0, result:Z
    :goto_11
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_38

    .line 45
    const-string v3, "%s: interval is %d, returning %b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "UpdateIntervalPreference.shouldDisableDependents"

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalPreference;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUpdateIntervalSeconds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 50
    :cond_38
    return v0

    .end local v0           #result:Z
    :cond_39
    move v0, v1

    .line 42
    goto :goto_11
.end method
