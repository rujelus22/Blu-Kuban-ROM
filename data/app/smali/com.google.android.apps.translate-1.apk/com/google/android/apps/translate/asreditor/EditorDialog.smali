.class public Lcom/google/android/apps/translate/asreditor/EditorDialog;
.super Landroid/app/Dialog;
.source "EditorDialog.java"

# interfaces
.implements Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;
    }
.end annotation


# static fields
.field private static final MAX_ASR_RESULTS:I = 0x32

.field private static final MODE_ERROR:I = 0x4

.field private static final MODE_INITIALIZING:I = 0x1

.field private static final MODE_NOT_RECOGNIZING:I = 0x0

.field private static final MODE_RECOGNIZING:I = 0x2

.field private static final MODE_WORKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EditorDialog"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

.field private mGoButton:Landroid/widget/Button;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

.field private mKeyboardShown:Z

.field private mListener:Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mRecognitionError:I

.field private mRecognitionMode:I

.field private mRecognitionResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

.field private mSourceLanguage:Lcom/google/android/apps/translate/Language;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mVibrator:Lcom/google/android/apps/translate/asreditor/Vibrator;

.field private mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 83
    sget v0, Lcom/google/android/apps/translate/R$style;->VoiceSearchDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 84
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->getVoiceInputHelper()Lcom/google/android/apps/translate/VoiceInputHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    .line 88
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/asreditor/EditorDialog;)Lcom/google/android/apps/translate/asreditor/AsrResultEditor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/asreditor/EditorDialog;)Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mListener:Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;

    return-object v0
.end method

.method private changeRecognitionMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 284
    iput p1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionMode:I

    .line 285
    packed-switch p1, :pswitch_data_88

    .line 337
    :goto_6
    return-void

    .line 287
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    if-eqz v0, :cond_13

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->dismiss()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    .line 291
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_green:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setRecognizing(Z)V

    goto :goto_6

    .line 297
    :pswitch_21
    new-instance v0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;-><init>(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    new-instance v1, Lcom/google/android/apps/translate/asreditor/EditorDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog$3;-><init>(Lcom/google/android/apps/translate/asreditor/EditorDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->setListener(Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->showRecording()V

    goto :goto_6

    .line 309
    :pswitch_3e
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_red:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setRecognizing(Z)V

    .line 313
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    if-eqz v0, :cond_53

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->showRecording()V

    .line 317
    :cond_53
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->hideKeyboardAndShowPopup()V

    goto :goto_6

    .line 321
    :pswitch_57
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_blue:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    if-eqz v0, :cond_67

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->showWorking()V

    .line 326
    :cond_67
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setRecognizing(Z)V

    goto :goto_6

    .line 330
    :pswitch_6d
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_yellow:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    if-eqz v0, :cond_83

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    iget v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionError:I

    invoke-static {v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getErrorMessageId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->showError(I)V

    .line 334
    :cond_83
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->hideKeyboardAndShowPopup()V

    goto :goto_6

    .line 285
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_7
        :pswitch_21
        :pswitch_3e
        :pswitch_57
        :pswitch_6d
    .end packed-switch
.end method

.method private static getErrorMessageId(I)I
    .registers 4
    .parameter "errorType"

    .prologue
    .line 349
    packed-switch p0, :pswitch_data_30

    .line 364
    :pswitch_3
    const-string v0, "EditorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "other errors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget v0, Lcom/google/android/apps/translate/R$string;->error:I

    :goto_1d
    return v0

    .line 352
    :pswitch_1e
    sget v0, Lcom/google/android/apps/translate/R$string;->network_error:I

    goto :goto_1d

    .line 354
    :pswitch_21
    sget v0, Lcom/google/android/apps/translate/R$string;->audio_error:I

    goto :goto_1d

    .line 356
    :pswitch_24
    sget v0, Lcom/google/android/apps/translate/R$string;->server_error:I

    goto :goto_1d

    .line 358
    :pswitch_27
    sget v0, Lcom/google/android/apps/translate/R$string;->speech_timeout:I

    goto :goto_1d

    .line 360
    :pswitch_2a
    sget v0, Lcom/google/android/apps/translate/R$string;->no_match:I

    goto :goto_1d

    .line 362
    :pswitch_2d
    sget v0, Lcom/google/android/apps/translate/R$string;->recognizer_busy_error:I

    goto :goto_1d

    .line 349
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_3
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method private getRecordingPopupPosition()Landroid/graphics/Point;
    .registers 5

    .prologue
    .line 253
    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionStart()I

    move-result v2

    .line 254
    .local v2, start:I
    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionEnd()I

    move-result v0

    .line 256
    .local v0, end:I
    if-ltz v2, :cond_10

    if-gez v0, :cond_1c

    .line 257
    :cond_10
    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/SlotView;->length()I

    move-result v2

    .line 258
    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/SlotView;->length()I

    move-result v0

    .line 261
    :cond_1c
    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-static {v3, v2, v0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v1

    .line 262
    .local v1, point:Landroid/graphics/Point;
    return-object v1
.end method

.method private hideKeyboard()V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    .line 166
    const-string v0, "EditorDialog"

    const-string v1, "hideKeyboard"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 169
    :cond_17
    return-void
.end method

.method private hideKeyboardAndShowPopup()V
    .registers 4

    .prologue
    .line 340
    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mKeyboardShown:Z

    if-eqz v1, :cond_8

    .line 341
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->hideKeyboard()V

    .line 346
    :cond_7
    :goto_7
    return-void

    .line 342
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    if-eqz v1, :cond_7

    .line 343
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getRecordingPopupPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 344
    .local v0, point:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getPopupManager()Lcom/google/android/apps/translate/asreditor/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->showPopup(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/graphics/Point;)V

    goto :goto_7
.end method

.method private layoutChanged()V
    .registers 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    if-eqz v1, :cond_26

    .line 268
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getRecordingPopupPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 270
    .local v0, point:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 271
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->move(Landroid/graphics/Point;)V

    .line 276
    :goto_15
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/SlotView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_26

    .line 278
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/SlotView;->requestFocus()Z

    .line 281
    .end local v0           #point:Landroid/graphics/Point;
    :cond_26
    return-void

    .line 273
    .restart local v0       #point:Landroid/graphics/Point;
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getPopupManager()Lcom/google/android/apps/translate/asreditor/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->showPopup(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/graphics/Point;)V

    goto :goto_15
.end method

.method private renderLocalizedUi(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 134
    sget v2, Lcom/google/android/apps/translate/R$string;->label_ok:I

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {p1, v2, v3}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, acceptText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget v2, Lcom/google/android/apps/translate/R$string;->label_cancel:I

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {p1, v2, v3}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, cancelText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->hideKeyboard()V

    .line 174
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 175
    return-void
.end method

.method public onBeginningOfSpeech()V
    .registers 1

    .prologue
    .line 235
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 240
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 93
    sget v1, Lcom/google/android/apps/translate/R$layout;->editor_dialog:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->setContentView(I)V

    .line 95
    new-instance v1, Lcom/google/android/apps/translate/asreditor/Vibrator;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/translate/asreditor/Vibrator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mVibrator:Lcom/google/android/apps/translate/asreditor/Vibrator;

    .line 97
    sget v1, Lcom/google/android/apps/translate/R$id;->editor_dialog:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    sget v1, Lcom/google/android/apps/translate/R$id;->slot_editor:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setRecognitionManager(Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;)V

    .line 106
    sget v1, Lcom/google/android/apps/translate/R$id;->editor_field:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/editor/SlotView;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mInputSlot:Lcom/google/android/apps/translate/editor/SlotView;

    .line 108
    sget v1, Lcom/google/android/apps/translate/R$id;->editor_go_button:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mGoButton:Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mGoButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/apps/translate/asreditor/EditorDialog$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog$1;-><init>(Lcom/google/android/apps/translate/asreditor/EditorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v1, Lcom/google/android/apps/translate/R$id;->editor_cancel_button:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mCancelButton:Landroid/widget/Button;

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/apps/translate/asreditor/EditorDialog$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog$2;-><init>(Lcom/google/android/apps/translate/asreditor/EditorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionResults:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setAsrResults(Ljava/util/List;)V

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->renderLocalizedUi(Landroid/content/Context;)V

    .line 129
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    .line 130
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    .line 230
    return-void
.end method

.method public onError(I)V
    .registers 4
    .parameter "error"

    .prologue
    .line 199
    iput p1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionError:I

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mVibrator:Lcom/google/android/apps/translate/asreditor/Vibrator;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/asreditor/Vibrator;->vibrate(Landroid/view/View;)V

    .line 201
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    .line 202
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 245
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 250
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->hideKeyboard()V

    .line 162
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .parameter "noiseParams"

    .prologue
    .line 194
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    .line 195
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 6
    .parameter "resultsBundle"

    .prologue
    .line 206
    const-string v2, "results_recognition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 208
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->inputAsrResults(Ljava/util/List;)Z

    move-result v1

    .line 210
    .local v1, success:Z
    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mVibrator:Lcom/google/android/apps/translate/asreditor/Vibrator;

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/asreditor/Vibrator;->vibrate(Landroid/view/View;)V

    .line 212
    if-nez v1, :cond_1d

    .line 213
    const/4 v2, 0x7

    iput v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionError:I

    .line 214
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    .line 218
    :goto_1c
    return-void

    .line 216
    :cond_1d
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    goto :goto_1c
.end method

.method public onRmsChanged(F)V
    .registers 3
    .parameter "rmsdB"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecordingPopup:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->setLevel(F)V

    .line 225
    :cond_9
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 147
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 148
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 153
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 154
    return-void
.end method

.method public setAsrResults(Ljava/util/List;Lcom/google/android/apps/translate/Language;)V
    .registers 3
    .parameter
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/apps/translate/Language;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, alternatives:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionResults:Ljava/util/List;

    .line 189
    iput-object p2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    .line 190
    return-void
.end method

.method public setListener(Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mListener:Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;

    .line 182
    return-void
.end method

.method public startRecognizing()V
    .registers 5

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/VoiceInputHelper;->prepareAsrIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 385
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 388
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    .line 389
    return-void
.end method

.method public stopRecognizing()V
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionMode:I

    if-eqz v0, :cond_d

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V

    .line 397
    :cond_d
    return-void
.end method

.method public toggleRecognizing()V
    .registers 2

    .prologue
    .line 371
    iget v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog;->mRecognitionMode:I

    if-nez v0, :cond_8

    .line 372
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->startRecognizing()V

    .line 377
    :goto_7
    return-void

    .line 374
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->stopRecognizing()V

    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->startRecognizing()V

    goto :goto_7
.end method
