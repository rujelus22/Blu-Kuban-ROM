.class public Lcom/android/musicfx/ControlPanelEffect;
.super Ljava/lang/Object;
.source "ControlPanelEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicfx/ControlPanelEffect$1;,
        Lcom/android/musicfx/ControlPanelEffect$Key;,
        Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    }
.end annotation


# static fields
.field private static final EQUALIZER_BAND_LEVEL_RANGE_DEFAULT:[S

.field private static final EQUALIZER_CENTER_FREQ_DEFAULT:[I

.field private static final EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

.field private static final EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

.field private static final EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

.field private static final mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/BassBoost;",
            ">;"
        }
    .end annotation
.end field

.field private static mEQBandLevelRange:[S

.field private static mEQCenterFreq:[I

.field private static final mEQInitLock:Ljava/lang/Object;

.field private static final mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/Equalizer;",
            ">;"
        }
    .end annotation
.end field

.field private static mEQNumBands:S

.field private static mEQNumPresets:S

.field private static mEQPresetNames:[Ljava/lang/String;

.field private static mEQPresetOpenSLESBandLevel:[[S

.field private static mIsEQInitialized:Z

.field private static final mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/PresetReverb;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/audiofx/Virtualizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x5

    const/high16 v2, 0x3f40

    const/4 v1, 0x2

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    new-array v0, v1, [S

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_BAND_LEVEL_RANGE_DEFAULT:[S

    .line 121
    new-array v0, v3, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_CENTER_FREQ_DEFAULT:[I

    .line 123
    new-array v0, v3, [S

    fill-array-data v0, :array_82

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    .line 124
    new-array v0, v3, [S

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    .line 125
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    .line 128
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_BAND_LEVEL_RANGE_DEFAULT:[S

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    .line 129
    sput-short v3, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 130
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_CENTER_FREQ_DEFAULT:[I

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 131
    sput-short v5, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 132
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 134
    sput-boolean v5, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQInitLock:Ljava/lang/Object;

    return-void

    .line 120
    :array_6e
    .array-data 0x2
        0x24t 0xfat
        0xdct 0x5t
    .end array-data

    .line 121
    :array_74
    .array-data 0x4
        0x60t 0xeat 0x0t 0x0t
        0x70t 0x82t 0x3t 0x0t
        0xb0t 0xe2t 0xdt 0x0t
        0x80t 0xeet 0x36t 0x0t
        0x80t 0x9ft 0xd5t 0x0t
    .end array-data

    .line 123
    :array_82
    .array-data 0x2
        0x0t 0x0t
        0x20t 0x3t
        0x90t 0x1t
        0x64t 0x0t
        0xe8t 0x3t
    .end array-data

    .line 124
    nop

    :array_8c
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static closeSession(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 10
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"

    .prologue
    .line 1247
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeSession("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mPresetReverbInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/PresetReverb;

    .line 1251
    .local v2, presetReverb:Landroid/media/audiofx/PresetReverb;
    if-eqz v2, :cond_43

    .line 1252
    invoke-virtual {v2}, Landroid/media/audiofx/PresetReverb;->release()V

    .line 1255
    :cond_43
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/Equalizer;

    .line 1256
    .local v1, equalizer:Landroid/media/audiofx/Equalizer;
    if-eqz v1, :cond_54

    .line 1257
    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->release()V

    .line 1260
    :cond_54
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/BassBoost;

    .line 1261
    .local v0, bassBoost:Landroid/media/audiofx/BassBoost;
    if-eqz v0, :cond_65

    .line 1262
    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 1265
    :cond_65
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiofx/Virtualizer;

    .line 1266
    .local v3, virtualizer:Landroid/media/audiofx/Virtualizer;
    if-eqz v3, :cond_76

    .line 1267
    invoke-virtual {v3}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 1270
    :cond_76
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    return-void
.end method

.method private static getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;
    .registers 8
    .parameter "audioSession"

    .prologue
    .line 1336
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffectNoCreate(I)Landroid/media/audiofx/BassBoost;

    move-result-object v1

    .line 1337
    .local v1, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-nez v1, :cond_1d

    .line 1339
    :try_start_6
    new-instance v3, Landroid/media/audiofx/BassBoost;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    .line 1340
    .local v3, newBassBoostEffect:Landroid/media/audiofx/BassBoost;
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/audiofx/BassBoost;

    move-object v1, v0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_1a} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_1a} :catch_52

    .line 1341
    if-nez v1, :cond_1d

    .line 1343
    move-object v1, v3

    .line 1353
    .end local v3           #newBassBoostEffect:Landroid/media/audiofx/BassBoost;
    :cond_1d
    :goto_1d
    return-object v1

    .line 1345
    :catch_1e
    move-exception v2

    .line 1346
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BassBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1347
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_38
    move-exception v2

    .line 1348
    .local v2, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BassBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1349
    .end local v2           #e:Ljava/lang/UnsupportedOperationException;
    :catch_52
    move-exception v2

    .line 1350
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BassBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private static getBassBoostEffectNoCreate(I)Landroid/media/audiofx/BassBoost;
    .registers 3
    .parameter "audioSession"

    .prologue
    .line 1332
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/BassBoost;

    return-object v0
.end method

.method public static getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .registers 2
    .parameter "audioSession"

    .prologue
    .line 318
    const/4 v0, -0x4

    if-ne p0, v0, :cond_6

    .line 319
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_PREFERENCES:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    .line 321
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    goto :goto_5
.end method

.method private static getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;
    .registers 8
    .parameter "audioSession"

    .prologue
    .line 1368
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffectNoCreate(I)Landroid/media/audiofx/Equalizer;

    move-result-object v2

    .line 1369
    .local v2, equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-nez v2, :cond_1d

    .line 1371
    :try_start_6
    new-instance v3, Landroid/media/audiofx/Equalizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    .line 1372
    .local v3, newEqualizerEffect:Landroid/media/audiofx/Equalizer;
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/audiofx/Equalizer;

    move-object v2, v0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_1a} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_1a} :catch_52

    .line 1373
    if-nez v2, :cond_1d

    .line 1375
    move-object v2, v3

    .line 1385
    .end local v3           #newEqualizerEffect:Landroid/media/audiofx/Equalizer;
    :cond_1d
    :goto_1d
    return-object v2

    .line 1377
    :catch_1e
    move-exception v1

    .line 1378
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Equalizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1379
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_38
    move-exception v1

    .line 1380
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Equalizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1381
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_52
    move-exception v1

    .line 1382
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Equalizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private static getEqualizerEffectNoCreate(I)Landroid/media/audiofx/Equalizer;
    .registers 3
    .parameter "audioSession"

    .prologue
    .line 1365
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Equalizer;

    return-object v0
.end method

.method public static getParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)Ljava/lang/Boolean;
    .registers 10
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 506
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 508
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 511
    .local v2, value:Z
    :try_start_6
    invoke-virtual {p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_d} :catch_13

    move-result v2

    .line 516
    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 512
    :catch_13
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParameterBoolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I
    .registers 5
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 794
    invoke-virtual {p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getParameterInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 769
    const/4 v2, 0x0

    .line 772
    .local v2, value:I
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 774
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_9} :catch_b

    move-result v2

    .line 779
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_a
    return v2

    .line 775
    :catch_b
    move-exception v0

    .line 776
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParameterInt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I
    .registers 12
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 845
    invoke-virtual {p0, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 848
    .local v4, prefs:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 851
    .local v2, intArray:[I
    :try_start_6
    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual {p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_84

    .line 870
    :pswitch_11
    const-string v5, "MusicFXControlPanelEffect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParameterIntArray: Unknown/unsupported key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v5, 0x0

    .line 882
    :goto_2a
    return-object v5

    .line 853
    :pswitch_2b
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 874
    :goto_2e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    array-length v5, v2

    if-ge v1, v5, :cond_82

    .line 875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v2, v1

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 865
    .end local v1           #i:I
    :pswitch_51
    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v5}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 866
    .local v3, numBands:I
    new-array v2, v3, [I
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_5e} :catch_5f

    .line 867
    goto :goto_2e

    .line 878
    .end local v3           #numBands:I
    :catch_5f
    move-exception v0

    .line 879
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "MusicFXControlPanelEffect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParameterIntArray: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_82
    move-object v5, v2

    .line 882
    goto :goto_2a

    .line 851
    :pswitch_data_84
    .packed-switch 0x8
        :pswitch_51
        :pswitch_11
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_11
        :pswitch_11
        :pswitch_2b
        :pswitch_51
    .end packed-switch
.end method

.method public static getParameterString(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"

    .prologue
    .line 897
    const-string v2, ""

    .line 899
    .local v2, value:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 903
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_c

    move-result-object v2

    .line 909
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_b
    return-object v2

    .line 905
    :catch_c
    move-exception v0

    .line 906
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "MusicFXControlPanelEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParameterString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private static getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;
    .registers 8
    .parameter "audioSession"

    .prologue
    .line 1302
    invoke-static {p0}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffectNoCreate(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v3

    .line 1303
    .local v3, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-nez v3, :cond_1d

    .line 1305
    :try_start_6
    new-instance v2, Landroid/media/audiofx/Virtualizer;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    .line 1306
    .local v2, newVirtualizerEffect:Landroid/media/audiofx/Virtualizer;
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    move-object v3, v0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_1a} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_1a} :catch_52

    .line 1308
    if-nez v3, :cond_1d

    .line 1310
    move-object v3, v2

    .line 1320
    .end local v2           #newVirtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_1d
    :goto_1d
    return-object v3

    .line 1312
    :catch_1e
    move-exception v1

    .line 1313
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Virtualizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1314
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_38
    move-exception v1

    .line 1315
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Virtualizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1316
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_52
    move-exception v1

    .line 1317
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Virtualizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private static getVirtualizerEffectNoCreate(I)Landroid/media/audiofx/Virtualizer;
    .registers 3
    .parameter "audioSession"

    .prologue
    .line 1299
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    return-object v0
.end method

.method public static initEffectsPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 34
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"

    .prologue
    .line 154
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 156
    .local v20, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 157
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-result-object v6

    .line 162
    .local v6, controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    :try_start_14
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 164
    .local v17, isGlobalEnabled:Z
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v25, "MusicFXControlPanelEffect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isGlobalEnabled = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 170
    .local v18, isVIEnabled:Z
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3e8

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 172
    .local v24, vIStrength:I
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 178
    .local v14, isBBEnabled:Z
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x29b

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 180
    .local v3, bBStrength:I
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v11, v0, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v11, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    sget-object v27, Lcom/android/musicfx/ControlPanelEffect;->mEQInitLock:Ljava/lang/Object;

    monitor-enter v27
    :try_end_ca
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_ca} :catch_526

    .line 187
    :try_start_ca
    sget-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v25, :cond_542

    .line 188
    new-instance v19, Landroid/media/MediaPlayer;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaPlayer;-><init>()V

    .line 189
    .local v19, mediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->getAudioSessionId()I
    :try_end_d6
    .catchall {:try_start_ca .. :try_end_d6} :catchall_523

    move-result v23

    .line 190
    .local v23, session:I
    const/4 v12, 0x0

    .line 192
    .local v12, equalizerEffect:Landroid/media/audiofx/Equalizer;
    :try_start_d8
    const-string v25, "MusicFXControlPanelEffect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Creating dummy EQ effect on session "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v13, Landroid/media/audiofx/Equalizer;

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/media/audiofx/Equalizer;-><init>(II)V
    :try_end_103
    .catchall {:try_start_d8 .. :try_end_103} :catchall_7a7
    .catch Ljava/lang/IllegalStateException; {:try_start_d8 .. :try_end_103} :catch_22e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d8 .. :try_end_103} :catch_2eb
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d8 .. :try_end_103} :catch_3a8
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_103} :catch_465

    .line 195
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .local v13, equalizerEffect:Landroid/media/audiofx/Equalizer;
    :try_start_103
    invoke-virtual {v13}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v25

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    .line 196
    invoke-virtual {v13}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v25

    sput-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 197
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 198
    const/4 v4, 0x0

    .local v4, band:S
    :goto_11a
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v25

    if-ge v4, v0, :cond_12e

    .line 199
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    invoke-virtual {v13, v4}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v26

    aput v26, v25, v4

    .line 198
    add-int/lit8 v25, v4, 0x1

    move/from16 v0, v25

    int-to-short v4, v0

    goto :goto_11a

    .line 201
    :cond_12e
    invoke-virtual {v13}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v25

    sput-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 202
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    .line 203
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v25 .. v26}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 204
    const/16 v21, 0x0

    .local v21, preset:S
    :goto_156
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_18c

    .line 205
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v21

    .line 206
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 207
    const/4 v4, 0x0

    :goto_16e
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v25

    if-ge v4, v0, :cond_184

    .line 208
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    aget-object v25, v25, v21

    invoke-virtual {v13, v4}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v26

    aput-short v26, v25, v4

    .line 207
    add-int/lit8 v25, v4, 0x1

    move/from16 v0, v25

    int-to-short v4, v0

    goto :goto_16e

    .line 204
    :cond_184
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_156

    .line 213
    :cond_18c
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z
    :try_end_190
    .catchall {:try_start_103 .. :try_end_190} :catchall_848
    .catch Ljava/lang/IllegalStateException; {:try_start_103 .. :try_end_190} :catch_85a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_103 .. :try_end_190} :catch_856
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_103 .. :try_end_190} :catch_852
    .catch Ljava/lang/RuntimeException; {:try_start_103 .. :try_end_190} :catch_84e

    .line 223
    if-eqz v13, :cond_19c

    .line 224
    :try_start_192
    const-string v25, "MusicFXControlPanelEffect"

    const-string v26, "Releasing dummy EQ effect"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v13}, Landroid/media/audiofx/Equalizer;->release()V

    .line 227
    :cond_19c
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 230
    sget-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v25, :cond_542

    .line 231
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v25 .. v26}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 232
    const/16 v21, 0x0

    :goto_1bb
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_542

    .line 234
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Preset"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v21

    .line 237
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_226

    .line 238
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v26, v26, v21

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v26

    aput-object v26, v25, v21
    :try_end_226
    .catchall {:try_start_192 .. :try_end_226} :catchall_523

    .line 232
    :cond_226
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_1bb

    .line 214
    .end local v4           #band:S
    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v21           #preset:S
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_22e
    move-exception v7

    .line 215
    .local v7, e:Ljava/lang/IllegalStateException;
    :goto_22f
    :try_start_22f
    const-string v25, "MusicFXControlPanelEffect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Equalizer: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24d
    .catchall {:try_start_22f .. :try_end_24d} :catchall_7a7

    .line 223
    if-eqz v12, :cond_259

    .line 224
    :try_start_24f
    const-string v25, "MusicFXControlPanelEffect"

    const-string v26, "Releasing dummy EQ effect"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v12}, Landroid/media/audiofx/Equalizer;->release()V

    .line 227
    :cond_259
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 230
    sget-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v25, :cond_542

    .line 231
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v25 .. v26}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 232
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_278
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_542

    .line 234
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Preset"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v21

    .line 237
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_2e3

    .line 238
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v26, v26, v21

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v26

    aput-object v26, v25, v21
    :try_end_2e3
    .catchall {:try_start_24f .. :try_end_2e3} :catchall_523

    .line 232
    :cond_2e3
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_278

    .line 216
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v21           #preset:S
    :catch_2eb
    move-exception v7

    .line 217
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :goto_2ec
    :try_start_2ec
    const-string v25, "MusicFXControlPanelEffect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Equalizer: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30a
    .catchall {:try_start_2ec .. :try_end_30a} :catchall_7a7

    .line 223
    if-eqz v12, :cond_316

    .line 224
    :try_start_30c
    const-string v25, "MusicFXControlPanelEffect"

    const-string v26, "Releasing dummy EQ effect"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v12}, Landroid/media/audiofx/Equalizer;->release()V

    .line 227
    :cond_316
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 230
    sget-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v25, :cond_542

    .line 231
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v25 .. v26}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 232
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_335
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_542

    .line 234
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Preset"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v21

    .line 237
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_3a0

    .line 238
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v26, v26, v21

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v26

    aput-object v26, v25, v21
    :try_end_3a0
    .catchall {:try_start_30c .. :try_end_3a0} :catchall_523

    .line 232
    :cond_3a0
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_335

    .line 218
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v21           #preset:S
    :catch_3a8
    move-exception v7

    .line 219
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    :goto_3a9
    :try_start_3a9
    const-string v25, "MusicFXControlPanelEffect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Equalizer: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c7
    .catchall {:try_start_3a9 .. :try_end_3c7} :catchall_7a7

    .line 223
    if-eqz v12, :cond_3d3

    .line 224
    :try_start_3c9
    const-string v25, "MusicFXControlPanelEffect"

    const-string v26, "Releasing dummy EQ effect"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v12}, Landroid/media/audiofx/Equalizer;->release()V

    .line 227
    :cond_3d3
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 230
    sget-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v25, :cond_542

    .line 231
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v25 .. v26}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 232
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_3f2
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_542

    .line 234
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Preset"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v21

    .line 237
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_45d

    .line 238
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v26, v26, v21

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v26

    aput-object v26, v25, v21
    :try_end_45d
    .catchall {:try_start_3c9 .. :try_end_45d} :catchall_523

    .line 232
    :cond_45d
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_3f2

    .line 220
    .end local v7           #e:Ljava/lang/UnsupportedOperationException;
    .end local v21           #preset:S
    :catch_465
    move-exception v7

    .line 221
    .local v7, e:Ljava/lang/RuntimeException;
    :goto_466
    :try_start_466
    const-string v25, "MusicFXControlPanelEffect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Equalizer: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_484
    .catchall {:try_start_466 .. :try_end_484} :catchall_7a7

    .line 223
    if-eqz v12, :cond_490

    .line 224
    :try_start_486
    const-string v25, "MusicFXControlPanelEffect"

    const-string v26, "Releasing dummy EQ effect"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v12}, Landroid/media/audiofx/Equalizer;->release()V

    .line 227
    :cond_490
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 230
    sget-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v25, :cond_542

    .line 231
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    filled-new-array/range {v25 .. v26}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 232
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_4af
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_542

    .line 234
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v28 .. v28}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Preset"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v21

    .line 237
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_51a

    .line 238
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v26, v26, v21

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v26

    aput-object v26, v25, v21

    .line 232
    :cond_51a
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_4af

    .line 223
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v21           #preset:S
    :cond_522
    throw v26

    .line 290
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v19           #mediaPlayer:Landroid/media/MediaPlayer;
    .end local v23           #session:I
    :catchall_523
    move-exception v25

    monitor-exit v27
    :try_end_525
    .catchall {:try_start_486 .. :try_end_525} :catchall_523

    :try_start_525
    throw v25
    :try_end_526
    .catch Ljava/lang/RuntimeException; {:try_start_525 .. :try_end_526} :catch_526

    .line 304
    .end local v3           #bBStrength:I
    .end local v14           #isBBEnabled:Z
    .end local v17           #isGlobalEnabled:Z
    .end local v18           #isVIEnabled:Z
    .end local v24           #vIStrength:I
    :catch_526
    move-exception v7

    .line 305
    .restart local v7       #e:Ljava/lang/RuntimeException;
    const-string v25, "MusicFXControlPanelEffect"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "initEffectsPreferences: processingEnabled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v7           #e:Ljava/lang/RuntimeException;
    :goto_541
    return-void

    .line 246
    .restart local v3       #bBStrength:I
    .restart local v14       #isBBEnabled:Z
    .restart local v17       #isGlobalEnabled:Z
    .restart local v18       #isVIEnabled:Z
    .restart local v24       #vIStrength:I
    :cond_542
    :try_start_542
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v28, 0x0

    aget-short v26, v26, v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v28, 0x1

    aget-short v26, v26, v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 252
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v9

    .line 254
    .local v9, eQPresetCIExtremeBandLevel:[S
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v10

    .line 257
    .local v10, eQPresetUserBandLevelDefault:[S
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    sget-short v26, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    int-to-short v8, v0

    .line 259
    .local v8, eQPreset:S
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v11, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v25

    new-array v5, v0, [S

    .line 261
    .local v5, bandLevel:[S
    const/4 v4, 0x0

    .restart local v4       #band:S
    :goto_5e3
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v25

    if-ge v4, v0, :cond_6c8

    .line 262
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_PREFERENCES:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-object/from16 v0, v25

    if-ne v6, v0, :cond_61f

    .line 263
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v25

    if-ge v8, v0, :cond_68e

    .line 265
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    aget-object v25, v25, v8

    aget-short v25, v25, v4

    aput-short v25, v5, v4

    .line 275
    :goto_5fd
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aget-short v26, v5, v4

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    :cond_61f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    aget v26, v26, v4

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aget-short v26, v9, v4

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 280
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aget-short v26, v10, v4

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    add-int/lit8 v25, v4, 0x1

    move/from16 v0, v25

    int-to-short v4, v0

    goto/16 :goto_5e3

    .line 266
    :cond_68e
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v25

    if-ne v8, v0, :cond_69a

    .line 268
    aget-short v25, v9, v4

    aput-short v25, v5, v4

    goto/16 :goto_5fd

    .line 271
    :cond_69a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aget-short v26, v10, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    aput-short v25, v5, v4

    goto/16 :goto_5fd

    .line 283
    :cond_6c8
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_6ca
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_741

    .line 284
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    aget-object v26, v26, v21

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    const/4 v4, 0x0

    :goto_6f9
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v25

    if-ge v4, v0, :cond_739

    .line 286
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v26 .. v26}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    aget-object v26, v26, v21

    aget-short v26, v26, v4

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 285
    add-int/lit8 v25, v4, 0x1

    move/from16 v0, v25

    int-to-short v4, v0

    goto :goto_6f9

    .line 283
    :cond_739
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_6ca

    .line 290
    :cond_741
    monitor-exit v27
    :try_end_742
    .catchall {:try_start_542 .. :try_end_742} :catchall_523

    .line 291
    :try_start_742
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 293
    .local v15, isEQEnabled:Z
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v11, v0, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 296
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 298
    .local v16, isEnabledPR:Z
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v22, v0

    .line 300
    .local v22, presetPR:S
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v25 .. v25}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7a5
    .catch Ljava/lang/RuntimeException; {:try_start_742 .. :try_end_7a5} :catch_526

    goto/16 :goto_541

    .line 223
    .end local v4           #band:S
    .end local v5           #bandLevel:[S
    .end local v8           #eQPreset:S
    .end local v9           #eQPresetCIExtremeBandLevel:[S
    .end local v10           #eQPresetUserBandLevelDefault:[S
    .end local v15           #isEQEnabled:Z
    .end local v16           #isEnabledPR:Z
    .end local v21           #preset:S
    .end local v22           #presetPR:S
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v19       #mediaPlayer:Landroid/media/MediaPlayer;
    .restart local v23       #session:I
    :catchall_7a7
    move-exception v25

    move-object/from16 v26, v25

    :goto_7aa
    if-eqz v12, :cond_7ba

    .line 224
    :try_start_7ac
    const-string v25, "MusicFXControlPanelEffect"

    const-string v28, "Releasing dummy EQ effect"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v12}, Landroid/media/audiofx/Equalizer;->release()V

    .line 227
    :cond_7ba
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 230
    sget-boolean v25, Lcom/android/musicfx/ControlPanelEffect;->mIsEQInitialized:Z

    if-nez v25, :cond_522

    .line 231
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    sget-short v28, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v25

    move/from16 v1, v28

    filled-new-array {v0, v1}, [I

    move-result-object v25

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    sput-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    .line 232
    const/16 v21, 0x0

    .restart local v21       #preset:S
    :goto_7dd
    sget-short v25, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_522

    .line 234
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Preset"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v25, v21

    .line 237
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_840

    .line 238
    sget-object v25, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetOpenSLESBandLevel:[[S

    sget-object v28, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    aget-object v28, v28, v21

    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    invoke-static/range {v28 .. v29}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v28

    aput-object v28, v25, v21
    :try_end_840
    .catchall {:try_start_7ac .. :try_end_840} :catchall_523

    .line 232
    :cond_840
    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_7dd

    .line 223
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v21           #preset:S
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catchall_848
    move-exception v25

    move-object/from16 v26, v25

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_7aa

    .line 220
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_84e
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_466

    .line 218
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_852
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_3a9

    .line 216
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_856
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_2ec

    .line 214
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v13       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :catch_85a
    move-exception v7

    move-object v12, v13

    .end local v13           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    goto/16 :goto_22f
.end method

.method public static openSession(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 36
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"

    .prologue
    .line 953
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "openSession("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v22, "openSession: "

    .line 957
    .local v22, methodTag:Ljava/lang/String;
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 959
    .local v23, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 961
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 963
    .local v20, isGlobalEnabled:Z
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 965
    if-nez v20, :cond_72

    .line 1235
    :goto_71
    return-void

    .line 972
    :cond_72
    const/16 v19, 0x0

    .line 975
    .local v19, isExistingAudioSession:Z
    :try_start_74
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect;->mPackageSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 977
    .local v6, currentAudioSession:Ljava/lang/Integer;
    if-eqz v6, :cond_94

    .line 979
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_8b
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_8b} :catch_158

    move-result v29

    move/from16 v0, v29

    move/from16 v1, p2

    if-ne v0, v1, :cond_149

    .line 985
    const/16 v19, 0x1

    .line 1000
    :cond_94
    :goto_94
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v28

    .line 1002
    .local v28, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    const-string v17, "openSession: Virtualizer error: "

    .line 1006
    .local v17, errorTag:Ljava/lang/String;
    :try_start_9a
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1008
    .local v18, isEnabled:Z
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x3e8

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 1011
    .local v27, strength:I
    new-instance v25, Landroid/media/audiofx/Virtualizer$Settings;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Virtualizer;strength="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/media/audiofx/Virtualizer$Settings;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v25, settings:Landroid/media/audiofx/Virtualizer$Settings;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V

    .line 1017
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_178

    .line 1018
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 1024
    :goto_f4
    invoke-virtual/range {v28 .. v28}, Landroid/media/audiofx/Virtualizer;->getProperties()Landroid/media/audiofx/Virtualizer$Settings;

    move-result-object v25

    .line 1025
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Parameters: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v25 .. v25}, Landroid/media/audiofx/Virtualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";enabled="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1029
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    iget-short v0, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_142
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_142} :catch_17f

    .line 1038
    .end local v18           #isEnabled:Z
    .end local v25           #settings:Landroid/media/audiofx/Virtualizer$Settings;
    .end local v27           #strength:I
    :goto_142
    if-eqz v19, :cond_19b

    .line 1039
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_71

    .line 987
    .end local v17           #errorTag:Ljava/lang/String;
    .end local v28           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_149
    :try_start_149
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect;->closeSession(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_156
    .catch Ljava/lang/NullPointerException; {:try_start_149 .. :try_end_156} :catch_158

    goto/16 :goto_94

    .line 990
    .end local v6           #currentAudioSession:Ljava/lang/Integer;
    :catch_158
    move-exception v7

    .line 991
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "openSession: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_71

    .line 1020
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v6       #currentAudioSession:Ljava/lang/Integer;
    .restart local v17       #errorTag:Ljava/lang/String;
    .restart local v18       #isEnabled:Z
    .restart local v25       #settings:Landroid/media/audiofx/Virtualizer$Settings;
    .restart local v27       #strength:I
    .restart local v28       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_178
    const/16 v29, 0x0

    :try_start_17a
    invoke-virtual/range {v28 .. v29}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I
    :try_end_17d
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_17d} :catch_17f

    goto/16 :goto_f4

    .line 1030
    .end local v18           #isEnabled:Z
    .end local v25           #settings:Landroid/media/audiofx/Virtualizer$Settings;
    .end local v27           #strength:I
    :catch_17f
    move-exception v7

    .line 1031
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "openSession: Virtualizer error: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_142

    .line 1045
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_19b
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v5

    .line 1047
    .local v5, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    const-string v17, "openSession: BassBoost error: "

    .line 1051
    :try_start_1a1
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1053
    .restart local v18       #isEnabled:Z
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x29b

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 1057
    .restart local v27       #strength:I
    new-instance v25, Landroid/media/audiofx/BassBoost$Settings;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "BassBoost;strength="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/media/audiofx/BassBoost$Settings;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v25, settings:Landroid/media/audiofx/BassBoost$Settings;
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/audiofx/BassBoost;->setProperties(Landroid/media/audiofx/BassBoost$Settings;)V

    .line 1063
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_2bc

    .line 1064
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 1070
    :goto_1f7
    invoke-virtual {v5}, Landroid/media/audiofx/BassBoost;->getProperties()Landroid/media/audiofx/BassBoost$Settings;

    move-result-object v25

    .line 1071
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Parameters: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v25 .. v25}, Landroid/media/audiofx/BassBoost$Settings;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";enabled="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1075
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    iget-short v0, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_245
    .catch Ljava/lang/RuntimeException; {:try_start_1a1 .. :try_end_245} :catch_2c5

    .line 1083
    .end local v18           #isEnabled:Z
    .end local v25           #settings:Landroid/media/audiofx/BassBoost$Settings;
    .end local v27           #strength:I
    :goto_245
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v16

    .line 1085
    .local v16, equalizerEffect:Landroid/media/audiofx/Equalizer;
    const-string v17, "openSession: Equalizer error: "

    .line 1094
    :try_start_24b
    sget-object v30, Lcom/android/musicfx/ControlPanelEffect;->mEQInitLock:Ljava/lang/Object;

    monitor-enter v30
    :try_end_24e
    .catch Ljava/lang/RuntimeException; {:try_start_24b .. :try_end_24e} :catch_533

    .line 1096
    :try_start_24e
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v29

    sput-object v29, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    .line 1097
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v29

    sput-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 1098
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    sput-object v29, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 1099
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v29

    sput-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 1100
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    sput-object v29, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    .line 1102
    const/16 v24, 0x0

    .local v24, preset:S
    :goto_276
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_2e2

    .line 1103
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v24

    .line 1104
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    aget-object v31, v31, v24

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2b4
    .catchall {:try_start_24e .. :try_end_2b4} :catchall_530

    .line 1102
    add-int/lit8 v29, v24, 0x1

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v24, v0

    goto :goto_276

    .line 1066
    .end local v16           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v24           #preset:S
    .restart local v18       #isEnabled:Z
    .restart local v25       #settings:Landroid/media/audiofx/BassBoost$Settings;
    .restart local v27       #strength:I
    :cond_2bc
    const/16 v29, 0x0

    :try_start_2be
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_2c3
    .catch Ljava/lang/RuntimeException; {:try_start_2be .. :try_end_2c3} :catch_2c5

    goto/16 :goto_1f7

    .line 1076
    .end local v18           #isEnabled:Z
    .end local v25           #settings:Landroid/media/audiofx/BassBoost$Settings;
    .end local v27           #strength:I
    :catch_2c5
    move-exception v7

    .line 1077
    .restart local v7       #e:Ljava/lang/RuntimeException;
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "openSession: BassBoost error: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_245

    .line 1108
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v16       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .restart local v24       #preset:S
    :cond_2e2
    :try_start_2e2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v32, 0x0

    aget-short v31, v31, v32

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1109
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect;->mEQBandLevelRange:[S

    const/16 v32, 0x1

    aget-short v31, v31, v32

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1110
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    sget-short v31, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1111
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    sget-short v31, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1114
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    sget-short v31, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v12

    .line 1116
    .local v12, eQPresetCIExtremeBandLevel:[S
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    sget-short v31, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v14

    .line 1119
    .local v14, eQPresetUserBandLevelDefault:[S
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    sget-short v31, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    int-to-short v11, v0

    .line 1121
    .local v11, eQPreset:S
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v29

    if-ge v11, v0, :cond_463

    .line 1123
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 1124
    invoke-virtual/range {v16 .. v16}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S

    move-result v11

    .line 1140
    :cond_398
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v15, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1142
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v29

    new-array v4, v0, [S

    .line 1143
    .local v4, bandLevel:[S
    const/4 v3, 0x0

    .local v3, band:S
    :goto_3aa
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v29

    if-ge v3, v0, :cond_4b0

    .line 1144
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v31

    aput v31, v29, v3

    .line 1145
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v29

    aput-short v29, v4, v3

    .line 1147
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aget-short v31, v4, v3

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1148
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    aget v31, v31, v3

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1149
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aget-short v31, v12, v3

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1151
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aget-short v31, v14, v3

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1143
    add-int/lit8 v29, v3, 0x1

    move/from16 v0, v29

    int-to-short v3, v0

    goto/16 :goto_3aa

    .line 1126
    .end local v3           #band:S
    .end local v4           #bandLevel:[S
    :cond_463
    const/4 v3, 0x0

    .restart local v3       #band:S
    :goto_464
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    move/from16 v0, v29

    if-ge v3, v0, :cond_398

    .line 1127
    const/16 v21, 0x0

    .line 1128
    .local v21, level:S
    sget-short v29, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    move/from16 v0, v29

    if-ne v11, v0, :cond_481

    .line 1130
    aget-short v21, v12, v3

    .line 1137
    :goto_474
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 1126
    add-int/lit8 v29, v3, 0x1

    move/from16 v0, v29

    int-to-short v3, v0

    goto :goto_464

    .line 1133
    :cond_481
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v31 .. v31}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aget-short v31, v14, v3

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v21, v0

    goto :goto_474

    .line 1155
    .end local v21           #level:S
    .restart local v4       #bandLevel:[S
    :cond_4b0
    sget-short v9, Lcom/android/musicfx/ControlPanelEffect;->mEQNumBands:S

    .line 1156
    .local v9, eQNumBands:S
    sget-object v8, Lcom/android/musicfx/ControlPanelEffect;->mEQCenterFreq:[I

    .line 1157
    .local v8, eQCenterFreq:[I
    sget-short v10, Lcom/android/musicfx/ControlPanelEffect;->mEQNumPresets:S

    .line 1158
    .local v10, eQNumPresets:S
    sget-object v13, Lcom/android/musicfx/ControlPanelEffect;->mEQPresetNames:[Ljava/lang/String;

    .line 1159
    .local v13, eQPresetNames:[Ljava/lang/String;
    monitor-exit v30
    :try_end_4b9
    .catchall {:try_start_2e2 .. :try_end_4b9} :catchall_530

    .line 1161
    :try_start_4b9
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1163
    .restart local v18       #isEnabled:Z
    sget-object v29, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v29 .. v29}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1164
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_553

    .line 1165
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 1171
    :goto_4e7
    const-string v29, "MusicFXControlPanelEffect"

    const-string v30, "Parameters: Equalizer"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "bands="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v26, "levels="

    .line 1174
    .local v26, str:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_50b
    if-ge v3, v9, :cond_55d

    .line 1175
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-short v30, v4, v3

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "; "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_529
    .catch Ljava/lang/RuntimeException; {:try_start_4b9 .. :try_end_529} :catch_533

    move-result-object v26

    .line 1174
    add-int/lit8 v29, v3, 0x1

    move/from16 v0, v29

    int-to-short v3, v0

    goto :goto_50b

    .line 1159
    .end local v3           #band:S
    .end local v4           #bandLevel:[S
    .end local v8           #eQCenterFreq:[I
    .end local v9           #eQNumBands:S
    .end local v10           #eQNumPresets:S
    .end local v11           #eQPreset:S
    .end local v12           #eQPresetCIExtremeBandLevel:[S
    .end local v13           #eQPresetNames:[Ljava/lang/String;
    .end local v14           #eQPresetUserBandLevelDefault:[S
    .end local v18           #isEnabled:Z
    .end local v24           #preset:S
    .end local v26           #str:Ljava/lang/String;
    :catchall_530
    move-exception v29

    :try_start_531
    monitor-exit v30
    :try_end_532
    .catchall {:try_start_531 .. :try_end_532} :catchall_530

    :try_start_532
    throw v29
    :try_end_533
    .catch Ljava/lang/RuntimeException; {:try_start_532 .. :try_end_533} :catch_533

    .line 1189
    :catch_533
    move-exception v7

    .line 1190
    .restart local v7       #e:Ljava/lang/RuntimeException;
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "openSession: Equalizer error: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    .end local v7           #e:Ljava/lang/RuntimeException;
    :goto_54e
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_71

    .line 1167
    .restart local v3       #band:S
    .restart local v4       #bandLevel:[S
    .restart local v8       #eQCenterFreq:[I
    .restart local v9       #eQNumBands:S
    .restart local v10       #eQNumPresets:S
    .restart local v11       #eQPreset:S
    .restart local v12       #eQPresetCIExtremeBandLevel:[S
    .restart local v13       #eQPresetNames:[Ljava/lang/String;
    .restart local v14       #eQPresetUserBandLevelDefault:[S
    .restart local v18       #isEnabled:Z
    .restart local v24       #preset:S
    :cond_553
    const/16 v29, 0x0

    :try_start_555
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    goto :goto_4e7

    .line 1177
    .restart local v26       #str:Ljava/lang/String;
    :cond_55d
    const-string v29, "MusicFXControlPanelEffect"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const-string v26, "center="

    .line 1179
    const/4 v3, 0x0

    :goto_569
    if-ge v3, v9, :cond_58e

    .line 1180
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget v30, v8, v3

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "; "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1179
    add-int/lit8 v29, v3, 0x1

    move/from16 v0, v29

    int-to-short v3, v0

    goto :goto_569

    .line 1182
    :cond_58e
    const-string v29, "MusicFXControlPanelEffect"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const-string v26, "presets="

    .line 1184
    const/16 v24, 0x0

    :goto_59b
    move/from16 v0, v24

    if-ge v0, v10, :cond_5c4

    .line 1185
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v13, v24

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "; "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1184
    add-int/lit8 v29, v24, 0x1

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v24, v0

    goto :goto_59b

    .line 1187
    :cond_5c4
    const-string v29, "MusicFXControlPanelEffect"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const-string v29, "MusicFXControlPanelEffect"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "current="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e7
    .catch Ljava/lang/RuntimeException; {:try_start_555 .. :try_end_5e7} :catch_533

    goto/16 :goto_54e
.end method

.method public static setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V
    .registers 29
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 337
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 339
    .local v20, prefs:Landroid/content/SharedPreferences;
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-result-object v13

    .line 340
    .local v13, controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    move/from16 v16, p4

    .line 343
    .local v16, enabled:Z
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_18c

    .line 344
    const/16 v21, 0x0

    .line 345
    .local v21, processingEnabled:Z
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_ee

    .line 347
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    if-ne v13, v4, :cond_bf

    .line 348
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v23

    .line 349
    .local v23, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v23, :cond_53

    .line 350
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v4}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 352
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v4}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e8

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 354
    .local v22, vIStrength:I
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 357
    .end local v22           #vIStrength:I
    :cond_53
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v12

    .line 358
    .local v12, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v12, :cond_82

    .line 359
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v4}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v12, v4}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 361
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v4}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x29b

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 363
    .local v10, bBStrength:I
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4, v10}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 366
    .end local v10           #bBStrength:I
    :cond_82
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v17

    .line 367
    .local v17, equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v17, :cond_bf

    .line 368
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v4}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 370
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v11

    .line 372
    .local v11, bandLevels:[I
    array-length v0, v11

    move/from16 v19, v0

    .line 373
    .local v19, len:I
    const/4 v9, 0x0

    .local v9, band:S
    :goto_aa
    move/from16 v0, v19

    if-ge v9, v0, :cond_bf

    .line 374
    aget v8, v11, v9

    .line 375
    .local v8, level:I
    sget-object v7, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V

    .line 373
    add-int/lit8 v4, v9, 0x1

    int-to-short v9, v4

    goto :goto_aa

    .line 389
    .end local v8           #level:I
    .end local v9           #band:S
    .end local v11           #bandLevels:[I
    .end local v12           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    .end local v17           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v19           #len:I
    .end local v23           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_bf
    const/16 v21, 0x1

    .line 390
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processingEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_db
    move/from16 v16, v21

    .line 485
    .end local v21           #processingEnabled:Z
    :cond_dd
    :goto_dd
    :pswitch_dd
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 486
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p3 .. p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v15, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    .end local v13           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #enabled:Z
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    :goto_ed
    return-void

    .line 394
    .restart local v13       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .restart local v16       #enabled:Z
    .restart local v20       #prefs:Landroid/content/SharedPreferences;
    .restart local v21       #processingEnabled:Z
    :cond_ee
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    if-ne v13, v4, :cond_13c

    .line 395
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffectNoCreate(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v23

    .line 396
    .restart local v23       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v23, :cond_10c

    .line 397
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mVirtualizerInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 399
    invoke-virtual/range {v23 .. v23}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 401
    :cond_10c
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffectNoCreate(I)Landroid/media/audiofx/BassBoost;

    move-result-object v12

    .line 402
    .restart local v12       #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v12, :cond_122

    .line 403
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mBassBoostInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 405
    invoke-virtual {v12}, Landroid/media/audiofx/BassBoost;->release()V

    .line 407
    :cond_122
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffectNoCreate(I)Landroid/media/audiofx/Equalizer;

    move-result-object v17

    .line 408
    .restart local v17       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v17, :cond_13c

    .line 409
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect;->mEQInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 411
    invoke-virtual/range {v17 .. v17}, Landroid/media/audiofx/Equalizer;->release()V

    .line 422
    .end local v12           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    .end local v17           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v23           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_13c
    const/16 v21, 0x0

    .line 423
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processingEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_158
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_158} :catch_159

    goto :goto_db

    .line 489
    .end local v13           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .end local v16           #enabled:Z
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    .end local v21           #processingEnabled:Z
    :catch_159
    move-exception v14

    .line 490
    .local v14, e:Ljava/lang/RuntimeException;
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setParameterBoolean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ed

    .line 426
    .end local v14           #e:Ljava/lang/RuntimeException;
    .restart local v13       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .restart local v16       #enabled:Z
    .restart local v20       #prefs:Landroid/content/SharedPreferences;
    :cond_18c
    :try_start_18c
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    if-ne v13, v4, :cond_dd

    .line 427
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v4}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 429
    .local v18, isGlobalEnabled:Z
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_dd

    .line 431
    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual/range {p3 .. p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_200

    .line 477
    const-string v4, "MusicFXControlPanelEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown/unsupported key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ed

    .line 439
    :pswitch_1c9
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v23

    .line 440
    .restart local v23       #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v23, :cond_dd

    .line 441
    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 442
    invoke-virtual/range {v23 .. v23}, Landroid/media/audiofx/Virtualizer;->getEnabled()Z

    move-result v16

    goto/16 :goto_dd

    .line 448
    .end local v23           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :pswitch_1dc
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v12

    .line 449
    .restart local v12       #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v12, :cond_dd

    .line 450
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 451
    invoke-virtual {v12}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v16

    goto/16 :goto_dd

    .line 457
    .end local v12           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    :pswitch_1ed
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v17

    .line 458
    .restart local v17       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v17, :cond_dd

    .line 459
    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 460
    invoke-virtual/range {v17 .. v17}, Landroid/media/audiofx/Equalizer;->getEnabled()Z
    :try_end_1fd
    .catch Ljava/lang/RuntimeException; {:try_start_18c .. :try_end_1fd} :catch_159

    move-result v16

    goto/16 :goto_dd

    .line 431
    :pswitch_data_200
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_1c9
        :pswitch_1dc
        :pswitch_1ed
        :pswitch_dd
    .end packed-switch
.end method

.method public static setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V
    .registers 11
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 754
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V

    .line 755
    return-void
.end method

.method public static setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V
    .registers 30
    .parameter "context"
    .parameter "packageName"
    .parameter "audioSession"
    .parameter "key"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 533
    invoke-virtual/range {p3 .. p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v18

    .line 534
    .local v18, strKey:Ljava/lang/String;
    move/from16 v19, p4

    .line 537
    .local v19, value:I
    const/16 v21, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 539
    .local v16, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 540
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getControlMode(I)Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-result-object v6

    .line 543
    .local v6, controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    move-object/from16 v0, v21

    if-ne v6, v0, :cond_225

    .line 545
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual/range {p3 .. p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_3c4

    .line 647
    const-string v21, "MusicFXControlPanelEffect"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setParameterInt: Unknown/unsupported key "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v6           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #prefs:Landroid/content/SharedPreferences;
    :goto_47
    return-void

    .line 549
    .restart local v6       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .restart local v11       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v16       #prefs:Landroid/content/SharedPreferences;
    :pswitch_48
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getVirtualizerEffect(I)Landroid/media/audiofx/Virtualizer;

    move-result-object v20

    .line 550
    .local v20, virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    if-eqz v20, :cond_5a

    .line 551
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V

    .line 552
    invoke-virtual/range {v20 .. v20}, Landroid/media/audiofx/Virtualizer;->getRoundedStrength()S

    move-result v19

    .line 733
    .end local v20           #virtualizerEffect:Landroid/media/audiofx/Virtualizer;
    :cond_5a
    :goto_5a
    :pswitch_5a
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 734
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_64} :catch_65

    goto :goto_47

    .line 736
    .end local v6           #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #prefs:Landroid/content/SharedPreferences;
    :catch_65
    move-exception v7

    .line 737
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v21, "MusicFXControlPanelEffect"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setParameterInt: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 558
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v6       #controlMode:Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .restart local v11       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v16       #prefs:Landroid/content/SharedPreferences;
    :pswitch_ab
    :try_start_ab
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getBassBoostEffect(I)Landroid/media/audiofx/BassBoost;

    move-result-object v5

    .line 559
    .local v5, bassBoostEffect:Landroid/media/audiofx/BassBoost;
    if-eqz v5, :cond_5a

    .line 560
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 561
    invoke-virtual {v5}, Landroid/media/audiofx/BassBoost;->getRoundedStrength()S

    move-result v19

    goto :goto_5a

    .line 567
    .end local v5           #bassBoostEffect:Landroid/media/audiofx/BassBoost;
    :pswitch_c0
    const/16 v21, -0x1

    move/from16 v0, p5

    move/from16 v1, v21

    if-ne v0, v1, :cond_d0

    .line 568
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Dummy arg passed."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 570
    :cond_d0
    move/from16 v0, p5

    int-to-short v3, v0

    .line 571
    .local v3, band:S
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 572
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v12

    .line 573
    .local v12, equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v12, :cond_5a

    .line 574
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v3, v0}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 575
    invoke-virtual {v12, v3}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v19

    .line 577
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_5a

    .line 582
    .end local v3           #band:S
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    :pswitch_120
    invoke-static/range {p2 .. p2}, Lcom/android/musicfx/ControlPanelEffect;->getEqualizerEffect(I)Landroid/media/audiofx/Equalizer;

    move-result-object v12

    .line 583
    .restart local v12       #equalizerEffect:Landroid/media/audiofx/Equalizer;
    if-eqz v12, :cond_5a

    .line 584
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v17, v0

    .line 585
    .local v17, preset:S
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v21 .. v21}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x5

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 587
    .local v14, numBands:I
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v21 .. v21}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 590
    .local v15, numPresets:I
    move/from16 v0, v17

    if-ge v0, v15, :cond_187

    .line 592
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 593
    invoke-virtual {v12}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S

    move-result v19

    .line 618
    :cond_15c
    const/4 v3, 0x0

    .restart local v3       #band:S
    :goto_15d
    if-ge v3, v14, :cond_5a

    .line 619
    invoke-virtual {v12, v3}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v13

    .line 620
    .local v13, level:S
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 618
    add-int/lit8 v21, v3, 0x1

    move/from16 v0, v21

    int-to-short v3, v0

    goto :goto_15d

    .line 595
    .end local v3           #band:S
    .end local v13           #level:S
    :cond_187
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v8

    .line 597
    .local v8, eQPresetCIExtremeBandLevelDefault:[S
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v10

    .line 600
    .local v10, eQPresetUserBandLevelDefault:[S
    const/4 v3, 0x0

    .restart local v3       #band:S
    :goto_198
    if-ge v3, v14, :cond_15c

    .line 601
    const/4 v4, 0x0

    .line 602
    .local v4, bandLevel:S
    move/from16 v0, v17

    if-ne v0, v15, :cond_1d0

    .line 604
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aget-short v22, v8, v3

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-short v4, v0

    .line 613
    :goto_1c7
    invoke-virtual {v12, v3, v4}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 600
    add-int/lit8 v21, v3, 0x1

    move/from16 v0, v21

    int-to-short v3, v0

    goto :goto_198

    .line 609
    :cond_1d0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aget-short v22, v10, v3

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-short v4, v0

    goto :goto_1c7

    .line 630
    .end local v3           #band:S
    .end local v4           #bandLevel:S
    .end local v8           #eQPresetCIExtremeBandLevelDefault:[S
    .end local v10           #eQPresetUserBandLevelDefault:[S
    .end local v12           #equalizerEffect:Landroid/media/audiofx/Equalizer;
    .end local v14           #numBands:I
    .end local v15           #numPresets:I
    .end local v17           #preset:S
    :pswitch_1f9
    const/16 v21, -0x1

    move/from16 v0, p5

    move/from16 v1, v21

    if-ne v0, v1, :cond_209

    .line 631
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Dummy arg passed."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 633
    :cond_209
    move/from16 v0, p5

    int-to-short v3, v0

    .line 634
    .restart local v3       #band:S
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 635
    goto/16 :goto_5a

    .line 651
    .end local v3           #band:S
    :cond_225
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect$1;->$SwitchMap$com$android$musicfx$ControlPanelEffect$Key:[I

    invoke-virtual/range {p3 .. p3}, Lcom/android/musicfx/ControlPanelEffect$Key;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_3d8

    .line 727
    const-string v21, "MusicFXControlPanelEffect"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setParameterInt: Unknown/unsupported key "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 667
    :pswitch_24e
    const/16 v21, -0x1

    move/from16 v0, p5

    move/from16 v1, v21

    if-ne v0, v1, :cond_25e

    .line 668
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Dummy arg passed."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 670
    :cond_25e
    move/from16 v0, p5

    int-to-short v3, v0

    .line 671
    .restart local v3       #band:S
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 673
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_5a

    .line 677
    .end local v3           #band:S
    :pswitch_29a
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v17, v0

    .line 678
    .restart local v17       #preset:S
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v21 .. v21}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x5

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 680
    .restart local v14       #numBands:I
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v21 .. v21}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 683
    .restart local v15       #numPresets:I
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_OPENSL_ES_BAND_LEVEL_DEFAULT:[[S

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    .line 685
    .local v9, eQPresetOpenSLESBandLevelDefault:[[S
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_CIEXTREME_BAND_LEVEL:[S

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v8

    .line 687
    .restart local v8       #eQPresetCIExtremeBandLevelDefault:[S
    sget-object v21, Lcom/android/musicfx/ControlPanelEffect;->EQUALIZER_PRESET_USER_BAND_LEVEL_DEFAULT:[S

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v10

    .line 689
    .restart local v10       #eQPresetUserBandLevelDefault:[S
    const/4 v3, 0x0

    .restart local v3       #band:S
    :goto_2de
    if-ge v3, v14, :cond_5a

    .line 690
    const/4 v4, 0x0

    .line 691
    .restart local v4       #bandLevel:S
    move/from16 v0, v17

    if-ge v0, v15, :cond_341

    .line 693
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aget-object v22, v9, v17

    aget-short v22, v22, v3

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-short v4, v0

    .line 707
    :goto_31d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 689
    add-int/lit8 v21, v3, 0x1

    move/from16 v0, v21

    int-to-short v3, v0

    goto :goto_2de

    .line 696
    :cond_341
    move/from16 v0, v17

    if-ne v0, v15, :cond_36e

    .line 698
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aget-short v22, v8, v3

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-short v4, v0

    goto :goto_31d

    .line 703
    :cond_36e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual/range {v22 .. v22}, Lcom/android/musicfx/ControlPanelEffect$Key;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aget-short v22, v10, v3

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-short v4, v0

    goto :goto_31d

    .line 716
    .end local v3           #band:S
    .end local v4           #bandLevel:S
    .end local v8           #eQPresetCIExtremeBandLevelDefault:[S
    .end local v9           #eQPresetOpenSLESBandLevelDefault:[[S
    .end local v10           #eQPresetUserBandLevelDefault:[S
    .end local v14           #numBands:I
    .end local v15           #numPresets:I
    .end local v17           #preset:S
    :pswitch_397
    const/16 v21, -0x1

    move/from16 v0, p5

    move/from16 v1, v21

    if-ne v0, v1, :cond_3a7

    .line 717
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Dummy arg passed."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 719
    :cond_3a7
    move/from16 v0, p5

    int-to-short v3, v0

    .line 720
    .restart local v3       #band:S
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3c0
    .catch Ljava/lang/RuntimeException; {:try_start_ab .. :try_end_3c0} :catch_65

    move-result-object v18

    .line 721
    goto/16 :goto_5a

    .line 545
    nop

    :pswitch_data_3c4
    .packed-switch 0x6
        :pswitch_48
        :pswitch_ab
        :pswitch_c0
        :pswitch_120
        :pswitch_1f9
        :pswitch_1f9
        :pswitch_1f9
        :pswitch_5a
    .end packed-switch

    .line 651
    :pswitch_data_3d8
    .packed-switch 0x6
        :pswitch_5a
        :pswitch_5a
        :pswitch_24e
        :pswitch_29a
        :pswitch_397
        :pswitch_397
        :pswitch_397
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method
