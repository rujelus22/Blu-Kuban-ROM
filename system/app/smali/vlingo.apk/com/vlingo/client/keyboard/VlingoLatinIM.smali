.class public Lcom/vlingo/client/keyboard/VlingoLatinIM;
.super Lcom/android/inputmethod/latin/LatinIME;
.source "VlingoLatinIM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/keyboard/VlingoLatinIM$CancelListener;,
        Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;,
        Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;
    }
.end annotation


# static fields
.field static final KEYCODE_CLEAR_ALL_KEY:I = -0x7e

.field static final KEYCODE_VLINGO_KEY:I = -0x7f

.field private static final MSG_DELETE_WORD:I = 0x6

.field private static final MSG_DISPLAY_NBEST:I = 0x1

.field private static final MSG_INIT_KEYBOARD:I = 0x5

.field private static final MSG_INSERT_RECOGNITION:I = 0x0

.field private static final MSG_SHOW_HIGHLIGHT:I = 0x3

.field private static final MSG_SHOW_KEYBOARD:I = 0x2

.field private static final MSG_SPEED_BUMP:I = 0x4

.field public static s_AutoKeyboard:Z

.field public static s_MainDict:Z

.field public static s_NBest:Z

.field private static sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

.field private static sm_KbdRecoDialog:Lcom/vlingo/client/keyboard/KbdRecoDialog;

.field public static sm_Me:Lcom/vlingo/client/keyboard/VlingoLatinIM;


# instance fields
.field private m_CursorPosition:I

.field private m_ForcedShow:Z

.field private m_InputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

.field private m_KbdRecoHandler:Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;

.field private m_LastDeleteWordTime:J

.field private m_NBestShown:Z

.field private m_ProgressDialog:Landroid/app/AlertDialog;

.field private m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

.field private m_RestoreAutoSpace:Z

.field private m_SaveAutoSpace:Z

.field private m_SelectionEnd:I

.field private m_SelectionStart:I

.field private m_SpeedBump:Z

.field m_VLHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_AutoKeyboard:Z

    .line 65
    sput-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_NBest:Z

    .line 66
    sput-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_MainDict:Z

    .line 68
    sput-object v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 84
    new-instance v0, Lcom/vlingo/client/keyboard/KbdRecoDialog;

    invoke-direct {v0}, Lcom/vlingo/client/keyboard/KbdRecoDialog;-><init>()V

    sput-object v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_KbdRecoDialog:Lcom/vlingo/client/keyboard/KbdRecoDialog;

    .line 88
    sput-object v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_Me:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z

    .line 71
    iput-boolean v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_RestoreAutoSpace:Z

    .line 73
    iput-boolean v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    .line 74
    iput-boolean v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z

    .line 76
    iput v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_CursorPosition:I

    .line 80
    iput-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_InputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    .line 81
    iput-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    .line 82
    iput-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 83
    new-instance v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;-><init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;Lcom/vlingo/client/keyboard/VlingoLatinIM$1;)V

    iput-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_KbdRecoHandler:Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;

    .line 86
    new-instance v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;-><init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;Lcom/vlingo/client/keyboard/VlingoLatinIM$1;)V

    iput-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    .line 187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_LastDeleteWordTime:J

    .line 640
    return-void
.end method

.method static synthetic access$1002(Lcom/vlingo/client/keyboard/VlingoLatinIM;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->initDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Lcom/android/inputmethod/latin/LatinKeyboardView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/inputmethodservice/Keyboard$Key;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    sput-object p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Lcom/vlingo/client/asr/ProgressView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/vlingo/client/keyboard/KbdRecoDialog;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_KbdRecoDialog:Lcom/vlingo/client/keyboard/KbdRecoDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mComposing:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Lcom/android/inputmethod/latin/WordComposer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V

    return-void
.end method

.method static synthetic access$502(Lcom/vlingo/client/keyboard/VlingoLatinIM;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->displayNBest()V

    return-void
.end method

.method static synthetic access$700(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    return v0
.end method

.method static synthetic access$800(Lcom/vlingo/client/keyboard/VlingoLatinIM;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionStart:I

    return v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/keyboard/VlingoLatinIM;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionEnd:I

    return v0
.end method

.method private clearTextBox()V
    .registers 4

    .prologue
    const/16 v1, 0x1f4

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 226
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_a

    .line 233
    :goto_9
    return-void

    .line 228
    :cond_a
    invoke-interface {v0, v1, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 229
    const-string v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 230
    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 231
    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 232
    invoke-virtual {p0, v2}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->setCandidatesViewShown(Z)V

    goto :goto_9
.end method

.method private deleteWord()V
    .registers 13

    .prologue
    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 190
    .local v6, when:J
    iget-wide v8, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_LastDeleteWordTime:J

    const-wide/16 v10, 0xfa

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-lez v8, :cond_15

    .line 191
    iput-wide v6, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_LastDeleteWordTime:J

    .line 192
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 193
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_16

    .line 222
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_15
    :goto_15
    return-void

    .line 197
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_16
    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 198
    .local v3, req:Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v8, 0x0

    invoke-interface {v1, v3, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 200
    .local v0, e:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_15

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v8, :cond_15

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, len:I
    if-eqz v2, :cond_15

    .line 204
    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 205
    .local v5, wStart:I
    :goto_30
    if-lez v5, :cond_43

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {p0, v8}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 206
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    .line 208
    :cond_43
    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 209
    .local v4, wEnd:I
    if-ne v5, v4, :cond_58

    .line 210
    :goto_47
    if-ge v4, v2, :cond_58

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {p0, v8}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v8

    if-nez v8, :cond_58

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 214
    :cond_58
    :goto_58
    if-lez v5, :cond_6b

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {p0, v8}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 215
    add-int/lit8 v5, v5, -0x1

    goto :goto_58

    .line 217
    :cond_6b
    if-eq v5, v4, :cond_15

    .line 220
    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v8, v5

    iget v9, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int v9, v4, v9

    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_15
.end method

.method private displayNBest()V
    .registers 22

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mShowSuggestions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isInputViewShown()Z

    move-result v17

    if-nez v17, :cond_18

    .line 373
    :cond_e
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    .line 483
    :goto_17
    return-void

    .line 377
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 378
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_28

    .line 379
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto :goto_17

    .line 383
    :cond_28
    new-instance v11, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v11}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 384
    .local v11, req:Landroid/view/inputmethod/ExtractedTextRequest;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v5, v11, v0}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 386
    .local v2, e:Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_47

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_47

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .local v6, len:I
    if-nez v6, :cond_51

    .line 387
    .end local v6           #len:I
    :cond_47
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto :goto_17

    .line 391
    .restart local v6       #len:I
    :cond_51
    const/4 v15, -0x1

    .line 392
    .local v15, wStart:I
    const/4 v14, -0x1

    .line 393
    .local v14, wEnd:I
    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x2

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c5

    const/4 v12, 0x1

    .line 394
    .local v12, selecting:Z
    :goto_62
    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v17, v0

    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_132

    .line 395
    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v17, v0

    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 396
    .local v13, start:I
    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v17, v0

    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 397
    .local v3, end:I
    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v17, v0

    if-lez v17, :cond_a2

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    add-int/lit8 v18, v13, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v17

    if-eqz v17, :cond_b8

    :cond_a2
    if-ge v3, v6, :cond_ca

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v17

    if-nez v17, :cond_ca

    .line 399
    :cond_b8
    if-nez v12, :cond_c7

    const/16 v17, 0x1

    :goto_bc
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto/16 :goto_17

    .line 393
    .end local v3           #end:I
    .end local v12           #selecting:Z
    .end local v13           #start:I
    :cond_c5
    const/4 v12, 0x0

    goto :goto_62

    .line 399
    .restart local v3       #end:I
    .restart local v12       #selecting:Z
    .restart local v13       #start:I
    :cond_c7
    const/16 v17, 0x0

    goto :goto_bc

    .line 402
    :cond_ca
    move v4, v13

    .local v4, i:I
    :goto_cb
    if-ge v4, v3, :cond_ef

    .line 403
    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v17

    if-eqz v17, :cond_ec

    .line 404
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto/16 :goto_17

    .line 402
    :cond_ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_cb

    .line 408
    :cond_ef
    move v15, v13

    .line 409
    move v14, v3

    .line 410
    iput v13, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 417
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v13           #start:I
    :cond_f3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_125

    .line 418
    iget v15, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 419
    iget v14, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 420
    if-ge v15, v6, :cond_13f

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v17

    if-eqz v17, :cond_13f

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isSpace(C)Z

    move-result v17

    if-nez v17, :cond_13f

    .line 422
    add-int/lit8 v14, v14, 0x1

    .line 437
    :cond_125
    :goto_125
    if-ne v15, v14, :cond_19a

    .line 438
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto/16 :goto_17

    .line 412
    :cond_132
    if-eqz v12, :cond_f3

    .line 413
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto/16 :goto_17

    .line 424
    :cond_13f
    if-lez v15, :cond_168

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    add-int/lit8 v18, v15, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v17

    if-eqz v17, :cond_168

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    add-int/lit8 v18, v15, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isSpace(C)Z

    move-result v17

    if-nez v17, :cond_168

    .line 426
    add-int/lit8 v15, v15, -0x1

    goto :goto_125

    .line 429
    :cond_168
    :goto_168
    if-lez v15, :cond_181

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    add-int/lit8 v18, v15, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v17

    if-nez v17, :cond_181

    .line 430
    add-int/lit8 v15, v15, -0x1

    goto :goto_168

    .line 432
    :cond_181
    :goto_181
    if-ge v14, v6, :cond_125

    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v17

    if-nez v17, :cond_125

    .line 433
    add-int/lit8 v14, v14, 0x1

    goto :goto_181

    .line 442
    :cond_19a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z

    move/from16 v17, v0

    if-nez v17, :cond_1df

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1df

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionStart:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_1df

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionEnd:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v14, v0, :cond_1df

    .line 443
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    .line 444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionEnd:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionEnd:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 445
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V

    goto/16 :goto_17

    .line 449
    :cond_1df
    sget-boolean v17, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_NBest:Z

    if-eqz v17, :cond_23f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z

    move/from16 v17, v0

    if-nez v17, :cond_23f

    const/4 v8, 0x1

    .line 450
    .local v8, nBest:Z
    :goto_1ec
    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 451
    .local v16, word:Ljava/lang/String;
    iget-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, phrase:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vlingo/client/VlingoApplication;->getNBestManager()Lcom/vlingo/client/NBestManager;

    move-result-object v7

    .line 453
    .local v7, manager:Lcom/vlingo/client/NBestManager;
    if-eqz v8, :cond_241

    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v10, v0}, Lcom/vlingo/client/NBestManager;->getNBestForWord(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v9

    .line 454
    .local v9, nbestList:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    :goto_216
    if-eqz v9, :cond_21e

    invoke-virtual {v9}, Ljava/util/Vector;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_245

    .line 456
    :cond_21e
    iget v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v14, :cond_22c

    .line 457
    if-eqz v8, :cond_243

    invoke-virtual {v7, v10, v15}, Lcom/vlingo/client/NBestManager;->getNBestForWord(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v9

    .line 459
    :cond_22c
    :goto_22c
    if-eqz v9, :cond_234

    invoke-virtual {v9}, Ljava/util/Vector;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_245

    .line 460
    :cond_234
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto/16 :goto_17

    .line 449
    .end local v7           #manager:Lcom/vlingo/client/NBestManager;
    .end local v8           #nBest:Z
    .end local v9           #nbestList:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    .end local v10           #phrase:Ljava/lang/String;
    .end local v16           #word:Ljava/lang/String;
    :cond_23f
    const/4 v8, 0x0

    goto :goto_1ec

    .line 453
    .restart local v7       #manager:Lcom/vlingo/client/NBestManager;
    .restart local v8       #nBest:Z
    .restart local v10       #phrase:Ljava/lang/String;
    .restart local v16       #word:Ljava/lang/String;
    :cond_241
    const/4 v9, 0x0

    goto :goto_216

    .line 457
    .restart local v9       #nbestList:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    :cond_243
    const/4 v9, 0x0

    goto :goto_22c

    .line 465
    :cond_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 466
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_24f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_271

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/inputmethod/latin/WordComposer;->add(I[I)V

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_24f

    .line 469
    :cond_271
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mPredicting:Z

    .line 470
    invoke-static {v9}, Lcom/vlingo/client/keyboard/NBestSuggest;->setNBestVector(Ljava/util/Vector;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->postUpdateSuggestions()V

    .line 473
    if-le v6, v14, :cond_29d

    .line 474
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_RestoreAutoSpace:Z

    .line 475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mAutoSpace:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SaveAutoSpace:Z

    .line 476
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mAutoSpace:Z

    .line 479
    :cond_29d
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    .line 480
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionStart:I

    .line 481
    move-object/from16 v0, p0

    iput v14, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionEnd:I

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x64

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_17
.end method

.method private handleVlingoKey()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 238
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_8

    .line 288
    :cond_7
    :goto_7
    return-void

    .line 241
    :cond_8
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v2, i:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    sget-object v7, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_ONLY_TOS:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v2}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 249
    .end local v2           #i:Landroid/content/Intent;
    :cond_24
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 250
    .local v4, recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    invoke-virtual {v4}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z

    move-result v7

    if-nez v7, :cond_7

    .line 253
    iget-object v7, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 255
    move-object v5, v4

    .line 256
    .local v5, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v5}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 258
    .local v0, ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v7, "vp_main"

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 260
    new-instance v7, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v7}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v6

    .line 261
    .local v6, tex:Landroid/view/inputmethod/ExtractedText;
    const-string v1, ""

    .line 262
    .local v1, curText:Ljava/lang/String;
    iput v8, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_CursorPosition:I

    .line 263
    if-eqz v6, :cond_5c

    .line 264
    iget-object v7, v6, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_58

    .line 265
    iget-object v7, v6, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_58
    iget v7, v6, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v7, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_CursorPosition:I

    .line 268
    :cond_5c
    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 269
    iget v7, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_CursorPosition:I

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 270
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 272
    new-instance v7, Lcom/vlingo/client/keyboard/VlingoLatinIM$1;

    invoke-direct {v7, p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM$1;-><init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    invoke-static {v7}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 285
    sget-object v7, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_KbdRecoDialog:Lcom/vlingo/client/keyboard/KbdRecoDialog;

    invoke-virtual {v4, v7}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 286
    invoke-static {p0, v8}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;Z)Z

    .line 287
    iget-object v7, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v7}, Lcom/vlingo/client/asr/ProgressView;->show()V

    goto :goto_7
.end method

.method private hideNBest(Z)V
    .registers 5
    .parameter "removeSelection"

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-boolean v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    if-eqz v1, :cond_27

    .line 487
    iput-boolean v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    .line 488
    iput-boolean v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mPredicting:Z

    .line 489
    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 490
    if-eqz p1, :cond_1d

    .line 491
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 492
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1d

    .line 493
    iget v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_CursorPosition:I

    iget v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_CursorPosition:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 495
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1d
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->postUpdateSuggestions()V

    .line 496
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vlingo/client/keyboard/NBestSuggest;->setNBestVector(Ljava/util/Vector;)V

    .line 497
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 499
    :cond_27
    return-void
.end method

.method private declared-synchronized initDialog()V
    .registers 9

    .prologue
    .line 601
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_1f

    .line 603
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_InputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_InputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .local v2, token:Landroid/os/IBinder;
    if-nez v2, :cond_21

    .line 604
    .end local v2           #token:Landroid/os/IBinder;
    :cond_11
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_6c

    .line 621
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 607
    .restart local v2       #token:Landroid/os/IBinder;
    :cond_21
    const v4, 0x7f030036

    const/4 v5, 0x0

    :try_start_25
    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/asr/ProgressView;

    iput-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 608
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    sget-object v5, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_KbdRecoDialog:Lcom/vlingo/client/keyboard/KbdRecoDialog;

    iget-object v6, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_KbdRecoHandler:Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;

    invoke-virtual {v4, v5, v6}, Lcom/vlingo/client/asr/ProgressView;->init(Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;Lcom/vlingo/client/android/core/asr/ProgressHandler;)V

    .line 609
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 611
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 612
    new-instance v4, Lcom/vlingo/client/keyboard/VlingoLatinIM$CancelListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vlingo/client/keyboard/VlingoLatinIM$CancelListener;-><init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;Lcom/vlingo/client/keyboard/VlingoLatinIM$1;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    .line 614
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 615
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 616
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 617
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 618
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 619
    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V
    :try_end_6b
    .catchall {:try_start_25 .. :try_end_6b} :catchall_6c

    goto :goto_1f

    .line 601
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #window:Landroid/view/Window;
    :catchall_6c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private speedBump()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    .line 532
    sget-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_NBest:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z

    if-eqz v0, :cond_1e

    .line 533
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z

    .line 534
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    :cond_1e
    return-void
.end method


# virtual methods
.method public hideWindow()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 626
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 628
    :cond_11
    invoke-super {p0}, Lcom/android/inputmethod/latin/LatinIME;->hideWindow()V

    .line 629
    return-void
.end method

.method protected launchSettings()V
    .registers 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->handleClose()V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/vlingo/client/VlingoIMSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 92
    sput-object p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_Me:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    .line 93
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AUTO_KEYBOARD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_AutoKeyboard:Z

    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NBEST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_NBest:Z

    .line 97
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MAIN_DICT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_MainDict:Z

    .line 99
    invoke-static {}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->init()V

    .line 100
    invoke-super {p0}, Lcom/android/inputmethod/latin/LatinIME;->onCreate()V

    .line 101
    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/inputmethod/latin/LatinIME;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboardView;

    iput-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_InputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    .line 597
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_InputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    return-object v0
.end method

.method public onFinishInput()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-super {p0}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInput()V

    .line 572
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 573
    iput-boolean v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_RestoreAutoSpace:Z

    .line 574
    iput-boolean v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    .line 575
    return-void
.end method

.method public onKey(I[I)V
    .registers 12
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v8, 0x0

    .line 141
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V

    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, hideNBest:Z
    sparse-switch p1, :sswitch_data_6e

    .line 181
    :cond_8
    :goto_8
    if-eqz v0, :cond_d

    .line 182
    invoke-direct {p0, v8}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    .line 184
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onKey(I[I)V

    .line 185
    :goto_10
    return-void

    .line 145
    :sswitch_11
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->handleVlingoKey()V

    goto :goto_10

    .line 148
    :sswitch_15
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->clearTextBox()V

    goto :goto_10

    .line 155
    :sswitch_19
    const/4 v0, 0x0

    .line 156
    goto :goto_8

    .line 158
    :sswitch_1b
    sget-object v4, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v4, :cond_4c

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 160
    .local v2, when:J
    iget-wide v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_LastDeleteWordTime:J

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-ltz v4, :cond_32

    sget-object v4, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v4, v4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v4, :cond_36

    .line 161
    :cond_32
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->deleteWord()V

    goto :goto_10

    .line 164
    :cond_36
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 165
    .local v1, kbd:Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-virtual {v1, v8}, Lcom/android/inputmethod/latin/LatinKeyboard;->deleteWordMode(Z)Landroid/inputmethodservice/Keyboard$Key;

    .line 166
    const/4 v4, 0x0

    sput-object v4, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 171
    .end local v1           #kbd:Lcom/android/inputmethod/latin/LatinKeyboard;
    .end local v2           #when:J
    :goto_44
    iget-boolean v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    if-eqz v4, :cond_8

    .line 172
    invoke-virtual {p0, v8}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->setCandidatesViewShown(Z)V

    goto :goto_8

    .line 169
    :cond_4c
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_44

    .line 175
    :sswitch_5b
    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 176
    .restart local v1       #kbd:Lcom/android/inputmethod/latin/LatinKeyboard;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->deleteWordMode(Z)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v4

    sput-object v4, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 177
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->deleteWord()V

    goto :goto_10

    .line 143
    :sswitch_data_6e
    .sparse-switch
        -0x7f -> :sswitch_11
        -0x7e -> :sswitch_15
        -0x66 -> :sswitch_5b
        -0x65 -> :sswitch_19
        -0x64 -> :sswitch_19
        -0x5 -> :sswitch_1b
        -0x3 -> :sswitch_19
        -0x2 -> :sswitch_19
        -0x1 -> :sswitch_19
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 503
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V

    .line 504
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isInputViewShown()Z

    move-result v1

    .line 505
    .local v1, wasShown:Z
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 506
    .local v0, ret:Z
    sparse-switch p1, :sswitch_data_2c

    :cond_f
    :goto_f
    move v2, v0

    .line 528
    :goto_10
    return v2

    .line 508
    :sswitch_11
    iget-boolean v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z

    if-eqz v2, :cond_1c

    .line 509
    iput-boolean v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z

    .line 510
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideWindow()V

    .line 511
    const/4 v2, 0x1

    goto :goto_10

    .line 513
    :cond_1c
    if-eqz v0, :cond_f

    .line 514
    move v0, v1

    goto :goto_f

    .line 518
    :sswitch_20
    iget-boolean v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    if-eqz v2, :cond_27

    .line 519
    invoke-virtual {p0, v3}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->setCandidatesViewShown(Z)V

    .line 525
    :cond_27
    :sswitch_27
    invoke-direct {p0, v3}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideNBest(Z)V

    goto :goto_f

    .line 506
    nop

    :sswitch_data_2c
    .sparse-switch
        -0x5 -> :sswitch_20
        0x4 -> :sswitch_11
        0x13 -> :sswitch_27
        0x14 -> :sswitch_27
        0x15 -> :sswitch_27
        0x16 -> :sswitch_27
        0x43 -> :sswitch_20
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 649
    const/4 v1, -0x5

    if-ne p1, v1, :cond_16

    .line 650
    sget-object v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_16

    .line 651
    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 652
    .local v0, kbd:Lcom/android/inputmethod/latin/LatinKeyboard;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->deleteWordMode(Z)Landroid/inputmethodservice/Keyboard$Key;

    .line 653
    const/4 v1, 0x0

    sput-object v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 656
    .end local v0           #kbd:Lcom/android/inputmethod/latin/LatinKeyboard;
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 9
    .parameter "ei"
    .parameter "restart"

    .prologue
    const/4 v3, 0x0

    .line 547
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 551
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_19

    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .local v0, e:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_19

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_23

    .line 553
    .end local v0           #e:Landroid/view/inputmethod/ExtractedText;
    :cond_19
    iget-boolean v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z

    if-eqz v2, :cond_22

    .line 554
    iput-boolean v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z

    .line 555
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->hideWindow()V

    .line 567
    :cond_22
    :goto_22
    return-void

    .line 560
    .restart local v0       #e:Landroid/view/inputmethod/ExtractedText;
    :cond_23
    sget-boolean v2, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_AutoKeyboard:Z

    if-eqz v2, :cond_22

    .line 564
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isInputViewShown()Z

    move-result v2

    if-nez v2, :cond_22

    .line 565
    iget-object v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 543
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V

    .line 591
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 14
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 117
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()I

    move-result v0

    .line 118
    .local v0, state:I
    iget-boolean v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_RestoreAutoSpace:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    const/16 v3, 0x8

    if-ne v0, v3, :cond_18

    .line 120
    :cond_12
    iput-boolean v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_RestoreAutoSpace:Z

    .line 121
    iget-boolean v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SaveAutoSpace:Z

    iput-boolean v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mAutoSpace:Z

    .line 123
    :cond_18
    iget-object v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_21

    move v1, v2

    .line 124
    .local v1, wasComposing:Z
    :cond_21
    invoke-super/range {p0 .. p6}, Lcom/android/inputmethod/latin/LatinIME;->onUpdateSelection(IIIIII)V

    .line 127
    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isInputViewShown()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 137
    :cond_2c
    :goto_2c
    return-void

    .line 130
    :cond_2d
    iget-boolean v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z

    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z

    if-nez v3, :cond_47

    .line 131
    :cond_35
    iget-object v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    :cond_47
    iput p3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_CursorPosition:I

    .line 135
    iget-object v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x65

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2c
.end method

.method public onWindowHidden()V
    .registers 3

    .prologue
    .line 585
    sget-object v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_KbdRecoDialog:Lcom/vlingo/client/keyboard/KbdRecoDialog;

    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/KbdRecoDialog;->deactivated(Lcom/vlingo/client/asr/ProgressView;)V

    .line 586
    return-void
.end method

.method public onWindowShown()V
    .registers 5

    .prologue
    .line 579
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_12

    .line 580
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    :cond_12
    return-void
.end method

.method protected pickSuggestion(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "suggestion"

    .prologue
    .line 661
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;)V

    .line 662
    invoke-direct {p0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V

    .line 663
    return-void
.end method
