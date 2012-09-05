.class public Lcom/swype/android/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/SettingsManager$Key;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final context:Landroid/content/Context;

.field private final core:Lcom/swype/android/jni/SwypeCore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/swype/android/settings/SettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/swype/android/settings/SettingsManager;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/swype/android/jni/SwypeCore;)V
    .registers 4
    .parameter "ctx"
    .parameter "core"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/SettingsManager;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/swype/android/settings/SettingsManager;->core:Lcom/swype/android/jni/SwypeCore;

    .line 17
    return-void
.end method

.method private loadPreferences()[I
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v2, p0, Lcom/swype/android/settings/SettingsManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/swype/android/settings/SettingsManager$Key;->values()[Lcom/swype/android/settings/SettingsManager$Key;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 63
    .local v1, values:[I
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v6}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-nez v3, :cond_160

    move v3, v6

    :goto_1c
    aput v3, v1, v2

    .line 64
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->wordCompletion:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->wordCompletion:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_163

    move v3, v6

    :goto_2b
    aput v3, v1, v2

    .line 65
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableRubbing:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableRubbing:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_166

    move v3, v6

    :goto_3a
    aput v3, v1, v2

    .line 66
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableTipIndicator:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableTipIndicator:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_169

    move v3, v6

    :goto_49
    aput v3, v1, v2

    .line 67
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showBlueChars:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->showBlueChars:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_16c

    move v3, v6

    :goto_58
    aput v3, v1, v2

    .line 68
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->trackStats:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->trackStats:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_16f

    move v3, v6

    :goto_67
    aput v3, v1, v2

    .line 69
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->useSwypeTapLayout:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->useSwypeTapLayout:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_172

    move v3, v6

    :goto_76
    aput v3, v1, v2

    .line 70
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->displayTraceBool:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->displayTraceBool:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_175

    move v3, v6

    :goto_85
    aput v3, v1, v2

    .line 71
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_178

    move v3, v6

    :goto_94
    aput v3, v1, v2

    .line 72
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showWCW:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->showWCW:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getInt(Landroid/content/SharedPreferences;I)I

    move-result v3

    aput v3, v1, v2

    .line 73
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->z1Operation:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->z1Operation:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getInt(Landroid/content/SharedPreferences;I)I

    move-result v3

    aput v3, v1, v2

    .line 74
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->defaultWordTimeout:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->defaultWordTimeout:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getInt(Landroid/content/SharedPreferences;I)I

    move-result v3

    aput v3, v1, v2

    .line 75
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_17b

    move v3, v6

    :goto_c7
    aput v3, v1, v2

    .line 76
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_17e

    move v3, v6

    :goto_d6
    aput v3, v1, v2

    .line 77
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Lcom/swype/android/settings/SettingsManager$Key;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 78
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->wordSuggestionMaster:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->wordSuggestionMaster:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v6}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_181

    move v3, v6

    :goto_f7
    aput v3, v1, v2

    .line 79
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v6}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_184

    move v3, v6

    :goto_106
    aput v3, v1, v2

    .line 80
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v6}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_186

    move v3, v6

    :goto_115
    aput v3, v1, v2

    .line 81
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v6}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_188

    move v3, v6

    :goto_124
    aput v3, v1, v2

    .line 82
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->z1OperationDefault:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->z1OperationDefault:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getInt(Landroid/content/SharedPreferences;I)I

    move-result v3

    aput v3, v1, v2

    .line 83
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showToastTips:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->showToastTips:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v6}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_18a

    move v3, v6

    :goto_13f
    aput v3, v1, v2

    .line 84
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v6}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_18c

    move v3, v6

    :goto_14e
    aput v3, v1, v2

    .line 85
    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3, v0, v5}, Lcom/swype/android/settings/SettingsManager$Key;->getBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v3

    if-eqz v3, :cond_18e

    move v3, v6

    :goto_15d
    aput v3, v1, v2

    .line 86
    return-object v1

    :cond_160
    move v3, v5

    .line 63
    goto/16 :goto_1c

    :cond_163
    move v3, v5

    .line 64
    goto/16 :goto_2b

    :cond_166
    move v3, v5

    .line 65
    goto/16 :goto_3a

    :cond_169
    move v3, v5

    .line 66
    goto/16 :goto_49

    :cond_16c
    move v3, v5

    .line 67
    goto/16 :goto_58

    :cond_16f
    move v3, v5

    .line 68
    goto/16 :goto_67

    :cond_172
    move v3, v5

    .line 69
    goto/16 :goto_76

    :cond_175
    move v3, v5

    .line 70
    goto/16 :goto_85

    :cond_178
    move v3, v5

    .line 71
    goto/16 :goto_94

    :cond_17b
    move v3, v5

    .line 75
    goto/16 :goto_c7

    :cond_17e
    move v3, v5

    .line 76
    goto/16 :goto_d6

    :cond_181
    move v3, v5

    .line 78
    goto/16 :goto_f7

    :cond_184
    move v3, v5

    .line 79
    goto :goto_106

    :cond_186
    move v3, v5

    .line 80
    goto :goto_115

    :cond_188
    move v3, v5

    .line 81
    goto :goto_124

    :cond_18a
    move v3, v5

    .line 83
    goto :goto_13f

    :cond_18c
    move v3, v5

    .line 84
    goto :goto_14e

    :cond_18e
    move v3, v5

    .line 85
    goto :goto_15d
.end method

.method private storePreferences([I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    sget-boolean v0, Lcom/swype/android/settings/SettingsManager;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    array-length v0, p1

    invoke-static {}, Lcom/swype/android/settings/SettingsManager$Key;->values()[Lcom/swype/android/settings/SettingsManager$Key;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_14
    iget-object v0, p0, Lcom/swype/android/settings/SettingsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-nez v2, :cond_159

    move v2, v4

    :goto_29
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 96
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->wordCompletion:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->wordCompletion:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_15c

    move v2, v4

    :goto_37
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 97
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableRubbing:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableRubbing:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_15f

    move v2, v4

    :goto_45
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 98
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableTipIndicator:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableTipIndicator:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_162

    move v2, v4

    :goto_53
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 99
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->showBlueChars:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showBlueChars:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_165

    move v2, v4

    :goto_61
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 100
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->trackStats:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->trackStats:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_168

    move v2, v4

    :goto_6f
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 101
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->useSwypeTapLayout:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->useSwypeTapLayout:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_16b

    move v2, v4

    :goto_7d
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 102
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->displayTraceBool:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->displayTraceBool:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_16e

    move v2, v4

    :goto_8b
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 103
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_171

    move v2, v4

    :goto_99
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 104
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->showWCW:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showWCW:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putInt(Landroid/content/SharedPreferences$Editor;I)V

    .line 105
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->z1Operation:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->z1Operation:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putInt(Landroid/content/SharedPreferences$Editor;I)V

    .line 106
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->defaultWordTimeout:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->defaultWordTimeout:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putInt(Landroid/content/SharedPreferences$Editor;I)V

    .line 107
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_174

    move v2, v4

    :goto_c8
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 108
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_177

    move v2, v4

    :goto_d6
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 109
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putString(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->wordSuggestionMaster:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->wordSuggestionMaster:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_17a

    move v2, v4

    :goto_f3
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 111
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_17d

    move v2, v4

    :goto_101
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 112
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_17f

    move v2, v4

    :goto_10f
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 113
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_181

    move v2, v4

    :goto_11d
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 114
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->z1OperationDefault:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->z1OperationDefault:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putInt(Landroid/content/SharedPreferences$Editor;I)V

    .line 115
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->showToastTips:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showToastTips:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_183

    move v2, v4

    :goto_136
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 116
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_185

    move v2, v4

    :goto_144
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 117
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

    iget v2, v2, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    aget v2, p1, v2

    if-eqz v2, :cond_187

    move v2, v4

    :goto_152
    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->putBoolean(Landroid/content/SharedPreferences$Editor;Z)V

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void

    :cond_159
    move v2, v3

    .line 95
    goto/16 :goto_29

    :cond_15c
    move v2, v3

    .line 96
    goto/16 :goto_37

    :cond_15f
    move v2, v3

    .line 97
    goto/16 :goto_45

    :cond_162
    move v2, v3

    .line 98
    goto/16 :goto_53

    :cond_165
    move v2, v3

    .line 99
    goto/16 :goto_61

    :cond_168
    move v2, v3

    .line 100
    goto/16 :goto_6f

    :cond_16b
    move v2, v3

    .line 101
    goto/16 :goto_7d

    :cond_16e
    move v2, v3

    .line 102
    goto/16 :goto_8b

    :cond_171
    move v2, v3

    .line 103
    goto/16 :goto_99

    :cond_174
    move v2, v3

    .line 107
    goto/16 :goto_c8

    :cond_177
    move v2, v3

    .line 108
    goto/16 :goto_d6

    :cond_17a
    move v2, v3

    .line 110
    goto/16 :goto_f3

    :cond_17d
    move v2, v3

    .line 111
    goto :goto_101

    :cond_17f
    move v2, v3

    .line 112
    goto :goto_10f

    :cond_181
    move v2, v3

    .line 113
    goto :goto_11d

    :cond_183
    move v2, v3

    .line 115
    goto :goto_136

    :cond_185
    move v2, v3

    .line 116
    goto :goto_144

    :cond_187
    move v2, v3

    .line 117
    goto :goto_152
.end method


# virtual methods
.method public getIntValueByKey(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/swype/android/settings/SettingsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    :try_start_7
    invoke-static {p1}, Lcom/swype/android/settings/SettingsManager$Key;->valueOf(Ljava/lang/String;)Lcom/swype/android/settings/SettingsManager$Key;

    move-result-object v1

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/settings/SettingsManager$Key;->getInt(Landroid/content/SharedPreferences;I)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_11

    move-result v0

    .line 54
    :goto_10
    return v0

    :catch_11
    move-exception v0

    move v0, v3

    goto :goto_10
.end method

.method public loadSettings()Z
    .registers 4

    .prologue
    .line 24
    invoke-static {}, Lcom/swype/android/settings/SettingsManager$Key;->values()[Lcom/swype/android/settings/SettingsManager$Key;

    move-result-object v2

    array-length v0, v2

    .line 25
    .local v0, numValues:I
    iget-object v2, p0, Lcom/swype/android/settings/SettingsManager;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v0}, Lcom/swype/android/jni/SwypeCore;->loadSettings(I)[I

    move-result-object v1

    .line 26
    .local v1, settings:[I
    if-eqz v1, :cond_10

    array-length v2, v1

    if-eq v2, v0, :cond_12

    .line 27
    :cond_10
    const/4 v2, 0x0

    .line 31
    :goto_11
    return v2

    .line 30
    :cond_12
    invoke-direct {p0, v1}, Lcom/swype/android/settings/SettingsManager;->storePreferences([I)V

    .line 31
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public saveSettings()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/swype/android/settings/SettingsManager;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-direct {p0}, Lcom/swype/android/settings/SettingsManager;->loadPreferences()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->saveSettings([I)V

    .line 40
    return-void
.end method
