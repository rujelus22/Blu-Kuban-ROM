.class Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;
.super Landroid/os/Handler;
.source "VlingoLatinIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/keyboard/VlingoLatinIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VLHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;Lcom/vlingo/client/keyboard/VlingoLatinIM$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;-><init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .parameter "msg"

    .prologue
    .line 293
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_17e

    .line 368
    :cond_7
    :goto_7
    return-void

    .line 295
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    iget-object v12, v12, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-virtual {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isInputViewShown()Z

    move-result v12

    if-eqz v12, :cond_c6

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-virtual {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_d6

    .line 299
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v12, :cond_7

    .line 302
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 303
    .local v2, before:Ljava/lang/CharSequence;
    const-string v9, ""

    .line 304
    .local v9, prefix:Ljava/lang/String;
    if-eqz v2, :cond_57

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_57

    .line 305
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 306
    .local v3, c:C
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-virtual {v12, v3}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v12

    if-eqz v12, :cond_55

    const-string v12, ".!?,:;)]}"

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_57

    .line 307
    :cond_55
    const-string v9, " "

    .line 310
    .end local v3           #c:C
    :cond_57
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 311
    .local v1, after:Ljava/lang/CharSequence;
    const-string v11, ""

    .line 312
    .local v11, suffix:Ljava/lang/String;
    if-eqz v1, :cond_79

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_79

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->isWordSeparator(I)Z

    move-result v12

    if-nez v12, :cond_79

    .line 313
    const-string v11, " "

    .line 315
    :cond_79
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    .line 316
    .local v10, results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    invoke-virtual {v10}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v7

    .line 317
    .local v7, phrase:Lcom/vlingo/client/core/recognizer/results/RecResults;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, phraseStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->mComposing:Ljava/lang/StringBuilder;
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$200(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->mWord:Lcom/android/inputmethod/latin/WordComposer;
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$300(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 320
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 321
    const/4 v12, 0x1

    invoke-interface {v5, v8, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 322
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #calls: Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$400(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    goto/16 :goto_7

    .line 328
    .end local v1           #after:Ljava/lang/CharSequence;
    .end local v2           #before:Ljava/lang/CharSequence;
    .end local v5           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v7           #phrase:Lcom/vlingo/client/core/recognizer/results/RecResults;
    .end local v8           #phraseStr:Ljava/lang/String;
    .end local v9           #prefix:Ljava/lang/String;
    .end local v10           #results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    .end local v11           #suffix:Ljava/lang/String;
    :cond_c6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    const/4 v13, 0x1

    #setter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z
    invoke-static {v12, v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$502(Lcom/vlingo/client/keyboard/VlingoLatinIM;Z)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->showWindow(Z)V

    .line 331
    :cond_d6
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    const-wide/16 v13, 0xfa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 335
    :pswitch_ea
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #calls: Lcom/vlingo/client/keyboard/VlingoLatinIM;->displayNBest()V
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$600(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    goto/16 :goto_7

    .line 339
    :pswitch_f3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    const/4 v13, 0x1

    #setter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ForcedShow:Z
    invoke-static {v12, v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$502(Lcom/vlingo/client/keyboard/VlingoLatinIM;Z)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->showWindow(Z)V

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    iget-object v12, v12, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    iget-object v13, v13, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0xfa

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 345
    :pswitch_11b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-virtual {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 346
    .restart local v5       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_NBestShown:Z
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$700(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionStart:I
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$800(Lcom/vlingo/client/keyboard/VlingoLatinIM;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SelectionEnd:I
    invoke-static {v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$900(Lcom/vlingo/client/keyboard/VlingoLatinIM;)I

    move-result v13

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #calls: Lcom/vlingo/client/keyboard/VlingoLatinIM;->speedBump()V
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$400(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    goto/16 :goto_7

    .line 353
    .end local v5           #ic:Landroid/view/inputmethod/InputConnection;
    :pswitch_14b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    const/4 v13, 0x0

    #setter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_SpeedBump:Z
    invoke-static {v12, v13}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$1002(Lcom/vlingo/client/keyboard/VlingoLatinIM;Z)Z

    goto/16 :goto_7

    .line 357
    :pswitch_155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #calls: Lcom/vlingo/client/keyboard/VlingoLatinIM;->initDialog()V
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$1100(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    goto/16 :goto_7

    .line 361
    :pswitch_15e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/keyboard/VlingoLatinIM$VLHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$1200(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 362
    .local v6, kbd:Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinKeyboard;->deleteKey()Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v4

    .line 363
    .local v4, deleteKey:Landroid/inputmethodservice/Keyboard$Key;
    iget-boolean v12, v4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v12, :cond_7

    .line 364
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/android/inputmethod/latin/LatinKeyboard;->deleteWordMode(Z)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$1302(Landroid/inputmethodservice/Keyboard$Key;)Landroid/inputmethodservice/Keyboard$Key;

    goto/16 :goto_7

    .line 293
    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_ea
        :pswitch_f3
        :pswitch_11b
        :pswitch_14b
        :pswitch_155
        :pswitch_15e
    .end packed-switch
.end method
