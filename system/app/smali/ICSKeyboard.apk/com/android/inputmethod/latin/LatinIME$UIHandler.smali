.class public Lcom/android/inputmethod/latin/LatinIME$UIHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/latin/LatinIME;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_LANGUAGE_ON_SPACEBAR:I = 0x4

.field private static final MSG_FADEOUT_LANGUAGE_ON_SPACEBAR:I = 0x3

.field private static final MSG_PENDING_IMS_CALLBACK:I = 0x7

.field private static final MSG_SET_BIGRAM_PREDICTIONS:I = 0x6

.field private static final MSG_SPACE_TYPED:I = 0x5

.field private static final MSG_UPDATE_OLD_SUGGESTIONS:I = 0x8

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x1

.field private static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field private static final MSG_VOICE_RESULTS:I = 0x2


# instance fields
.field private mHasPendingFinishInput:Z

.field private mHasPendingFinishInputView:Z

.field private mHasPendingStartInput:Z

.field private mIsOrientationChanging:Z

.field private mPendingSuccesiveImsCallback:Z


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter "outerInstance"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V
    .registers 1
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateOldSuggestions()V

    return-void
.end method

.method private executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5
    .parameter "latinIme"
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    if-eqz v0, :cond_9

    .line 406
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->access$6(Lcom/android/inputmethod/latin/LatinIME;Z)V

    .line 407
    :cond_9
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    if-eqz v0, :cond_10

    .line 408
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinIME;->access$7(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 409
    :cond_10
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    if-eqz v0, :cond_17

    .line 410
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {p1, p2, p3}, Lcom/android/inputmethod/latin/LatinIME;->access$8(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 411
    :cond_17
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 412
    return-void
.end method

.method private postUpdateOldSuggestions()V
    .registers 4

    .prologue
    const/16 v0, 0x8

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    return-void
.end method

.method private resetPendingImsCallback()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 399
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 400
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 401
    return-void
.end method


# virtual methods
.method public cancelDoubleSpacesTimer()V
    .registers 2

    .prologue
    .line 377
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 378
    return-void
.end method

.method public cancelUpdateBigramPredictions()V
    .registers 2

    .prologue
    .line 338
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 339
    return-void
.end method

.method public cancelUpdateShiftState()V
    .registers 2

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 329
    return-void
.end method

.method public cancelUpdateSuggestions()V
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 315
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinIME;

    .line 265
    .local v1, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$2(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    .line 266
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 267
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_78

    .line 301
    :cond_13
    :goto_13
    :pswitch_13
    return-void

    .line 269
    :pswitch_14
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    goto :goto_13

    .line 272
    :pswitch_18
    #calls: Lcom/android/inputmethod/latin/LatinIME;->setOldSuggestions()V
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$3(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 274
    :pswitch_1b
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_13

    .line 277
    :pswitch_1f
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateBigramPredictions()V

    goto :goto_13

    .line 280
    :pswitch_23
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$4(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 281
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_39
    const/4 v3, 0x0

    .line 280
    :goto_3a
    invoke-virtual {v4, v3}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleVoiceResults(Z)V

    goto :goto_13

    .line 281
    :cond_3e
    const/4 v3, 0x1

    goto :goto_3a

    .line 284
    :pswitch_40
    if-eqz v0, :cond_56

    .line 286
    const/high16 v3, 0x3f80

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v4

    .line 287
    iget v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    .line 286
    add-float/2addr v3, v4

    .line 287
    const/high16 v4, 0x4000

    .line 286
    div-float v4, v3, v4

    .line 288
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 285
    invoke-virtual {v0, v4, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    .line 290
    :cond_56
    const/4 v3, 0x4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 291
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v4

    iget v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mDurationOfFadeoutLanguageOnSpacebar:I

    int-to-long v4, v4

    .line 290
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13

    .line 294
    :pswitch_68
    if-eqz v0, :cond_13

    .line 296
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v3

    iget v4, v3, Lcom/android/inputmethod/latin/Settings$Values;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    .line 297
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 295
    invoke-virtual {v0, v4, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    goto :goto_13

    .line 267
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1b
        :pswitch_23
        :pswitch_40
        :pswitch_68
        :pswitch_13
        :pswitch_1f
        :pswitch_13
        :pswitch_18
    .end packed-switch
.end method

.method public hasPendingUpdateSuggestions()Z
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isAcceptingDoubleSpaces()Z
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public onFinishInput()V
    .registers 4

    .prologue
    .line 459
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 467
    :goto_a
    return-void

    .line 463
    :cond_b
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 464
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 465
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$7(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_a
.end method

.method public onFinishInputView(Z)V
    .registers 4
    .parameter "finishingInput"

    .prologue
    .line 449
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 451
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 456
    :goto_a
    return-void

    .line 453
    :cond_b
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 454
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->access$6(Lcom/android/inputmethod/latin/LatinIME;Z)V

    goto :goto_a
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 415
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 417
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 428
    :goto_a
    return-void

    .line 419
    :cond_b
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    if-eqz v1, :cond_16

    if-eqz p2, :cond_16

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 422
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccesiveImsCallback:Z

    .line 424
    :cond_16
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 425
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 426
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$8(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_a
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 7
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x7

    .line 431
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 433
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 446
    :goto_a
    return-void

    .line 435
    :cond_b
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccesiveImsCallback:Z

    if-eqz v1, :cond_1e

    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccesiveImsCallback:Z

    .line 438
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 439
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 440
    const-wide/16 v2, 0x320

    .line 439
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 442
    :cond_1e
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 443
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 444
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$9(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_a
.end method

.method public postUpdateBigramPredictions()V
    .registers 5

    .prologue
    const/4 v0, 0x6

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 334
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v0

    iget v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayUpdateSuggestions:I

    int-to-long v2, v0

    .line 333
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    return-void
.end method

.method public postUpdateShiftKeyState()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v0

    iget v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayUpdateShiftState:I

    int-to-long v2, v0

    .line 323
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    return-void
.end method

.method public postUpdateSuggestions()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 310
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v0

    iget v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayUpdateSuggestions:I

    int-to-long v2, v0

    .line 309
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    return-void
.end method

.method public startDisplayLanguageOnSpacebar(Z)V
    .registers 9
    .parameter "localeChanged"

    .prologue
    const/4 v5, 0x3

    .line 346
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/LatinIME;

    .line 347
    .local v2, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 348
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 349
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$2(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 350
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_52

    .line 351
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$2(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    .line 353
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-nez p1, :cond_53

    .line 354
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v4

    iget v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    if-ltz v4, :cond_53

    const/4 v3, 0x0

    .line 356
    .local v3, needsToDisplayLanguage:Z
    :goto_2b
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v4

    iget v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    if-eqz v4, :cond_3a

    .line 357
    if-eqz v3, :cond_55

    const/high16 v4, 0x3f80

    :goto_37
    invoke-virtual {v0, v4, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    .line 362
    :cond_3a
    if-eqz p1, :cond_52

    .line 363
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v4

    iget v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    if-lez v4, :cond_52

    .line 364
    invoke-virtual {p0, v5, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 365
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v5

    iget v5, v5, Lcom/android/inputmethod/latin/Settings$Values;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    int-to-long v5, v5

    .line 364
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .end local v3           #needsToDisplayLanguage:Z
    :cond_52
    return-void

    .line 354
    .restart local v1       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_53
    const/4 v3, 0x1

    goto :goto_2b

    .line 358
    .restart local v3       #needsToDisplayLanguage:Z
    :cond_55
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v4

    iget v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    goto :goto_37
.end method

.method public startDoubleSpacesTimer()V
    .registers 5

    .prologue
    const/4 v0, 0x5

    .line 371
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 373
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/inputmethod/latin/Settings$Values;->mDoubleSpacesTurnIntoPeriodTimeout:J

    .line 372
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 374
    return-void
.end method

.method public startOrientationChanging()V
    .registers 3

    .prologue
    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 393
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 394
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$2(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->saveKeyboardState()V

    .line 395
    return-void
.end method

.method public updateVoiceResults()V
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    return-void
.end method
