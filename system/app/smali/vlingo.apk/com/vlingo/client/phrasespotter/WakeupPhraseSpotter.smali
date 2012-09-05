.class public Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;
.super Ljava/lang/Object;
.source "WakeupPhraseSpotter.java"


# static fields
.field public static final CONFIG_CHANGED:Ljava/lang/String; = "com.vlingo.client.samsung.phrasespotter.CONFIG_CHANGED"

.field public static final DEFAULT_PHRASESPOT_ABSBEAM:F = 100.0f

.field public static final DEFAULT_PHRASESPOT_AOFFSET:F = 0.0f

.field public static final DEFAULT_PHRASESPOT_BEAM:F = 50.0f

.field public static final DEFAULT_PHRASESPOT_DELAY:F = 100.0f

.field private static final LOG_TAG:Ljava/lang/String; = "VLG_WakeupPhraseSpotter"

.field public static final PHRASE_SPOT_DELAY_LONG:I = 0x5dc

.field public static final PHRASE_SPOT_DELAY_MINIMAL:I = 0x0

.field public static final PHRASE_SPOT_DELAY_NORMAL:I = 0x1f4

.field private static final ctx:Landroid/content/Context;

.field private static currentLanguage:Ljava/lang/String;

.field private static doLogging:Z

.field private static modelsLoaded:Z

.field private static modelsOnFilesystem:Z


# instance fields
.field private final STORAGE_DIR:Ljava/io/File;

.field private absBeam:F

.field private acousticModelFilename:Ljava/lang/String;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelResName:Ljava/lang/String;

.field private activelyListening:Z

.field private aoffset:F

.field private beam:F

.field private currentlyPowered:Z

.field private delay:F

.field private keywordSpottingEnabled:Z

.field private listeningRequested:Z

.field private onlyWhenCharging:Z

.field private phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

.field private res:Landroid/content/res/Resources;

.field private resources:Landroid/content/res/Resources;

.field private searchGrammarFilename:Ljava/lang/String;

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarResName:Ljava/lang/String;

.field private sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field private settingsChanged:Z

.field private final tonePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

.field private wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    .line 46
    sput-boolean v1, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsLoaded:Z

    .line 47
    sput-boolean v1, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsOnFilesystem:Z

    .line 53
    sget-object v0, Lcom/vlingo/client/settings/Settings;->DEFAULT_LANGUAGE:Ljava/lang/String;

    sput-object v0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentLanguage:Ljava/lang/String;

    .line 75
    sput-boolean v1, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->doLogging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/vlingo/client/android/core/audio/TonePlayer;Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;)V
    .registers 8
    .parameter "res"
    .parameter "player"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    const-string v2, "phrasespotter"

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/VlingoApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    .line 43
    iput-boolean v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->listeningRequested:Z

    .line 44
    iput-boolean v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->activelyListening:Z

    .line 45
    iput-boolean v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentlyPowered:Z

    .line 50
    iput-boolean v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->settingsChanged:Z

    .line 128
    iput-object p1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->resources:Landroid/content/res/Resources;

    .line 129
    iput-object p3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;

    .line 130
    iput-object p2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->tonePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 131
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->init()V

    .line 132
    new-instance v1, Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-direct {v1}, Lcom/vlingo/client/phrasespotter/SensoryJNI;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    .line 134
    sput-boolean v3, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsLoaded:Z

    .line 135
    sput-boolean v3, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsOnFilesystem:Z

    .line 136
    const-string v1, "car_word_spotter_enabled"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->keywordSpottingEnabled:Z

    .line 137
    const-string v1, "car_word_spotter_when_charging_only"

    invoke-static {v1, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->onlyWhenCharging:Z

    .line 139
    iput-boolean v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->settingsChanged:Z

    .line 140
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getISOLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentLanguage:Ljava/lang/String;

    .line 141
    const-string v1, "audiofilelog_enabled"

    invoke-static {v1, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 144
    .local v0, debuggingEnabled:Z
    invoke-static {v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->SetDebugLogging(Z)V

    .line 145
    return-void
.end method

.method public static SetDebugLogging(Z)V
    .registers 1
    .parameter "doLog"

    .prologue
    .line 248
    sput-boolean p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->doLogging:Z

    .line 249
    return-void
.end method

.method private StringToFloat(Ljava/lang/String;F)F
    .registers 5
    .parameter "s"
    .parameter "altval"

    .prologue
    .line 117
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p2

    .line 123
    .end local p2
    :goto_8
    return p2

    .line 119
    .restart local p2
    :catch_9
    move-exception v0

    .line 123
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method private adjustWordSpotting(Z)V
    .registers 3
    .parameter "stateAndSettingsAllow"

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->listeningRequested:Z

    if-eqz v0, :cond_17

    .line 449
    if-eqz p1, :cond_f

    .line 450
    iget-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->activelyListening:Z

    if-eqz v0, :cond_b

    .line 465
    :cond_a
    :goto_a
    return-void

    .line 453
    :cond_b
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->startPhraseSpotting()V

    goto :goto_a

    .line 456
    :cond_f
    iget-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->activelyListening:Z

    if-eqz v0, :cond_a

    .line 457
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->stopPhraseSpotting()V

    goto :goto_a

    .line 463
    :cond_17
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->stopPhraseSpotting()V

    goto :goto_a
.end method

.method private createModelFileFromResource(Landroid/content/res/Resources;ILjava/lang/String;)Z
    .registers 12
    .parameter "resources"
    .parameter "resId"
    .parameter "outputFileName"

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 324
    .local v3, is:Ljava/io/InputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 327
    .local v0, buffer:[B
    :goto_e
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, length:I
    if-lez v4, :cond_24

    .line 328
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_e

    .line 334
    .end local v0           #buffer:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #length:I
    :catch_19
    move-exception v1

    .line 335
    .local v1, e:Ljava/io/IOException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v1           #e:Ljava/io/IOException;
    :goto_23
    return v5

    .line 331
    .restart local v0       #buffer:[B
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #length:I
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 332
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 333
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_19

    .line 338
    const/4 v5, 0x1

    goto :goto_23
.end method

.method private deleteSensoryFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .parameter "dir"
    .parameter "pathname"

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_33

    .line 283
    const-string v1, "VLG_WakeupPhraseSpotter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_33
    return-void
.end method

.method private ensureModelsLoaded()Z
    .registers 11

    .prologue
    .line 500
    sget-boolean v0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsLoaded:Z

    if-nez v0, :cond_3f

    .line 503
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->getDebugSessionPathname()Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, debugSessionPathname:Ljava/lang/String;
    const/4 v9, 0x0

    .line 507
    .local v9, doLoggingParam:I
    sget-boolean v0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->doLogging:Z

    if-eqz v0, :cond_10

    if-eqz v8, :cond_10

    .line 508
    const/4 v9, 0x1

    .line 511
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->fileIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->fileIsNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 512
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->beam:F

    iget v5, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->absBeam:F

    iget v6, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->aoffset:F

    iget v7, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->delay:F

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsLoaded:Z

    if-nez v0, :cond_3f

    .line 522
    const-string v0, "VLG_WakeupPhraseSpotter"

    const-string v1, "sensoryJNI.Initialize failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v8           #debugSessionPathname:Ljava/lang/String;
    .end local v9           #doLoggingParam:I
    :cond_3f
    sget-boolean v0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsLoaded:Z

    return v0
.end method

.method private fileIsNotEmpty(Ljava/lang/String;)Z
    .registers 8
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 491
    if-nez p1, :cond_4

    .line 496
    :cond_3
    :goto_3
    return v3

    .line 494
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 496
    .local v1, fileSize:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    const/4 v3, 0x1

    goto :goto_3
.end method

.method private getAcousticModelFile(Ljava/io/File;)Z
    .registers 7
    .parameter "dir"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, acousticModelFileIsNew:Z
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelFilename:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 258
    const/4 v0, 0x1

    .line 268
    :cond_15
    :goto_15
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    .line 274
    .end local v2           #f:Ljava/io/File;
    :goto_1b
    return v0

    .line 262
    .restart local v2       #f:Ljava/io/File;
    :cond_1c
    const-string v3, "VLG_WakeupPhraseSpotter"

    const-string v4, "GetAcousticModelFile() create of acousticModelFilename failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_24

    goto :goto_15

    .line 271
    .end local v2           #f:Ljava/io/File;
    :catch_24
    move-exception v1

    .line 272
    .local v1, e:Ljava/io/IOException;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method private getDebugSessionPathname()Ljava/lang/String;
    .registers 8

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 469
    .local v2, pathname:Ljava/lang/String;
    sget-boolean v5, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->doLogging:Z

    if-eqz v5, :cond_4d

    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, gotRootDir:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 472
    .local v3, root:Ljava/io/File;
    const-string v5, "audiofilelog_index"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 474
    .local v4, uniquifier:I
    new-instance v0, Ljava/io/File;

    const-string v5, "sfs"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 475
    .local v0, debugSessionDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 476
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 477
    if-eqz v1, :cond_4d

    .line 479
    :cond_21
    new-instance v0, Ljava/io/File;

    .end local v0           #debugSessionDirectory:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sfs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .restart local v0       #debugSessionDirectory:Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_21

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 483
    const-string v5, "audiofilelog_index"

    invoke-static {v5, v4}, Lcom/vlingo/client/settings/Settings;->setInt(Ljava/lang/String;I)V

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 487
    .end local v0           #debugSessionDirectory:Ljava/io/File;
    .end local v1           #gotRootDir:Z
    .end local v3           #root:Ljava/io/File;
    .end local v4           #uniquifier:I
    :cond_4d
    return-object v2
.end method

.method private getModelandGrammarNames()V
    .registers 5

    .prologue
    const/high16 v3, 0x42c8

    .line 93
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 94
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->res:Landroid/content/res/Resources;

    .line 95
    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->res:Landroid/content/res/Resources;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelResName:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelResName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelFilename:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->res:Landroid/content/res/Resources;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarResName:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarResName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarFilename:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->res:Landroid/content/res/Resources;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, s:Ljava/lang/String;
    const/high16 v1, 0x4248

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->StringToFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->beam:F

    .line 104
    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->res:Landroid/content/res/Resources;

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0, v3}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->StringToFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->absBeam:F

    .line 107
    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->res:Landroid/content/res/Resources;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->StringToFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->aoffset:F

    .line 110
    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->res:Landroid/content/res/Resources;

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-direct {p0, v0, v3}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->StringToFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->delay:F

    .line 112
    return-void
.end method

.method private getSearchGrammarFile(Ljava/io/File;)Z
    .registers 7
    .parameter "dir"

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 293
    .local v2, searchGrammarFileIsNew:Z
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarFilename:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 297
    const/4 v2, 0x1

    .line 304
    :cond_15
    :goto_15
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarPathname:Ljava/lang/String;

    .line 310
    .end local v1           #f:Ljava/io/File;
    :goto_1b
    return v2

    .line 301
    .restart local v1       #f:Ljava/io/File;
    :cond_1c
    const-string v3, "VLG_WakeupPhraseSpotter"

    const-string v4, "GetSearchGrammarFile() create of searchGrammarFileIsNew failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_24

    goto :goto_15

    .line 307
    .end local v1           #f:Ljava/io/File;
    :catch_24
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method private startPhraseSpotting()V
    .registers 5

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->keywordSpottingEnabled:Z

    if-eqz v0, :cond_34

    .line 388
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ensureModelsOnFilesystem(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 389
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ensureModelsLoaded()Z

    .line 395
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-virtual {v0}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->MakeReady()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 397
    new-instance v0, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    iget-object v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->sensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->tonePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;-><init>(Lcom/vlingo/client/phrasespotter/SensoryJNI;Lcom/vlingo/client/android/core/audio/TonePlayer;Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;)V

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    .line 398
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    invoke-virtual {v0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->startRecord()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->activelyListening:Z

    .line 400
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;

    invoke-interface {v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;->phraseSpottingStarted()V

    .line 410
    :cond_34
    :goto_34
    return-void

    .line 402
    :cond_35
    const-string v0, "VLG_WakeupPhraseSpotter"

    const-string v1, "startRecord failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    goto :goto_34

    .line 406
    :cond_40
    const-string v0, "VLG_WakeupPhraseSpotter"

    const-string v1, "startPhraseSpotting could not MakeReady, so no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private stateAndSettingsAllowPhraseSpotting()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 427
    iget-boolean v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->keywordSpottingEnabled:Z

    if-eqz v2, :cond_11

    .line 428
    iget-boolean v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->onlyWhenCharging:Z

    if-eqz v2, :cond_e

    .line 429
    iget-boolean v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentlyPowered:Z

    if-eqz v2, :cond_f

    .line 439
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 433
    goto :goto_e

    :cond_11
    move v0, v1

    .line 439
    goto :goto_e
.end method

.method private stopPhraseSpotting()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    if-eqz v0, :cond_11

    .line 414
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    invoke-virtual {v0}, Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;->stopRecord()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    .line 416
    iget-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->wakeupPhraseSpotHandler:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;

    invoke-interface {v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;->phraseSpottingStopped()V

    .line 423
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->activelyListening:Z

    .line 424
    return-void
.end method

.method public static wakeupWordChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "language"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-static {p0}, Lcom/vlingo/client/settings/Settings;->convertToISOLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, isoLanguage:Ljava/lang/String;
    sget-object v1, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentLanguage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 89
    :goto_d
    return-void

    .line 86
    :cond_e
    sput-object v0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentLanguage:Ljava/lang/String;

    .line 87
    sput-boolean v2, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsLoaded:Z

    .line 88
    sput-boolean v2, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsOnFilesystem:Z

    goto :goto_d
.end method


# virtual methods
.method public HandleBatteryChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 241
    .local v0, plugged:I
    iget-boolean v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentlyPowered:Z

    if-eqz v0, :cond_1c

    move v3, v1

    :goto_e
    if-eq v4, v3, :cond_1b

    .line 242
    if-eqz v0, :cond_1e

    :goto_12
    iput-boolean v1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->currentlyPowered:Z

    .line 243
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->stateAndSettingsAllowPhraseSpotting()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->adjustWordSpotting(Z)V

    .line 245
    :cond_1b
    return-void

    :cond_1c
    move v3, v2

    .line 241
    goto :goto_e

    :cond_1e
    move v1, v2

    .line 242
    goto :goto_12
.end method

.method public ensureModelsOnFilesystem(Landroid/content/res/Resources;)Z
    .registers 10
    .parameter "resources"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 162
    sget-boolean v4, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsOnFilesystem:Z

    if-eqz v4, :cond_8

    move v2, v3

    .line 223
    :goto_7
    return v2

    .line 168
    :cond_8
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->getModelandGrammarNames()V

    .line 175
    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->getAcousticModelFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 176
    sget-object v4, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelResName:Ljava/lang/String;

    const-string v6, "raw"

    sget-object v7, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 177
    .local v1, resID:I
    if-nez v1, :cond_53

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIdentifier for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelResName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, errorMsg:Ljava/lang/String;
    const-string v4, "VLG_WakeupPhraseSpotter"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v4, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 183
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_53
    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->createModelFileFromResource(Landroid/content/res/Resources;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 184
    const-string v0, "CreateModelFileFromResource for acoustic model failed"

    .line 185
    .restart local v0       #errorMsg:Ljava/lang/String;
    const-string v4, "VLG_WakeupPhraseSpotter"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v4, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 187
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->deleteSensoryFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7

    .line 192
    .end local v0           #errorMsg:Ljava/lang/String;
    .end local v1           #resID:I
    :cond_73
    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->getSearchGrammarFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 195
    sget-object v4, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarResName:Ljava/lang/String;

    const-string v6, "raw"

    sget-object v7, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 196
    .restart local v1       #resID:I
    if-nez v1, :cond_c3

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIdentifier for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarResName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0       #errorMsg:Ljava/lang/String;
    const-string v4, "VLG_WakeupPhraseSpotter"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v4, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->deleteSensoryFile(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 203
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_c3
    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->createModelFileFromResource(Landroid/content/res/Resources;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_eb

    .line 204
    const-string v0, "CreateModelFileFromResource for search grammar failed"

    .line 205
    .restart local v0       #errorMsg:Ljava/lang/String;
    const-string v4, "VLG_WakeupPhraseSpotter"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v4, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 207
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->deleteSensoryFile(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->deleteSensoryFile(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 213
    .end local v0           #errorMsg:Ljava/lang/String;
    .end local v1           #resID:I
    :cond_eb
    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->fileIsNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fc

    iget-object v4, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->fileIsNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fc

    move v2, v3

    :cond_fc
    sput-boolean v2, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsOnFilesystem:Z

    .line 216
    sget-boolean v2, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsOnFilesystem:Z

    if-nez v2, :cond_120

    .line 217
    const-string v0, "ensureModelsOnFilesystem() failed"

    .line 218
    .restart local v0       #errorMsg:Ljava/lang/String;
    const-string v2, "VLG_WakeupPhraseSpotter"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v2, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ctx:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 220
    iget-object v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->deleteSensoryFile(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->STORAGE_DIR:Ljava/io/File;

    iget-object v3, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->deleteSensoryFile(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_120
    sget-boolean v2, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->modelsOnFilesystem:Z

    goto/16 :goto_7
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->phraseSpotterControl:Lcom/vlingo/client/phrasespotter/PhraseSpotterControl;

    .line 150
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    return-void
.end method

.method public isListening()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->activelyListening:Z

    return v0
.end method

.method public onConfigChanged()V
    .registers 3

    .prologue
    .line 156
    const-string v0, "car_word_spotter_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->keywordSpottingEnabled:Z

    .line 157
    const-string v0, "car_word_spotter_when_charging_only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->onlyWhenCharging:Z

    .line 158
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->stateAndSettingsAllowPhraseSpotting()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->adjustWordSpotting(Z)V

    .line 159
    return-void
.end method

.method public declared-synchronized setListeningRequested(Z)V
    .registers 3
    .parameter "listen"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->listeningRequested:Z

    if-eq p1, v0, :cond_e

    .line 228
    iput-boolean p1, p0, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->listeningRequested:Z

    .line 229
    invoke-direct {p0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->stateAndSettingsAllowPhraseSpotting()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->adjustWordSpotting(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 231
    :cond_e
    monitor-exit p0

    return-void

    .line 227
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
