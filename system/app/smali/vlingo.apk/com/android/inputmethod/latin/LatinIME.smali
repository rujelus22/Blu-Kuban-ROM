.class public Lcom/android/inputmethod/latin/LatinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "LatinIME.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;
    }
.end annotation


# static fields
.field private static final CPS_BUFFER_SIZE:I = 0x10

.field static final DEBUG:Z = false

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field static final FREQUENCY_FOR_AUTO_ADD:I = 0xfa

.field static final FREQUENCY_FOR_PICKED:I = 0x3

.field static final FREQUENCY_FOR_TYPED:I = 0x1

.field static final KEYCODE_ENTER:I = 0xa

.field static final KEYCODE_SPACE:I = 0x20

.field private static final MSG_START_TUTORIAL:I = 0x1

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x2

.field private static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field private static final PERF_DEBUG:Z = false

.field private static final POS_METHOD:I = 0x1

.field private static final POS_SETTINGS:I = 0x0

.field private static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field private static final PREF_AUTO_COMPLETE:Ljava/lang/String; = "auto_complete"

.field private static final PREF_QUICK_FIXES:Ljava/lang/String; = "quick_fixes"

.field private static final PREF_SHOW_SUGGESTIONS:Ljava/lang/String; = "show_suggestions"

.field private static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field private static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final QUICK_PRESS:I = 0xc8

.field static final TRACE:Z


# instance fields
.field private final FX_VOLUME:F

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCap:Z

.field private mAutoCorrectOn:Z

.field private mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

.field protected mAutoSpace:Z

.field private mBestWord:Ljava/lang/CharSequence;

.field private mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

.field private mCandidateViewContainer:Lcom/android/inputmethod/latin/CandidateViewContainer;

.field private mCapsLock:Z

.field private mCommittedLength:I

.field private mCompletionOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field protected mComposing:Ljava/lang/StringBuilder;

.field private mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mCorrectionMode:I

.field private mCpsIndex:I

.field private mCpsIntervals:[J

.field private mDeleteCount:I

.field mHandler:Landroid/os/Handler;

.field protected mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

.field private mJustAccepted:Z

.field private mJustRevertedSeparator:Ljava/lang/CharSequence;

.field mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

.field private mLastCpsTime:J

.field private mLastKeyTime:J

.field private mLocale:Ljava/lang/String;

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field protected mPredicting:Z

.field private mPredictionOn:Z

.field private mQuickFixes:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSentenceSeparators:Ljava/lang/String;

.field protected mShowSuggestions:Z

.field private mSilentMode:Z

.field private mSoundOn:Z

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mTutorial:Lcom/android/inputmethod/latin/Tutorial;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

.field private mVibrateDuration:J

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field protected mWord:Lcom/android/inputmethod/latin/WordComposer;

.field private mWordSeparators:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    .line 116
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 149
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->FX_VOLUME:F

    .line 155
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$1;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    .line 1002
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$2;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$2;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1178
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    .line 1196
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Tutorial;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/Tutorial;)Lcom/android/inputmethod/latin/Tutorial;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    return-void
.end method

.method private changeKeyboardMode()V
    .registers 3

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->toggleSymbols()V

    .line 1147
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1148
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 1151
    :cond_1e
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1152
    return-void
.end method

.method private checkToggleCapsLock()V
    .registers 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 780
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->toggleCapsLock()V

    .line 782
    :cond_f
    return-void
.end method

.method private checkTutorial(Ljava/lang/String;)V
    .registers 3
    .parameter "privateImeOptions"

    .prologue
    .line 1057
    if-nez p1, :cond_3

    .line 1067
    :cond_2
    :goto_2
    return-void

    .line 1058
    :cond_3
    const-string v0, "com.android.setupwizard:ShowTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1059
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->startTutorial()V

    goto :goto_2

    .line 1060
    :cond_13
    const-string v0, "com.android.setupwizard:HideTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->close()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    goto :goto_2
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .registers 5
    .parameter "inputConnection"

    .prologue
    const/4 v2, 0x1

    .line 512
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v0, :cond_32

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 514
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 515
    if-eqz p1, :cond_17

    .line 516
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 518
    :cond_17
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 519
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 522
    :cond_2f
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 524
    :cond_32
    return-void
.end method

.method private doubleSpace()V
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 560
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-nez v2, :cond_b

    .line 573
    :cond_a
    :goto_a
    return-void

    .line 561
    :cond_b
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 562
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 563
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 564
    .local v1, lastThree:Ljava/lang/CharSequence;
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_a

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_a

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_a

    .line 567
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 568
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 569
    const-string v2, ". "

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 570
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 571
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_a
.end method

.method private handleBackspace()V
    .registers 9

    .prologue
    const/16 v7, 0x43

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, deleteChar:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 653
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_c

    .line 682
    :goto_b
    return-void

    .line 654
    :cond_c
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v3, :cond_4c

    .line 655
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 656
    .local v2, length:I
    if-lez v2, :cond_48

    .line 657
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 658
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 659
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v1, v3, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 660
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_33

    .line 661
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 663
    :cond_33
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 670
    .end local v2           #length:I
    :goto_36
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateShiftKeyState()V

    .line 671
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 672
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4e

    .line 673
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Z)V

    goto :goto_b

    .line 665
    .restart local v2       #length:I
    :cond_48
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_36

    .line 668
    .end local v2           #length:I
    :cond_4c
    const/4 v0, 0x1

    goto :goto_36

    .line 675
    :cond_4e
    if-eqz v0, :cond_5c

    .line 676
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 677
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_5c

    .line 678
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 681
    :cond_5c
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto :goto_b
.end method

.method private handleCharacter(I[I)V
    .registers 8
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 696
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isAlphabet(I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v1

    if-nez v1, :cond_24

    .line 697
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v1, :cond_24

    .line 698
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 699
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 700
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 703
    :cond_24
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 705
    if-eqz p2, :cond_39

    aget v1, p2, v3

    if-ltz v1, :cond_39

    aget v1, p2, v3

    const v2, 0x10ffff

    if-le v1, v2, :cond_3a

    .line 728
    :cond_39
    :goto_39
    return-void

    .line 709
    :cond_3a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, v3, v4}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 711
    :cond_47
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v1, :cond_8c

    .line 712
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_60

    .line 713
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/WordComposer;->setCapitalized(Z)V

    .line 715
    :cond_60
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/WordComposer;->add(I[I)V

    .line 717
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 718
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_76

    .line 719
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 721
    :cond_76
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 725
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_79
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 726
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->measureCps()V

    .line 727
    int-to-char v1, p1

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    goto :goto_39

    .line 723
    :cond_8c
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    goto :goto_79
.end method

.method private handleSeparator(I)V
    .registers 6
    .parameter "primaryCode"

    .prologue
    .line 731
    const/4 v1, 0x0

    .line 733
    .local v1, pickedDefault:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 734
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 735
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 737
    :cond_a
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v2, :cond_2f

    .line 742
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v2, :cond_64

    const/16 v2, 0x27

    if-eq p1, v2, :cond_64

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_64

    .line 746
    :cond_2b
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->pickDefaultSuggestion()V

    .line 747
    const/4 v1, 0x1

    .line 752
    :cond_2f
    :goto_2f
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 753
    int-to-char v2, p1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 754
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_68

    const/16 v2, 0xa

    if-eq p1, v2, :cond_68

    .line 756
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapPunctuationAndSpace()V

    .line 761
    :cond_46
    :goto_46
    if-eqz v1, :cond_57

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v2, :cond_57

    .line 762
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 764
    :cond_57
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 765
    if-eqz v0, :cond_63

    .line 766
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 768
    :cond_63
    return-void

    .line 749
    :cond_64
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2f

    .line 757
    :cond_68
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_46

    const/16 v2, 0x20

    if-ne p1, v2, :cond_46

    .line 759
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->doubleSpace()V

    goto :goto_46
.end method

.method private handleShift()V
    .registers 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 688
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->checkToggleCapsLock()V

    .line 689
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setShifted(Z)Z

    .line 693
    :goto_1d
    return-void

    .line 689
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1a

    .line 691
    :cond_20
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->toggleShift()V

    goto :goto_1d
.end method

.method private initSuggest(Ljava/lang/String;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLocale:Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/vlingo/client/keyboard/NBestSuggest;

    const v1, 0x7f060009

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/keyboard/NBestSuggest;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 199
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 200
    new-instance v0, Lcom/android/inputmethod/latin/UserDictionary;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 201
    new-instance v0, Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 202
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;

    invoke-direct {v0, p0, p0}, Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;-><init>(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    .line 203
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 204
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 205
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 208
    return-void
.end method

.method private isAlphabet(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 581
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 582
    const/4 v0, 0x1

    .line 584
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isCandidateStripVisible()Z
    .registers 2

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowSuggestions:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isCursorTouchingWord()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 907
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 908
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_9

    .line 919
    :cond_8
    :goto_8
    return v3

    .line 909
    :cond_9
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 910
    .local v1, toLeft:Ljava/lang/CharSequence;
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 911
    .local v2, toRight:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_23

    move v3, v4

    .line 913
    goto :goto_8

    .line 915
    :cond_23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_8

    move v3, v4

    .line 917
    goto :goto_8
.end method

.method private isPredictionOn()Z
    .registers 2

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 800
    .local v0, predictionOn:Z
    return v0
.end method

.method private loadSettings()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1092
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1093
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "vibrate_on"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    .line 1094
    const-string v2, "sound_on"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    .line 1095
    const-string v2, "auto_cap"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCap:Z

    .line 1096
    const-string v2, "quick_fixes"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    .line 1099
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-static {v2}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v2

    if-ge v2, v3, :cond_30

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    .line 1100
    :cond_30
    const-string v2, "show_suggestions"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    and-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowSuggestions:Z

    .line 1101
    const-string v2, "auto_complete"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowSuggestions:Z

    and-int v0, v2, v5

    .line 1103
    .local v0, autoComplete:Z
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_62

    if-nez v0, :cond_59

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    if-eqz v2, :cond_62

    :cond_59
    move v2, v3

    :goto_5a
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    .line 1104
    if-eqz v0, :cond_64

    const/4 v3, 0x2

    :cond_5f
    :goto_5f
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 1107
    return-void

    :cond_62
    move v2, v4

    .line 1103
    goto :goto_5a

    .line 1104
    :cond_64
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    if-nez v2, :cond_5f

    move v3, v4

    goto :goto_5f
.end method

.method private measureCps()V
    .registers 1

    .prologue
    .line 1194
    return-void
.end method

.method private pickDefaultSuggestion()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 845
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 846
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 847
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 849
    :cond_11
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v0, :cond_28

    .line 850
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 852
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;)V

    .line 854
    :cond_28
    return-void
.end method

.method private playKeyClick(I)V
    .registers 5
    .parameter "primaryCode"

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_b

    .line 1023
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v1, :cond_b

    .line 1024
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    .line 1027
    :cond_b
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentMode:Z

    if-nez v1, :cond_1e

    .line 1030
    const/4 v0, 0x5

    .line 1031
    .local v0, sound:I
    sparse-switch p1, :sswitch_data_26

    .line 1042
    :goto_17
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v2, -0x4080

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 1044
    .end local v0           #sound:I
    :cond_1e
    return-void

    .line 1033
    .restart local v0       #sound:I
    :sswitch_1f
    const/4 v0, 0x7

    .line 1034
    goto :goto_17

    .line 1036
    :sswitch_21
    const/16 v0, 0x8

    .line 1037
    goto :goto_17

    .line 1039
    :sswitch_24
    const/4 v0, 0x6

    goto :goto_17

    .line 1031
    :sswitch_data_26
    .sparse-switch
        -0x5 -> :sswitch_1f
        0xa -> :sswitch_21
        0x20 -> :sswitch_24
    .end sparse-switch
.end method

.method private postUpdateShiftKeyState()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 527
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 529
    return-void
.end method

.method private sendSpace()V
    .registers 2

    .prologue
    .line 961
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 962
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 964
    return-void
.end method

.method private showOptionsMenu()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1111
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1112
    const v5, 0x7f0200a2

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1113
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1114
    const v5, 0x7f09026c

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, itemSettings:Ljava/lang/CharSequence;
    const v5, 0x7f0901ad

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, itemInputMethod:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    new-instance v6, Lcom/android/inputmethod/latin/LatinIME$3;

    invoke-direct {v6, p0}, Lcom/android/inputmethod/latin/LatinIME$3;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1134
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09026b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1136
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1137
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1138
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1139
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1140
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1141
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1142
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1143
    return-void
.end method

.method private startTutorial()V
    .registers 5

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1071
    return-void
.end method

.method private swapPunctuationAndSpace()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 545
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 546
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_a

    .line 556
    :cond_9
    :goto_9
    return-void

    .line 547
    :cond_a
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 548
    .local v1, lastTwo:Ljava/lang/CharSequence;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_9

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->isSentenceSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 550
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 551
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 553
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 554
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_9
.end method

.method private toggleCapsLock()V
    .registers 3

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    .line 786
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 787
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 789
    :cond_1c
    return-void

    .line 785
    :cond_1d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private updateRingerMode()V
    .registers 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_e

    .line 1012
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 1014
    :cond_e
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1e

    .line 1015
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentMode:Z

    .line 1017
    :cond_1e
    return-void

    .line 1015
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private updateSuggestions()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 809
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v4

    if-nez v4, :cond_e

    .line 841
    :cond_d
    :goto_d
    return-void

    .line 813
    :cond_e
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v4, :cond_18

    .line 814
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v4, v9, v6, v6, v6}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    goto :goto_d

    .line 818
    :cond_18
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/inputmethod/latin/Suggest;->getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Z)Ljava/util/List;

    move-result-object v1

    .line 819
    .local v1, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Suggest;->hasMinimalCorrection()Z

    move-result v0

    .line 821
    .local v0, correctionAvailable:Z
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    .line 823
    .local v2, typedWord:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v4, v2}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 824
    .local v3, typedWordValid:Z
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3a

    .line 825
    or-int/2addr v0, v3

    .line 828
    :cond_3a
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v4

    if-nez v4, :cond_70

    move v4, v5

    :goto_43
    and-int/2addr v0, v4

    .line 830
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v4, v1, v6, v3, v0}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 831
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_75

    .line 832
    if-eqz v0, :cond_72

    if-nez v3, :cond_72

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_72

    .line 833
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 840
    :goto_61
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v4

    if-nez v4, :cond_6b

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v4, :cond_6c

    :cond_6b
    move v6, v5

    :cond_6c
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_d

    :cond_70
    move v4, v6

    .line 828
    goto :goto_43

    .line 835
    :cond_72
    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_61

    .line 838
    :cond_75
    iput-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_61
.end method

.method private vibrate()V
    .registers 4

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    if-nez v0, :cond_5

    .line 1054
    :goto_4
    return-void

    .line 1050
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 1051
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Landroid/os/Vibrator;

    .line 1053
    :cond_13
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Landroid/os/Vibrator;

    iget-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_4
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1155
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1157
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1158
    .local v0, p:Landroid/util/Printer;
    const-string v1, "LatinIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Keyboard mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCapsLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mComposing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPredictionOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCorrectionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPredicting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoCorrectOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletionOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  TextEntryState.state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSoundOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibrateOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .registers 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method protected handleClose()V
    .registers 2

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 774
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 775
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->endSession()V

    .line 776
    return-void
.end method

.method public hideWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 404
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 405
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 407
    :cond_14
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_1f

    .line 408
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->close()Z

    .line 409
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    .line 411
    :cond_1f
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 412
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->endSession()V

    .line 413
    return-void
.end method

.method public isSentenceSeparator(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isWordSeparator(I)Z
    .registers 4
    .parameter "code"

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, separators:Ljava/lang/String;
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method protected launchSettings()V
    .registers 3

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 1084
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1085
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/inputmethod/latin/LatinIMESettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1086
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 1088
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 3
    .parameter "outInsets"

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 455
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 457
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "conf"

    .prologue
    .line 219
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLocale:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 220
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest(Ljava/lang/String;)V

    .line 223
    :cond_17
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    if-eq v0, v1, :cond_28

    .line 224
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 225
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    .line 227
    :cond_28
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    if-nez v0, :cond_33

    .line 228
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    .line 230
    :cond_33
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 231
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 181
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 183
    new-instance v2, Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    .line 184
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 185
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest(Ljava/lang/String;)V

    .line 186
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    .line 188
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateDuration:J

    .line 191
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 247
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/CandidateViewContainer;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Lcom/android/inputmethod/latin/CandidateViewContainer;

    .line 250
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Lcom/android/inputmethod/latin/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateViewContainer;->initViews()V

    .line 251
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Lcom/android/inputmethod/latin/CandidateViewContainer;

    const v1, 0x7f0f0014

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/CandidateView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    .line 252
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/CandidateView;->setService(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 253
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Lcom/android/inputmethod/latin/CandidateViewContainer;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboardView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    .line 238
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setInputView(Lcom/android/inputmethod/latin/LatinKeyboardView;)V

    .line 239
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 241
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    .line 242
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserDictionary;->close()V

    .line 212
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ContactsDictionary;->close()V

    .line 213
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 215
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 9
    .parameter "completions"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 424
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v5, :cond_10

    .line 425
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 426
    if-nez p1, :cond_11

    .line 427
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v4, v6, v3, v3, v3}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 441
    :cond_10
    :goto_10
    return-void

    .line 431
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-eqz p1, :cond_2a

    array-length v5, p1

    :goto_1a
    if-ge v1, v5, :cond_2c

    .line 433
    aget-object v0, p1, v1

    .line 434
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_2a
    move v5, v3

    goto :goto_1a

    .line 437
    :cond_2c
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v5, v2, v4, v4, v4}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 438
    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 439
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v5

    if-nez v5, :cond_3d

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v5, :cond_3e

    :cond_3d
    move v3, v4

    :cond_3e
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_10
.end method

.method public onFinishInput()V
    .registers 2

    .prologue
    .line 367
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 369
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 372
    :cond_c
    return-void
.end method

.method public onKey(I[I)V
    .registers 9
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 592
    .local v0, when:J
    const/4 v2, -0x5

    if-ne p1, v2, :cond_10

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    .line 594
    :cond_10
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 596
    :cond_13
    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    .line 597
    sparse-switch p1, :sswitch_data_66

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 625
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(I)V

    .line 630
    :goto_21
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 632
    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->onKey(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 633
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    .line 635
    :cond_2f
    return-void

    .line 599
    :sswitch_30
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleBackspace()V

    .line 600
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    goto :goto_24

    .line 603
    :sswitch_3a
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleShift()V

    goto :goto_24

    .line 606
    :sswitch_3e
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_24

    .line 607
    :cond_4a
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    goto :goto_24

    .line 611
    :sswitch_4e
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenu()V

    goto :goto_24

    .line 614
    :sswitch_52
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-eqz v2, :cond_5a

    .line 615
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleShift()V

    goto :goto_24

    .line 617
    :cond_5a
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->toggleCapsLock()V

    goto :goto_24

    .line 621
    :sswitch_5e
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    goto :goto_24

    .line 627
    :cond_62
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->handleCharacter(I[I)V

    goto :goto_21

    .line 597
    :sswitch_data_66
    .sparse-switch
        -0x65 -> :sswitch_52
        -0x64 -> :sswitch_4e
        -0x5 -> :sswitch_30
        -0x3 -> :sswitch_3e
        -0x2 -> :sswitch_5e
        -0x1 -> :sswitch_3a
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 461
    sparse-switch p1, :sswitch_data_2e

    .line 482
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_8
    :goto_8
    return v0

    .line 463
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->handleBack()Z

    move-result v1

    if-nez v1, :cond_8

    .line 466
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_4

    .line 467
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->close()Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    goto :goto_4

    .line 477
    :sswitch_28
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v1, :cond_4

    goto :goto_8

    .line 461
    nop

    :sswitch_data_2e
    .sparse-switch
        0x4 -> :sswitch_9
        0x13 -> :sswitch_28
        0x14 -> :sswitch_28
        0x15 -> :sswitch_28
        0x16 -> :sswitch_28
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 16
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    .line 487
    packed-switch p1, :pswitch_data_52

    .line 508
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_8
    return v1

    .line 493
    :pswitch_9
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v1, :cond_f

    move v1, v12

    .line 494
    goto :goto_8

    .line 497
    :cond_f
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 498
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    const/16 v10, 0x41

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 502
    .end local p2
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 503
    .local v11, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_4f

    invoke-interface {v11, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_4f
    move-object p2, v0

    .end local v0           #event:Landroid/view/KeyEvent;
    .restart local p2
    move v1, v12

    .line 504
    goto :goto_8

    .line 487
    :pswitch_data_52
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onPress(I)V
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 994
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->playKeyClick(I)V

    .line 995
    return-void
.end method

.method public onRelease(I)V
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 999
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 12
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const v8, 0x8000

    const/16 v6, 0x20

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-nez v4, :cond_d

    .line 363
    :goto_c
    return-void

    .line 264
    :cond_d
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v4, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 266
    invoke-static {p0}, Lcom/android/inputmethod/latin/TextEntryState;->newSession(Landroid/content/Context;)V

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, disableAutoCorrect:Z
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 270
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    .line 271
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 272
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    .line 273
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v4, v4, 0xf

    packed-switch v4, :pswitch_data_114

    .line 338
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v2, v5}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 342
    :goto_30
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 343
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 344
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 345
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 346
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 347
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3, v3, v3}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 348
    :cond_4b
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 350
    if-eqz v0, :cond_58

    .line 351
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    .line 352
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-ne v4, v7, :cond_58

    .line 353
    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 356
    :cond_58
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v4, v2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 357
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v4, :cond_68

    .line 358
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 360
    :cond_68
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    if-eqz v4, :cond_110

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-lez v4, :cond_110

    :goto_70
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 361
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->checkTutorial(Ljava/lang/String;)V

    goto :goto_c

    .line 276
    :pswitch_78
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v7, v5}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    goto :goto_30

    .line 280
    :pswitch_80
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v5, 0x3

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    goto :goto_30

    .line 284
    :pswitch_89
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v2, v5}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    .line 287
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 289
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v4, 0xff0

    .line 290
    .local v1, variation:I
    const/16 v4, 0x80

    if-eq v1, v4, :cond_9e

    const/16 v4, 0x90

    if-ne v1, v4, :cond_a0

    .line 292
    :cond_9e
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 294
    :cond_a0
    if-eq v1, v6, :cond_a6

    const/16 v4, 0x60

    if-ne v1, v4, :cond_df

    .line 296
    :cond_a6
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    .line 300
    :goto_a8
    if-ne v1, v6, :cond_e2

    .line 301
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 302
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v5, 0x5

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    .line 322
    :cond_b4
    :goto_b4
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-eqz v4, :cond_be

    .line 323
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 324
    const/4 v0, 0x1

    .line 327
    :cond_be
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v4, v8

    if-nez v4, :cond_cb

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    if-nez v4, :cond_cb

    .line 329
    const/4 v0, 0x1

    .line 331
    :cond_cb
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_da

    .line 332
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    .line 335
    :cond_da
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_30

    .line 298
    :cond_df
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    goto :goto_a8

    .line 304
    :cond_e2
    const/16 v4, 0x10

    if-ne v1, v4, :cond_f1

    .line 305
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 306
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v5, 0x4

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    goto :goto_b4

    .line 308
    :cond_f1
    const/16 v4, 0x40

    if-ne v1, v4, :cond_fe

    .line 309
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v5, 0x6

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    goto :goto_b4

    .line 311
    :cond_fe
    const/16 v4, 0xb0

    if-ne v1, v4, :cond_105

    .line 312
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    goto :goto_b4

    .line 313
    :cond_105
    const/16 v4, 0xa0

    if-ne v1, v4, :cond_b4

    .line 316
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v4, v8

    if-nez v4, :cond_b4

    .line 317
    const/4 v0, 0x1

    goto :goto_b4

    .end local v1           #variation:I
    :cond_110
    move v2, v3

    .line 360
    goto/16 :goto_70

    .line 273
    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_89
        :pswitch_78
        :pswitch_80
        :pswitch_78
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 639
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_7

    .line 648
    :goto_6
    return-void

    .line 640
    :cond_7
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 641
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v1, :cond_11

    .line 642
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 644
    :cond_11
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 645
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 646
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 647
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 11
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 382
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_30

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v1, :cond_30

    if-ne p3, p6, :cond_14

    if-eq p4, p6, :cond_30

    .line 384
    :cond_14
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 385
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 386
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 387
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 388
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 389
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2a

    .line 390
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 396
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2a
    :goto_2a
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 397
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateShiftKeyState()V

    .line 398
    return-void

    .line 392
    :cond_30
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    if-nez v1, :cond_2a

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2a

    .line 394
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    goto :goto_2a
.end method

.method protected pickSuggestion(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "suggestion"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 882
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-eqz v1, :cond_50

    .line 883
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 889
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 890
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1c

    .line 891
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 892
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 895
    :cond_1c
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 896
    :cond_2c
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 898
    :cond_36
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 899
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 900
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v1, :cond_48

    .line 901
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 903
    :cond_48
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 904
    return-void

    .line 884
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_50
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 886
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_e
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .registers 7
    .parameter "index"
    .parameter "suggestion"

    .prologue
    .line 857
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v2, :cond_33

    if-ltz p1, :cond_33

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_33

    .line 859
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v2, p1

    .line 860
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 861
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1c

    .line 862
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 864
    :cond_1c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 865
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v2, :cond_2b

    .line 866
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 868
    :cond_2b
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 879
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_32
    return-void

    .line 871
    :cond_33
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 874
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    if-eqz v2, :cond_46

    .line 875
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->sendSpace()V

    .line 878
    :cond_46
    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    goto :goto_32
.end method

.method protected postUpdateSuggestions()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 793
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 795
    return-void
.end method

.method public preferCapitalization()Z
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isCapitalized()Z

    move-result v0

    return v0
.end method

.method promoteToUserDictionary(Ljava/lang/String;I)V
    .registers 4
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1080
    :goto_8
    return-void

    .line 1079
    :cond_9
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public revertLastWord(Z)V
    .registers 9
    .parameter "deleteChar"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 923
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 924
    .local v1, length:I
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v4, :cond_50

    if-lez v1, :cond_50

    .line 925
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 926
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 927
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 928
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 929
    if-eqz p1, :cond_22

    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 930
    :cond_22
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 931
    .local v2, toDelete:I
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 932
    .local v3, toTheLeft:Ljava/lang/CharSequence;
    if-eqz v3, :cond_3e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3e

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 934
    add-int/lit8 v2, v2, -0x1

    .line 936
    :cond_3e
    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 937
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 938
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 939
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 940
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 945
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v2           #toDelete:I
    .end local v3           #toTheLeft:Ljava/lang/CharSequence;
    :goto_4f
    return-void

    .line 942
    :cond_50
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 943
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto :goto_4f
.end method

.method public setCandidatesViewShown(Z)V
    .registers 3
    .parameter "shown"

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 449
    :cond_9
    return-void
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 986
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 982
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 978
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 990
    return-void
.end method

.method tutorialDone()V
    .registers 2

    .prologue
    .line 1074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    .line 1075
    return-void
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .registers 7
    .parameter "attr"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 533
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz p1, :cond_35

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v2, :cond_35

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, caps:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 537
    .local v1, ei:Landroid/view/inputmethod/EditorInfo;
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCap:Z

    if-eqz v3, :cond_29

    if-eqz v1, :cond_29

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v3, :cond_29

    .line 538
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 540
    :cond_29
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-nez v3, :cond_31

    if-eqz v0, :cond_36

    :cond_31
    const/4 v3, 0x1

    :goto_32
    invoke-virtual {v4, v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setShifted(Z)Z

    .line 542
    .end local v0           #caps:I
    .end local v1           #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_35
    return-void

    .line 540
    .restart local v0       #caps:I
    .restart local v1       #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_36
    const/4 v3, 0x0

    goto :goto_32
.end method
