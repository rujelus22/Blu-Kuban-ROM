.class public Lcom/swype/android/jni/SwypeCore;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;,
        Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;,
        Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;,
        Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;,
        Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;,
        Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;,
        Lcom/swype/android/jni/SwypeCore$LanguageList;,
        Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;,
        Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;,
        Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;,
        Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;,
        Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;,
        Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;,
        Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;,
        Lcom/swype/android/jni/SwypeCore$InputWindowCallback;
    }
.end annotation


# static fields
.field private static final COMPRESSED_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final PARAM_IS_TRIAL_BUILD:Ljava/lang/String; = "is_trial"

.field public static final PARAM_NUMBER_OF_TIMERS:Ljava/lang/String; = "timer_count"

.field public static final PARAM_VERSION_STRING:Ljava/lang/String; = "version"


# instance fields
.field private appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

.field private choiceWindowCallback:Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;

.field private currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

.field private final fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

.field private helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

.field private imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

.field private inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

.field private isDebugVersion:Z

.field private licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

.field private peer:J

.field private peerRefCount:I

.field private propDialogCallback:Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;

.field private final swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

.field private final timer:Ljava/util/Timer;

.field private final timerCount:I

.field private final timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

.field private volatile udbManagerCallback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 961
    sget-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_VERSION_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/swype/android/jni/SwypeCore;->loadNativeLibrary(Ljava/lang/String;)Z

    move-result v0

    .line 964
    if-nez v0, :cond_e

    .line 965
    sget-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->DEFAULT_NATIVE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/swype/android/jni/SwypeCore;->loadNativeLibrary(Ljava/lang/String;)Z

    move-result v0

    .line 972
    :cond_e
    if-nez v0, :cond_15

    .line 974
    :try_start_10
    const-string v0, "SwypeCore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 979
    :cond_15
    :goto_15
    return-void

    .line 975
    :catch_16
    move-exception v0

    .line 976
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Loading JNI lib:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeApplication;)V
    .registers 3
    .parameter "swypeApp"

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore;->timer:Ljava/util/Timer;

    .line 937
    new-instance v0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-direct {v0, p0}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;-><init>(Lcom/swype/android/jni/SwypeCore;)V

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    .line 949
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    .line 950
    const-string v0, "version"

    invoke-direct {p0, v0}, Lcom/swype/android/jni/SwypeCore;->nativeGetJNIProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore;->version:Ljava/lang/String;

    .line 951
    const-string v0, "timer_count"

    invoke-direct {p0, v0}, Lcom/swype/android/jni/SwypeCore;->nativeGetJNIProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/swype/android/jni/SwypeCore;->timerCount:I

    .line 952
    iget v0, p0, Lcom/swype/android/jni/SwypeCore;->timerCount:I

    new-array v0, v0, [Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    .line 953
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/jni/SwypeCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeTimerFunction(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/swype/android/jni/SwypeCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeCloseDescriptor(I)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/InputStream;[BII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore;->readSafe(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method private declared-synchronized create(ILjava/lang/String;)Z
    .registers 8
    .parameter "initialOrientation"
    .parameter "screenSize"

    .prologue
    const-wide/16 v3, 0x0

    .line 1065
    monitor-enter p0

    :try_start_3
    iget-wide v1, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    const/4 v1, 0x1

    move v0, v1

    .line 1066
    .local v0, initial:Z
    :goto_b
    if-eqz v0, :cond_18

    .line 1067
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->initializeDirectories()V

    .line 1068
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->nativeCreate(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    .line 1070
    :cond_18
    iget-wide v1, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    .line 1071
    iget v1, p0, Lcom/swype/android/jni/SwypeCore;->peerRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/swype/android/jni/SwypeCore;->peerRefCount:I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_29

    .line 1073
    :cond_24
    monitor-exit p0

    return v0

    .line 1065
    .end local v0           #initial:Z
    :cond_26
    const/4 v1, 0x0

    move v0, v1

    goto :goto_b

    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected static loadNativeLibrary(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 990
    const/4 v0, 0x0

    .line 993
    :try_start_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_59

    move v0, v5

    .line 1003
    :cond_2c
    :goto_2c
    if-nez v0, :cond_58

    .line 1005
    :try_start_2e
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/swype/android/inputmethod/SwypeApplication;->SYSTEM_NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/swype/android/inputmethod/SwypeApplication;->SYSTEM_NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_57} :catch_77

    move v0, v5

    .line 1017
    :cond_58
    :goto_58
    return v0

    .line 999
    :catch_59
    move-exception v1

    .line 1000
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading local library:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1012
    :catch_77
    move-exception v1

    .line 1013
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading System library:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method private native nativeAddLanguageToConfigFile(Ljava/lang/String;)Z
.end method

.method private native nativeAddUserWord(Ljava/lang/String;IZ)V
.end method

.method private native nativeAppDoubleTap()V
.end method

.method private native nativeAppSingleTap()V
.end method

.method private native nativeCancelCurrentInputGesture()V
.end method

.method private native nativeCheckLicense()V
.end method

.method private native nativeCloseDescriptor(I)V
.end method

.method private native nativeCreate(ILjava/lang/String;)J
.end method

.method private native nativeDeleteAllUserWords()V
.end method

.method private native nativeDeleteUserWord(Ljava/lang/String;)V
.end method

.method private native nativeDontShowHelpAgain()V
.end method

.method private native nativeDrawKeyboard(IIII)V
.end method

.method private native nativeFindUserWords(Ljava/lang/String;)V
.end method

.method private native nativeFinishPendingConversion(Z)V
.end method

.method private native nativeFlushUserDatabase()V
.end method

.method private native nativeGetActiveDispaly()I
.end method

.method private native nativeGetActiveDisplayFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetAttributionText()Ljava/lang/String;
.end method

.method private native nativeGetDescriptorFromFD(Ljava/io/FileDescriptor;)I
.end method

.method private native nativeGetDisplayNameFromLanguage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetInterfaceLanguage()Ljava/lang/String;
.end method

.method private native nativeGetJNIProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetKeyboardHorzPos()I
.end method

.method private native nativeGetKeyboardSize()[I
.end method

.method private native nativeGetKeyboardSizeByOrientation(I)[I
.end method

.method private native nativeGetLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetLanguageForLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetMessageLanguage()Ljava/lang/String;
.end method

.method private native nativeGetSettingAsIntOrBool(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method private native nativeGetSettingAsStr(I)Ljava/lang/String;
.end method

.method private native nativeGetSupportedLanguages()Ljava/lang/String;
.end method

.method private native nativeGetSwib()Ljava/lang/String;
.end method

.method private native nativeGetTutorialFirstPage()Ljava/lang/String;
.end method

.method private native nativeIsDiacritic(I)Z
.end method

.method private native nativeIsLanguageMGD(Ljava/lang/String;)Z
.end method

.method private native nativeLoadSettings(I)[I
.end method

.method private native nativeNotifyCandidatesGone()V
.end method

.method private native nativeNotifyCursorMovedFromCandidates()V
.end method

.method private native nativeNotifyInsertionPointUpdate()V
.end method

.method private native nativeNotifyNewInputSession()V
.end method

.method private native nativeOnConversionCandidateLongPressed(I)V
.end method

.method private native nativeOnConversionCandidateSelect(I)V
.end method

.method private native nativeOnConversionSpellingEditTap(I)V
.end method

.method private native nativeOnHidingKeyboard()V
.end method

.method private native nativeOnShowingKeyboard()V
.end method

.method private native nativeOnUserQueryResult(ZI)V
.end method

.method private native nativePropagateVkc(IZ)V
.end method

.method private native nativeRefreshKeyboard()V
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeRemoveLanguageFromConfigFile(Ljava/lang/String;)Z
.end method

.method private native nativeReplaceUserWord(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSaveSettings([I)V
.end method

.method private native nativeSendMouseData(IIIIIJ)V
.end method

.method private native nativeSetActiveDisplay(II)V
.end method

.method private native nativeSetDebugShowKeyBoundaries(Z)V
.end method

.method private native nativeSetHardwareKeyboard(Z)V
.end method

.method private native nativeSetKeyboardHorzPos(I)V
.end method

.method private native nativeSetListOfInactiveLanguages(Ljava/lang/String;)V
.end method

.method private native nativeSetLocale(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetMessageLanguage(Ljava/lang/String;)V
.end method

.method private native nativeSetMessageLanguageSync(Ljava/lang/String;)V
.end method

.method private native nativeSetOrientation(II)V
.end method

.method private native nativeSetReturnKeyLabel(Ljava/lang/String;)V
.end method

.method private native nativeSetReturnKeyType(I)V
.end method

.method private native nativeStartTutorial()Z
.end method

.method private native nativeStopTutorial()V
.end method

.method private native nativeSwitchKeyboardLayout(I)V
.end method

.method private native nativeTimerFunction(I)V
.end method

.method private native nativeTutorialOnButtonPress(I)Ljava/lang/String;
.end method

.method private native nativeUpdateAutoCap()V
.end method

.method private native nativeUpdateAutoSpace(Z)V
.end method

.method private ncbAddFont(Ljava/lang/String;)Z
    .registers 3
    .parameter "fontName"

    .prologue
    .line 2192
    const/4 v0, 0x1

    return v0
.end method

.method private ncbAppGetEditorText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v1, :cond_e

    .line 1549
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->getEditorText()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_e

    move-object v1, v0

    .line 1554
    .end local v0           #text:Ljava/lang/String;
    :goto_d
    return-object v1

    :cond_e
    const-string v1, ""

    goto :goto_d
.end method

.method private ncbAppGetSelectedTextPos()[I
    .registers 3

    .prologue
    .line 1585
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v1, :cond_e

    .line 1586
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->getSelectedTextRegion()[I

    move-result-object v0

    .line 1587
    .local v0, result:[I
    if-eqz v0, :cond_e

    move-object v1, v0

    .line 1591
    .end local v0           #result:[I
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_16

    goto :goto_d

    nop

    :array_16
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private ncbAppOnDetectZ1Path()V
    .registers 2

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 2095
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onDetectZ1Path()V

    .line 2097
    :cond_9
    return-void
.end method

.method private ncbAppPlayBeep()V
    .registers 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 1641
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->playBeep()V

    .line 1643
    :cond_9
    return-void
.end method

.method private ncbAppReplaceText(ILjava/lang/String;)Z
    .registers 4
    .parameter "deleteLength"
    .parameter "newText"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_b

    .line 1571
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->replaceText(ILjava/lang/String;)Z

    move-result v0

    .line 1573
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbAppSelectText(IIZ)V
    .registers 5
    .parameter "start"
    .parameter "length"
    .parameter "immediate"

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 1562
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->selectTextRegion(IIZ)V

    .line 1564
    :cond_9
    return-void
.end method

.method private ncbAppSendChar(CZI)Z
    .registers 5
    .parameter "ch"
    .parameter "shiftKeyIsDown"
    .parameter "vkc"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_b

    .line 1481
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onInputChar(CZI)Z

    move-result v0

    .line 1483
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbAppSendControlChar(C)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 1493
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onControlChar(C)V

    .line 1495
    :cond_9
    return-void
.end method

.method private ncbAppSendText(Ljava/lang/String;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_b

    .line 1517
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onInputString(Ljava/lang/String;)Z

    move-result v0

    .line 1519
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbAppSendVKC(IZZZZI)V
    .registers 14
    .parameter "vkc"
    .parameter "shiftKeyIsDown"
    .parameter "controlKeyIsDown"
    .parameter "shiftModeIsOn"
    .parameter "controlModeIsOn"
    .parameter "sendUpDown"

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_f

    .line 1505
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onInputVKC(IZZZZI)V

    .line 1508
    :cond_f
    return-void
.end method

.method private ncbAppShowMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_a

    .line 1632
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1634
    :cond_a
    return-void
.end method

.method private ncbAppShowTipNotify(Ljava/lang/String;I)V
    .registers 4
    .parameter "tipText"
    .parameter "duration"

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 1654
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->showTipNotify(Ljava/lang/String;I)V

    .line 1656
    :cond_9
    return-void
.end method

.method private ncbAppShowUserQuery(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "title"
    .parameter "question"
    .parameter "token"

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 1623
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->showUserQuery(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1625
    :cond_9
    return-void
.end method

.method private ncbBeginBatchEdit()V
    .registers 2

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 2208
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onBeginBatchEdit()V

    .line 2210
    :cond_9
    return-void
.end method

.method private ncbChoiceWindowDrawBitmap(Ljava/lang/String;II)V
    .registers 5
    .parameter "bitmapName"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1440
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onChoiceWindowDrawBitmap(Ljava/lang/String;II)V

    .line 1442
    :cond_9
    return-void
.end method

.method private ncbChoiceWindowDrawBitmapTiledX(Ljava/lang/String;III)V
    .registers 6
    .parameter "bitmapName"
    .parameter "x"
    .parameter "y"
    .parameter "repeat"

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1454
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onChoiceWindowDrawBitmapTiledX(Ljava/lang/String;III)V

    .line 1456
    :cond_9
    return-void
.end method

.method private ncbChoiceWindowDrawPolygon(I[S)V
    .registers 4
    .parameter "color"
    .parameter "points"

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1365
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onChoiceWindowDrawPolygon(I[S)V

    .line 1367
    :cond_9
    return-void
.end method

.method private ncbChoiceWindowDrawText(ZLjava/lang/String;IIIIIII)V
    .registers 20
    .parameter "isHilited"
    .parameter "text"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "color"
    .parameter "textStyle"
    .parameter "alignment"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_16

    .line 1355
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onChoiceWindowDrawText(ZLjava/lang/String;IIIIIII)V

    .line 1358
    :cond_16
    return-void
.end method

.method private ncbChoiceWindowHide()V
    .registers 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->choiceWindowCallback:Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;

    if-eqz v0, :cond_9

    .line 1385
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->choiceWindowCallback:Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;->onHideChoice()V

    .line 1387
    :cond_9
    return-void
.end method

.method private ncbChoiceWindowSetBgColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1427
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onSetChoiceWindowBackground(I)V

    .line 1429
    :cond_9
    return-void
.end method

.method private ncbChoiceWindowSetPos(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_e

    .line 1376
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onSetChoiceWindowPosition(Landroid/graphics/Rect;)V

    .line 1378
    :cond_e
    return-void
.end method

.method private ncbChoiceWindowShow(I)V
    .registers 3
    .parameter "winType"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->choiceWindowCallback:Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;

    if-eqz v0, :cond_9

    .line 1394
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->choiceWindowCallback:Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;->onShowChoice(I)V

    .line 1396
    :cond_9
    return-void
.end method

.method private ncbCloseAssetFile(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->remove(Ljava/lang/String;)Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;

    move-result-object v0

    .line 2005
    if-eqz v0, :cond_b

    .line 2007
    :try_start_8
    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 2012
    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method private ncbCloseLicenseFile()V
    .registers 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

    if-eqz v0, :cond_9

    .line 1825
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;->closeLicense()V

    .line 1827
    :cond_9
    return-void
.end method

.method private ncbEndBatchEdit()V
    .registers 2

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 2214
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onEndBatchEdit()V

    .line 2216
    :cond_9
    return-void
.end method

.method private ncbGetApplicationId()I
    .registers 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_b

    .line 1603
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->getApplicationId()I

    move-result v0

    .line 1605
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbGetAssetFileLength(Ljava/lang/String;)J
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 2023
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->get(Ljava/lang/String;)Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;

    move-result-object v0

    .line 2024
    if-eqz v0, :cond_38

    .line 2026
    :try_start_a
    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;->available()J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f

    move-result-wide v0

    .line 2033
    :goto_e
    return-wide v0

    .line 2027
    :catch_f
    move-exception v0

    .line 2028
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ncbGetRawFileLength \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v4

    .line 2030
    goto :goto_e

    :cond_38
    move-wide v0, v4

    .line 2033
    goto :goto_e
.end method

.method private ncbGetAssetFileStartOffset(Ljava/lang/String;)J
    .registers 5
    .parameter "fileName"

    .prologue
    .line 2015
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v1, p1}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->get(Ljava/lang/String;)Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;

    move-result-object v0

    .line 2016
    .local v0, rof:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;
    if-eqz v0, :cond_d

    .line 2017
    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;->getStartOffset()J

    move-result-wide v1

    .line 2019
    :goto_c
    return-wide v1

    :cond_d
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method private ncbGetChocieWindowTextBounds(Ljava/lang/String;II)[I
    .registers 8
    .parameter "text"
    .parameter "style"
    .parameter "horizontalAlign"

    .prologue
    const/4 v2, 0x4

    .line 1753
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v1, :cond_22

    .line 1754
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v1, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->getChoiceWindowTextBounds(Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 1757
    .local v0, bounds:Landroid/graphics/Rect;
    new-array v1, v2, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    aput v3, v1, v2

    .line 1764
    .end local v0           #bounds:Landroid/graphics/Rect;
    :goto_21
    return-object v1

    :cond_22
    new-array v1, v2, [I

    fill-array-data v1, :array_28

    goto :goto_21

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private ncbGetDefaultCandidateIndex()I
    .registers 2

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    if-eqz v0, :cond_b

    .line 2184
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;->getDefaultCandidateIndex()I

    move-result v0

    .line 2186
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private ncbGetEditorPropertyType(I)Z
    .registers 3
    .parameter "property"

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_b

    .line 1527
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->getEditorProperty(I)Z

    move-result v0

    .line 1529
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbGetEditorPropertyValue(I)I
    .registers 3
    .parameter "property"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_b

    .line 1538
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->getAdditionalEditorProperty(I)I

    move-result v0

    .line 1540
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbGetLicenseValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

    if-eqz v0, :cond_b

    .line 1837
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;->getLicenseValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1839
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbGetScreenDimension()[I
    .registers 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_b

    .line 1801
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->getScreenDimension()[I

    move-result-object v0

    .line 1803
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbHideNavigationBar()V
    .registers 2

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 2256
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->hideNavigationBar()V

    .line 2258
    :cond_9
    return-void
.end method

.method private ncbIsReturnKeyShowingEmoticon()Z
    .registers 2

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_b

    .line 2057
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->isReturnKeyUsedAsEmoticon()Z

    move-result v0

    .line 2059
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbIsShowingChoiceWindow()Z
    .registers 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_b

    .line 1403
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->isShowingChoiceWindow()Z

    move-result v0

    .line 1405
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbIsShowingHWCL()Z
    .registers 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_b

    .line 1414
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->isShowingHWCL()Z

    move-result v0

    .line 1416
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbIsShowingHelpDialog()Z
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    if-eqz v0, :cond_b

    .line 1714
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;->isHelpDialogShown()Z

    move-result v0

    .line 1716
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbKBBeginDraw()V
    .registers 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1286
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawBegin()V

    .line 1288
    :cond_9
    return-void
.end method

.method private ncbKBBeginDrawBuf(I)V
    .registers 3
    .parameter "imageLayer"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1292
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBBeginDrawBuf(I)V

    .line 1294
    :cond_9
    return-void
.end method

.method private ncbKBDrawBackground(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1348
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawBackground(I)V

    .line 1350
    :cond_9
    return-void
.end method

.method private ncbKBDrawBitmap(Ljava/lang/String;IIIIIII)V
    .registers 15
    .parameter "bitmapName"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "horizontalAlign"
    .parameter "verticalAlign"
    .parameter "scaleType"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_12

    .line 1326
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, p1

    move v3, p6

    move v4, p7

    move v5, p8

    invoke-interface/range {v0 .. v5}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawBitmap(Ljava/lang/String;Landroid/graphics/Rect;III)V

    .line 1329
    :cond_12
    return-void
.end method

.method private ncbKBDrawHighlight(IIIII)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "hiliteLevel"

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_e

    .line 1342
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawHighlight(IIIII)V

    .line 1344
    :cond_e
    return-void
.end method

.method private ncbKBDrawKeyboardBitmap(Ljava/lang/String;IIIZ)V
    .registers 12
    .parameter "keyboard"
    .parameter "activeKeyboard"
    .parameter "shiftState"
    .parameter "keyboardType"
    .parameter "isDynamic"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_e

    .line 1305
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawKeyboardBitmap(Ljava/lang/String;IIIZ)V

    .line 1308
    :cond_e
    return-void
.end method

.method private ncbKBDrawLine(IIIIII)V
    .registers 14
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "color"
    .parameter "lineWidth"

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_f

    .line 1313
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawLine(IIIIII)V

    .line 1315
    :cond_f
    return-void
.end method

.method private ncbKBDrawText(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .parameter "text"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "color"
    .parameter "fontSize"
    .parameter "horizontalAlign"
    .parameter "verticalAlign"
    .parameter "alternativeIcon"
    .parameter "fontName"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_1c

    .line 1335
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawText(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_1c
    return-void
.end method

.method private ncbKBDrawTrace(II[S)V
    .registers 5
    .parameter "color"
    .parameter "lineWidth"
    .parameter "points"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1319
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBDrawTrace(II[S)V

    .line 1321
    :cond_9
    return-void
.end method

.method private ncbKBFlushDrawingBuf(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1470
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBFlushDrawingBuf(IIII)V

    .line 1472
    :cond_9
    return-void
.end method

.method private ncbKBInvalidate()V
    .registers 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1267
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBInvalidate()V

    .line 1269
    :cond_9
    return-void
.end method

.method private ncbKBInvalidateRect(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v1, :cond_e

    .line 1273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1274
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v1, v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBInvalidateRect(Landroid/graphics/Rect;)V

    .line 1276
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_e
    return-void
.end method

.method private ncbKBSetClipping(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1298
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKBSetClipping(IIII)V

    .line 1300
    :cond_9
    return-void
.end method

.method private ncbLaunchVideo()V
    .registers 2

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    if-eqz v0, :cond_9

    .line 2068
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;->launchVideo()V

    .line 2070
    :cond_9
    return-void
.end method

.method private ncbMaximumSpellingSegmentReached()Z
    .registers 2

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    if-eqz v0, :cond_b

    .line 2172
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;->hasMaximumSpellingSegmentReached()Z

    move-result v0

    .line 2174
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbOnActivateConversionIME(B)V
    .registers 3
    .parameter "imeType"

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 2126
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->onActivateConversionIME(B)V

    .line 2128
    :cond_9
    return-void
.end method

.method private ncbOnFoundUserWords([Ljava/lang/String;)V
    .registers 3
    .parameter "words"

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->udbManagerCallback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;

    .line 2223
    .local v0, callback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;
    if-eqz v0, :cond_7

    .line 2224
    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;->onFoundUserWords([Ljava/lang/String;)V

    .line 2226
    :cond_7
    return-void
.end method

.method private ncbOnHighlight(IIIIII)Z
    .registers 14
    .parameter "level"
    .parameter "key"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_11

    .line 1869
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onHighlight(IIIIII)Z

    move-result v0

    .line 1871
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private ncbOnKey(IIIIII)Z
    .registers 14
    .parameter "key"
    .parameter "vkc"
    .parameter "type"
    .parameter "touchId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_11

    .line 1857
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onKeyFromCore(IIIIII)Z

    move-result v0

    .line 1859
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private ncbOnLanguageChanged()V
    .registers 2

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 2262
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onLanguageChanged()V

    .line 2264
    :cond_9
    return-void
.end method

.method private ncbOnSetComposingRegion(II)Z
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    if-eqz v0, :cond_b

    .line 2152
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    invoke-interface {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;->onSetComposingRegion(II)Z

    move-result v0

    .line 2154
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbOnShowCompleteHelp(Ljava/lang/String;)V
    .registers 3
    .parameter "htmlHelpText"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    if-eqz v0, :cond_9

    .line 1738
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;->showCompleteHelp(Ljava/lang/String;)V

    .line 1740
    :cond_9
    return-void
.end method

.method private ncbOnShowContextHelp(Ljava/lang/String;)V
    .registers 3
    .parameter "htmlHelpText"

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    if-eqz v0, :cond_9

    .line 1727
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;->showContextHelp(Ljava/lang/String;)V

    .line 1729
    :cond_9
    return-void
.end method

.method private ncbOnUpdateConversionCandidates([Ljava/lang/String;[I)V
    .registers 4
    .parameter "candidatesStr"
    .parameter "properties"

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    if-eqz v0, :cond_9

    .line 2162
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    invoke-interface {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;->onUpdateCandidates([Ljava/lang/String;[I)V

    .line 2164
    :cond_9
    return-void
.end method

.method private ncbOnUpdateConversionSpellingText([Ljava/lang/String;[B)Z
    .registers 4
    .parameter "spellingStringSegment"
    .parameter "strSegmentStates"

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    if-eqz v0, :cond_b

    .line 2145
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    invoke-interface {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;->onUpdateSpellingText([Ljava/lang/String;[B)Z

    move-result v0

    .line 2147
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbOnUserWordDeleted(Ljava/lang/String;)V
    .registers 3
    .parameter "word"

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->udbManagerCallback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;

    .line 2243
    .local v0, callback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;
    if-eqz v0, :cond_7

    .line 2244
    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;->onUserWordDeleted(Ljava/lang/String;)V

    .line 2246
    :cond_7
    return-void
.end method

.method private ncbOnUserWordsAdded([Ljava/lang/String;)V
    .registers 3
    .parameter "words"

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->udbManagerCallback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;

    .line 2233
    .local v0, callback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;
    if-eqz v0, :cond_7

    .line 2234
    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;->onUserWordsAdded([Ljava/lang/String;)V

    .line 2236
    :cond_7
    return-void
.end method

.method private ncbOnWindowDrawFlush(I)V
    .registers 3
    .parameter "whichWindow"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1460
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onWindowDrawFlush(I)V

    .line 1462
    :cond_9
    return-void
.end method

.method private ncbOpenAssetFile(Ljava/lang/String;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1906
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->normlizeAssetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1908
    if-eqz v0, :cond_8b

    .line 1911
    :try_start_8
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_1b

    move-result-object v0

    .line 1939
    :goto_12
    if-eqz v0, :cond_89

    .line 1940
    :try_start_14
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v1, p1, v0}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->addObject(Ljava/lang/String;Ljava/io/InputStream;)V

    move v0, v5

    .line 1951
    :goto_1a
    return v0

    .line 1922
    :catch_1b
    move-exception v1

    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1925
    if-eqz v1, :cond_8d

    const-string v2, ".le"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1927
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1928
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1929
    if-eqz v2, :cond_55

    .line 1930
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v1, p1, v0, v2}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->addObject(Ljava/lang/String;Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V

    move v0, v5

    .line 1931
    goto :goto_1a

    .line 1933
    :cond_55
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_58} :catch_5a

    .line 1934
    const/4 v0, 0x0

    goto :goto_12

    .line 1943
    :catch_5a
    move-exception v0

    .line 1944
    const-string v1, "inactivelang.txt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 1945
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ncbOpenAssetFile \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    move v0, v4

    .line 1949
    goto :goto_1a

    :cond_8b
    move v0, v4

    .line 1951
    goto :goto_1a

    :cond_8d
    move-object v0, v1

    goto :goto_12
.end method

.method private ncbOpenAssetFileFd(Ljava/lang/String;)I
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1964
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->normlizeAssetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    if-eqz v0, :cond_68

    .line 1967
    :try_start_7
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_22

    move-result-object v0

    .line 1987
    :goto_11
    if-eqz v0, :cond_66

    .line 1989
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/swype/android/jni/SwypeCore;->nativeGetDescriptorFromFD(Ljava/io/FileDescriptor;)I

    move-result v1

    .line 1991
    iget-object v2, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v2, p1, v0, v1}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->addObject(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;I)V

    move v0, v1

    .line 1998
    :goto_21
    return v0

    :catch_22
    move-exception v1

    .line 1978
    :try_start_23
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".mp3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3f} :catch_41

    move-result-object v0

    goto :goto_11

    .line 1980
    :catch_41
    move-exception v0

    .line 1981
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ncbOpenAssetFileFd \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1983
    goto :goto_21

    :cond_66
    move v0, v4

    .line 1995
    goto :goto_21

    :cond_68
    move v0, v4

    .line 1998
    goto :goto_21
.end method

.method private ncbOpenLicenseFile()Z
    .registers 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

    if-eqz v0, :cond_b

    .line 1814
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;->openLicense()Z

    move-result v0

    .line 1816
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private ncbPerformHapticFeedback()V
    .registers 2

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 2077
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->performHapticFeedback()V

    .line 2079
    :cond_9
    return-void
.end method

.method private ncbPlayKeyTapSound(I)V
    .registers 3
    .parameter "sound"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 2086
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->playKeyTapSound(I)V

    .line 2088
    :cond_9
    return-void
.end method

.method private ncbReadFileContents(Ljava/lang/String;[BII)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2037
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->get(Ljava/lang/String;)Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;

    move-result-object v0

    .line 2038
    if-eqz v0, :cond_2d

    .line 2040
    :try_start_9
    invoke-interface {v0, p2, p3, p4}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;->read([BII)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_e

    move-result v0

    .line 2047
    :goto_d
    return v0

    .line 2041
    :catch_e
    move-exception v0

    .line 2042
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ncbReadFileContents error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2044
    goto :goto_d

    :cond_2d
    move v0, v4

    .line 2047
    goto :goto_d
.end method

.method private ncbRemoveFont(Ljava/lang/String;)Z
    .registers 3
    .parameter "fontName"

    .prologue
    .line 2197
    const/4 v0, 0x1

    return v0
.end method

.method private ncbResizeCanvas()V
    .registers 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1280
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onResizeCanvas()V

    .line 1282
    :cond_9
    return-void
.end method

.method private ncbSendStats(Ljava/lang/String;Z)V
    .registers 4
    .parameter "stats"
    .parameter "addApp"

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    if-eqz v0, :cond_9

    .line 2202
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    invoke-interface {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;->sendStats(Ljava/lang/String;Z)V

    .line 2204
    :cond_9
    return-void
.end method

.method private ncbShowInputMethodSettingsLanguages()V
    .registers 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1781
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onShowInputMethodSettingsLanguagesDialog()V

    .line 1783
    :cond_9
    return-void
.end method

.method private ncbShowLanguageChoiceList()V
    .registers 2

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 1775
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onShowLanguageList()V

    .line 1777
    :cond_9
    return-void
.end method

.method private ncbShowNavigationBar()V
    .registers 2

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_9

    .line 2250
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->showNavigationBar()V

    .line 2252
    :cond_9
    return-void
.end method

.method private ncbShowPropertiesDialog()V
    .registers 2

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->propDialogCallback:Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;

    if-eqz v0, :cond_9

    .line 1663
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->propDialogCallback:Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;

    invoke-interface {v0}, Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;->onShowPropertiesDialog()V

    .line 1665
    :cond_9
    return-void
.end method

.method private ncbStartTimer(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1676
    if-ltz p1, :cond_20

    iget v0, p0, Lcom/swype/android/jni/SwypeCore;->timerCount:I

    if-ge p1, v0, :cond_20

    .line 1677
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    monitor-enter v0

    .line 1678
    :try_start_9
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->stopTimer(I)V

    .line 1679
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    new-instance v2, Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    invoke-direct {v2, p0, p1}, Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;-><init>(Lcom/swype/android/jni/SwypeCore;I)V

    aput-object v2, v1, p1

    .line 1680
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    aget-object v2, v2, p1

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1681
    monitor-exit v0

    .line 1683
    :cond_20
    return-void

    .line 1681
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private ncbStopTimer(I)V
    .registers 3
    .parameter "timerId"

    .prologue
    .line 1692
    if-ltz p1, :cond_9

    iget v0, p0, Lcom/swype/android/jni/SwypeCore;->timerCount:I

    if-ge p1, v0, :cond_9

    .line 1693
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->stopTimer(I)V

    .line 1695
    :cond_9
    return-void
.end method

.method private ncbTranslateYToScreen(I)I
    .registers 3
    .parameter "y"

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    if-eqz v0, :cond_b

    .line 1791
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    invoke-interface {v0, p1}, Lcom/swype/android/jni/SwypeCore$InputWindowCallback;->onTranslateYToScreen(I)I

    move-result v0

    .line 1793
    :goto_a
    return v0

    :cond_b
    move v0, p1

    goto :goto_a
.end method

.method private normlizeAssetFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fileName"

    .prologue
    .line 1891
    sget-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1894
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static readSafe(Ljava/io/InputStream;[BII)I
    .registers 5
    .parameter "is"
    .parameter "buf"
    .parameter "offs"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x1000

    .line 879
    if-le p3, v0, :cond_9

    :goto_4
    invoke-virtual {p0, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    :cond_9
    move v0, p3

    goto :goto_4
.end method

.method private splitWithCommad(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2108
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 2109
    :cond_8
    const/4 v0, 0x0

    .line 2113
    :goto_9
    return-object v0

    .line 2112
    :cond_a
    const-string v0, "\\,"

    const-string v1, ","

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2113
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private stopTimer(I)V
    .registers 5
    .parameter

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    monitor-enter v0

    .line 1700
    :try_start_3
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    aget-object v1, v1, p1

    if-eqz v1, :cond_15

    .line 1701
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;->cancel()Z

    .line 1702
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->timerTasks:[Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 1704
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method


# virtual methods
.method public addLanguageToConfigFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "language"

    .prologue
    .line 2448
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeAddLanguageToConfigFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addUserWord(Ljava/lang/String;)V
    .registers 4
    .parameter "word"

    .prologue
    .line 2444
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/swype/android/jni/SwypeCore;->nativeAddUserWord(Ljava/lang/String;IZ)V

    .line 2445
    return-void
.end method

.method public appDoubleTap()V
    .registers 1

    .prologue
    .line 2303
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeAppDoubleTap()V

    .line 2304
    return-void
.end method

.method public appSingleTap()V
    .registers 1

    .prologue
    .line 2307
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeAppSingleTap()V

    .line 2308
    return-void
.end method

.method public cancelCurrentInputGesture()V
    .registers 1

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeCancelCurrentInputGesture()V

    .line 1257
    return-void
.end method

.method public checkLicense()V
    .registers 1

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeCheckLicense()V

    .line 2647
    return-void
.end method

.method public deleteAllUserWords()V
    .registers 1

    .prologue
    .line 2472
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeDeleteAllUserWords()V

    .line 2473
    return-void
.end method

.method public deleteUserWord(Ljava/lang/String;)V
    .registers 2
    .parameter "word"

    .prologue
    .line 2468
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeDeleteUserWord(Ljava/lang/String;)V

    .line 2469
    return-void
.end method

.method public dontShowHelpAgain()V
    .registers 1

    .prologue
    .line 2436
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeDontShowHelpAgain()V

    .line 2437
    return-void
.end method

.method public drawKeyboard(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "rect"

    .prologue
    .line 2639
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/swype/android/jni/SwypeCore;->nativeDrawKeyboard(IIII)V

    .line 2640
    return-void
.end method

.method public findUserWords(Ljava/lang/String;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 2476
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeFindUserWords(Ljava/lang/String;)V

    .line 2477
    return-void
.end method

.method public finishPendingConversion(Z)V
    .registers 2
    .parameter "accept"

    .prologue
    .line 1249
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeFinishPendingConversion(Z)V

    .line 1250
    return-void
.end method

.method public flushUserDatabase()V
    .registers 1

    .prologue
    .line 2484
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeFlushUserDatabase()V

    .line 2485
    return-void
.end method

.method public getActiveDisplayFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "baseName"

    .prologue
    .line 2670
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetActiveDisplayFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveDisplayNum()I
    .registers 2

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetActiveDispaly()I

    move-result v0

    return v0
.end method

.method public getAttributionText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2488
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetAttributionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameFromLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "langName"

    .prologue
    .line 2432
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetDisplayNameFromLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2331
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetInterfaceLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardHorzPos()I
    .registers 2

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetKeyboardHorzPos()I

    move-result v0

    return v0
.end method

.method public getKeyboardSize()Lcom/swype/android/widget/ViewSize;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1120
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetKeyboardSize()[I

    move-result-object v0

    .line 1121
    .local v0, sizes:[I
    if-eqz v0, :cond_12

    .line 1122
    new-instance v1, Lcom/swype/android/widget/ViewSize;

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Lcom/swype/android/widget/ViewSize;-><init>(II)V

    .line 1124
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Lcom/swype/android/widget/ViewSize;

    invoke-direct {v1, v3, v3}, Lcom/swype/android/widget/ViewSize;-><init>(II)V

    goto :goto_11
.end method

.method public getKeyboardSize(I)Lcom/swype/android/widget/ViewSize;
    .registers 6
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    .line 1128
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetKeyboardSizeByOrientation(I)[I

    move-result-object v0

    .line 1129
    .local v0, sizes:[I
    if-eqz v0, :cond_12

    .line 1130
    new-instance v1, Lcom/swype/android/widget/ViewSize;

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Lcom/swype/android/widget/ViewSize;-><init>(II)V

    .line 1132
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Lcom/swype/android/widget/ViewSize;

    invoke-direct {v1, v3, v3}, Lcom/swype/android/widget/ViewSize;-><init>(II)V

    goto :goto_11
.end method

.method public getLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "langName"

    .prologue
    .line 2428
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageForLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "lang"
    .parameter "country"

    .prologue
    .line 2520
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->nativeGetLanguageForLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2404
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetMessageLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalSettingInt(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2363
    .line 2365
    :try_start_0
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetSettingAsIntOrBool(I)I
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 2369
    :goto_4
    return v0

    :catch_5
    move-exception v0

    move v0, p2

    goto :goto_4
.end method

.method public getParamAsBool(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 2575
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetJNIProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2576
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getParamAsInt(Ljava/lang/String;)I
    .registers 4
    .parameter "paramName"

    .prologue
    .line 2586
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetJNIProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2588
    .local v0, value:Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    .line 2590
    :goto_8
    return v1

    :catch_9
    move-exception v1

    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getSetting(I)Ljava/lang/String;
    .registers 6
    .parameter "settingIndex"

    .prologue
    .line 2339
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetSettingAsStr(I)Ljava/lang/String;

    move-result-object v0

    .line 2340
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_2c

    .line 2341
    iget-boolean v1, p0, Lcom/swype/android/jni/SwypeCore;->isDebugVersion:Z

    if-eqz v1, :cond_29

    .line 2342
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid settings value index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this setting Optional?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2345
    :cond_29
    const-string v1, ""

    .line 2349
    :goto_2b
    return-object v1

    :cond_2c
    move-object v1, v0

    goto :goto_2b
.end method

.method public getSetting(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "settingIndex"
    .parameter "defaultValue"

    .prologue
    .line 2354
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetSettingAsStr(I)Ljava/lang/String;

    move-result-object v0

    .line 2355
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p2

    .line 2358
    :goto_7
    return-object v1

    :cond_8
    move-object v1, v0

    goto :goto_7
.end method

.method public getSettingBool(I)Z
    .registers 3
    .parameter

    .prologue
    .line 2392
    invoke-virtual {p0, p1}, Lcom/swype/android/jni/SwypeCore;->getSettingInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getSettingBool(IZ)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2397
    :try_start_0
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetSettingAsIntOrBool(I)I
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_a

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 2399
    :goto_7
    return v0

    .line 2397
    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 2399
    :catch_a
    move-exception v0

    move v0, p2

    goto :goto_7
.end method

.method public getSettingInt(I)I
    .registers 5
    .parameter "settingIndex"

    .prologue
    .line 2374
    :try_start_0
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetSettingAsIntOrBool(I)I
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 2379
    :goto_4
    return v0

    .line 2376
    :catch_5
    move-exception v0

    iget-boolean v0, p0, Lcom/swype/android/jni/SwypeCore;->isDebugVersion:Z

    if-eqz v0, :cond_29

    .line 2377
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid settings value index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Is this setting Optional?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2379
    :cond_29
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getSettingInt(II)I
    .registers 4
    .parameter "settingIndex"
    .parameter "defaultValue"

    .prologue
    .line 2385
    :try_start_0
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeGetSettingAsIntOrBool(I)I
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 2387
    :goto_4
    return v0

    :catch_5
    move-exception v0

    move v0, p2

    goto :goto_4
.end method

.method public getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2539
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetSupportedLanguages()Ljava/lang/String;

    move-result-object v0

    .line 2540
    if-nez v0, :cond_d

    .line 2541
    new-instance v0, Lcom/swype/android/jni/SwypeCore$LanguageList;

    invoke-direct {v0}, Lcom/swype/android/jni/SwypeCore$LanguageList;-><init>()V

    .line 2561
    :goto_c
    return-object v0

    .line 2543
    :cond_d
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2544
    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    .line 2546
    new-instance v2, Lcom/swype/android/jni/SwypeCore$LanguageList;

    invoke-direct {v2}, Lcom/swype/android/jni/SwypeCore$LanguageList;-><init>()V

    .line 2547
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    move v3, v7

    move v4, v7

    .line 2549
    :goto_21
    if-ge v3, v1, :cond_2f

    .line 2550
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    aget-object v4, v0, v4

    aput-object v4, v5, v3

    .line 2549
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_21

    .line 2552
    :cond_2f
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    move v3, v7

    .line 2553
    :goto_34
    if-ge v3, v1, :cond_42

    .line 2554
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    aget-object v4, v0, v4

    aput-object v4, v5, v3

    .line 2553
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_34

    .line 2556
    :cond_42
    new-array v3, v1, [Z

    iput-object v3, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    move v3, v7

    .line 2557
    :goto_47
    if-ge v3, v1, :cond_5b

    .line 2558
    add-int/lit8 v5, v4, 0x1

    aget-object v4, v0, v4

    .line 2559
    iget-object v6, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v6, v3

    .line 2557
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_47

    :cond_5b
    move-object v0, v2

    .line 2561
    goto :goto_c
.end method

.method public getSwib()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2335
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeGetSwib()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->version:Ljava/lang/String;

    return-object v0
.end method

.method public importDictionaryWord(Ljava/lang/String;)V
    .registers 4
    .parameter "word"

    .prologue
    .line 2456
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/swype/android/jni/SwypeCore;->nativeAddUserWord(Ljava/lang/String;IZ)V

    .line 2457
    return-void
.end method

.method public importFamilyName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 2464
    invoke-direct {p0, p1, v0, v0}, Lcom/swype/android/jni/SwypeCore;->nativeAddUserWord(Ljava/lang/String;IZ)V

    .line 2465
    return-void
.end method

.method public importGivenName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 2460
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/swype/android/jni/SwypeCore;->nativeAddUserWord(Ljava/lang/String;IZ)V

    .line 2461
    return-void
.end method

.method public isDiacritic(I)Z
    .registers 3
    .parameter "character"

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeIsDiacritic(I)Z

    move-result v0

    return v0
.end method

.method public isLanguageMGD(Ljava/lang/String;)Z
    .registers 3
    .parameter "langName"

    .prologue
    .line 2408
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeIsLanguageMGD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRunningTrialBuild()Z
    .registers 2

    .prologue
    .line 2653
    const-string v0, "is_trial"

    invoke-direct {p0, v0}, Lcom/swype/android/jni/SwypeCore;->nativeGetJNIProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(I)[I
    .registers 6
    .parameter "numOfValues"

    .prologue
    .line 2289
    iget-wide v0, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 2290
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeLoadSettings(I)[I

    move-result-object v0

    .line 2292
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public notifyCandidatesGone()V
    .registers 1

    .prologue
    .line 2323
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeNotifyCandidatesGone()V

    .line 2324
    return-void
.end method

.method public notifyCursorMovedFromCandidates()V
    .registers 1

    .prologue
    .line 2327
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeNotifyCursorMovedFromCandidates()V

    .line 2328
    return-void
.end method

.method public notifyInsertionPointUpdate()V
    .registers 1

    .prologue
    .line 2318
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeNotifyInsertionPointUpdate()V

    .line 2319
    return-void
.end method

.method public notifyNewInputSession()V
    .registers 1

    .prologue
    .line 2599
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeNotifyNewInputSession()V

    .line 2600
    return-void
.end method

.method public onConversionCandidateLongPressed(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeOnConversionCandidateLongPressed(I)V

    .line 1235
    return-void
.end method

.method public onConversionCandidateSelect(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 1226
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeOnConversionCandidateSelect(I)V

    .line 1227
    return-void
.end method

.method public onConversionSpellingEditTap(I)V
    .registers 2
    .parameter "spellingStringIndex"

    .prologue
    .line 1242
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeOnConversionSpellingEditTap(I)V

    .line 1243
    return-void
.end method

.method public declared-synchronized onCreate(ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1031
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->create(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1034
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1035
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8d

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/swype/android/jni/SwypeCore;->isDebugVersion:Z

    .line 1038
    invoke-virtual {p0}, Lcom/swype/android/jni/SwypeCore;->getVersionString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swype version: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/swype/android/inputmethod/SwypeApplication;->SWYPE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] isDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SwypeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_ad

    .line 1048
    :try_start_55
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1050
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputMethod version: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_55 .. :try_end_86} :catchall_ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_86} :catch_8f

    .line 1058
    :cond_86
    :goto_86
    :try_start_86
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->checkLocaleChange()V
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_ad

    .line 1059
    monitor-exit p0

    return-void

    :cond_8d
    move v0, v1

    .line 1035
    goto :goto_15

    .line 1051
    :catch_8f
    move-exception v0

    .line 1052
    :try_start_90
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to access InputMethod version for package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_90 .. :try_end_ac} :catchall_ad

    goto :goto_86

    .line 1031
    :catchall_ad
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCreateDefault()V
    .registers 3

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getCurrentScreenDefinition(Landroid/content/Context;I)Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    .line 1022
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getType()Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/jni/SwypeCore;->onCreate(ILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1023
    monitor-exit p0

    return-void

    .line 1021
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    .line 1080
    monitor-enter p0

    :try_start_3
    iget-wide v1, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    .line 1081
    iget v1, p0, Lcom/swype/android/jni/SwypeCore;->peerRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/swype/android/jni/SwypeCore;->peerRefCount:I

    .line 1082
    iget v1, p0, Lcom/swype/android/jni/SwypeCore;->peerRefCount:I

    if-nez v1, :cond_2c

    .line 1083
    iget-wide v1, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    invoke-direct {p0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->nativeRelease(J)V

    .line 1084
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    .line 1086
    iget-object v1, p0, Lcom/swype/android/jni/SwypeCore;->fileObjects:Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectList;->cleanup()V

    .line 1088
    const/4 v0, 0x0

    .local v0, timerId:I
    :goto_22
    iget v1, p0, Lcom/swype/android/jni/SwypeCore;->timerCount:I

    if-ge v0, v1, :cond_2c

    .line 1089
    invoke-direct {p0, v0}, Lcom/swype/android/jni/SwypeCore;->stopTimer(I)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2e

    .line 1088
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1093
    .end local v0           #timerId:I
    :cond_2c
    monitor-exit p0

    return-void

    .line 1080
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onHiding()V
    .registers 1

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeOnHidingKeyboard()V

    .line 1101
    return-void
.end method

.method public onShowing()V
    .registers 1

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeOnShowingKeyboard()V

    .line 1097
    return-void
.end method

.method public onUserQueryResult(ZI)V
    .registers 3
    .parameter "answer"
    .parameter "token"

    .prologue
    .line 2440
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->nativeOnUserQueryResult(ZI)V

    .line 2441
    return-void
.end method

.method public propagateVkc(IZ)V
    .registers 3
    .parameter "vkc"
    .parameter "isPhysicalPress"

    .prologue
    .line 1144
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->nativePropagateVkc(IZ)V

    .line 1145
    return-void
.end method

.method public refreshKeyboard()V
    .registers 1

    .prologue
    .line 2632
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeRefreshKeyboard()V

    .line 2633
    return-void
.end method

.method public registerAppInterface(Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;)V
    .registers 2
    .parameter "appInterfaceCallback"

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->appInterfaceCallback:Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;

    .line 1178
    return-void
.end method

.method public registerChoiceWindow(Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;)V
    .registers 2
    .parameter "choiceWindowCallback"

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->choiceWindowCallback:Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;

    .line 1169
    return-void
.end method

.method public registerHelpDialog(Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;)V
    .registers 2
    .parameter "helpDialogCallback"

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->helpDialogCallback:Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;

    .line 1196
    return-void
.end method

.method public registerIMEConversionCallback(Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->imeConversionCallback:Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;

    .line 1212
    return-void
.end method

.method public registerInputWindow(Lcom/swype/android/jni/SwypeCore$InputWindowCallback;)V
    .registers 2
    .parameter "inputWindowCallback"

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->inputWindowCallback:Lcom/swype/android/jni/SwypeCore$InputWindowCallback;

    .line 1160
    return-void
.end method

.method public registerPropertiesDialog(Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;)V
    .registers 2
    .parameter "propDialogCallback"

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->propDialogCallback:Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;

    .line 1187
    return-void
.end method

.method public registerUserDictionaryCallback(Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->udbManagerCallback:Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;

    .line 1219
    return-void
.end method

.method public registgerLicenseCallback(Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;)V
    .registers 2
    .parameter "licenseManagerwCallback"

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore;->licenseManagerCallback:Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;

    .line 1205
    return-void
.end method

.method public removeLanguageFromConfigFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "language"

    .prologue
    .line 2452
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeRemoveLanguageFromConfigFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public replaceUserWord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "originalWord"
    .parameter "newWord"

    .prologue
    .line 2480
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->nativeReplaceUserWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    return-void
.end method

.method public saveSettings([I)V
    .registers 6
    .parameter "values"

    .prologue
    .line 2283
    iget-wide v0, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 2284
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSaveSettings([I)V

    .line 2286
    :cond_b
    return-void
.end method

.method public sendMouseEvent(ILcom/swype/android/widget/TouchEventType;IIIJ)V
    .registers 16
    .parameter "window"
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "pathId"
    .parameter "timestamp"

    .prologue
    .line 2277
    iget-wide v0, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 2278
    invoke-virtual {p2}, Lcom/swype/android/widget/TouchEventType;->getValue()I

    move-result v2

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/swype/android/jni/SwypeCore;->nativeSendMouseData(IIIIIJ)V

    .line 2280
    :cond_15
    return-void
.end method

.method public setActiveDisplay(II)V
    .registers 3
    .parameter "display_no"
    .parameter "width"

    .prologue
    .line 1104
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->nativeSetActiveDisplay(II)V

    .line 1105
    return-void
.end method

.method public setDebugShowKeyBoundaries(Z)V
    .registers 2
    .parameter "yesNo"

    .prologue
    .line 2660
    sput-boolean p1, Lcom/swype/android/inputmethod/ConfigSetting;->DEBUG_DRAW_BOUNDING_RECT:Z

    .line 2661
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetDebugShowKeyBoundaries(Z)V

    .line 2662
    return-void
.end method

.method public setHardwareKeyboard(Z)V
    .registers 2
    .parameter "keyboardOut"

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetHardwareKeyboard(Z)V

    .line 1137
    return-void
.end method

.method public setKeyboardHorzPos(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetKeyboardHorzPos(I)V

    .line 1113
    return-void
.end method

.method public setListOfInactiveLanguages(Ljava/lang/String;)V
    .registers 2
    .parameter "listOfinActiveLang"

    .prologue
    .line 2565
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetListOfInactiveLanguages(Ljava/lang/String;)V

    .line 2566
    return-void
.end method

.method public setLocale(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2501
    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2502
    const-string v0, "id"

    .line 2511
    :goto_a
    invoke-direct {p0, v0, p2}, Lcom/swype/android/jni/SwypeCore;->nativeSetLocale(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    return-void

    .line 2503
    :cond_e
    const-string v0, "iw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2504
    const-string v0, "he"

    goto :goto_a

    .line 2505
    :cond_19
    const-string v0, "ji"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2506
    const-string v0, "yi"

    goto :goto_a

    .line 2507
    :cond_24
    const-string v0, "nb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2508
    const-string v0, "no"

    goto :goto_a

    :cond_2f
    move-object v0, p1

    goto :goto_a
.end method

.method public setMessageLanguage(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2412
    invoke-static {}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2413
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetMessageLanguage(Ljava/lang/String;)V

    .line 2418
    :goto_9
    return-void

    .line 2416
    :cond_a
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetMessageLanguageSync(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setOrientation(II)V
    .registers 7
    .parameter "orientation"
    .parameter "width"

    .prologue
    .line 2297
    iget-wide v0, p0, Lcom/swype/android/jni/SwypeCore;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 2298
    invoke-direct {p0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->nativeSetOrientation(II)V

    .line 2300
    :cond_b
    return-void
.end method

.method public setReturnKeyLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "returnKeyLabel"

    .prologue
    .line 2608
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetReturnKeyLabel(Ljava/lang/String;)V

    .line 2609
    return-void
.end method

.method public setReturnKeyType(I)V
    .registers 2
    .parameter "returnKeyType"

    .prologue
    .line 2617
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSetReturnKeyType(I)V

    .line 2618
    return-void
.end method

.method public switchKeyboardLayout(I)V
    .registers 2
    .parameter "keyboard"

    .prologue
    .line 2530
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeSwitchKeyboardLayout(I)V

    .line 2531
    return-void
.end method

.method public updateAutoCap()V
    .registers 1

    .prologue
    .line 2311
    invoke-direct {p0}, Lcom/swype/android/jni/SwypeCore;->nativeUpdateAutoCap()V

    .line 2312
    return-void
.end method

.method public updateAutoSpace(Z)V
    .registers 2
    .parameter "hasSelection"

    .prologue
    .line 2421
    invoke-direct {p0, p1}, Lcom/swype/android/jni/SwypeCore;->nativeUpdateAutoSpace(Z)V

    .line 2422
    return-void
.end method
