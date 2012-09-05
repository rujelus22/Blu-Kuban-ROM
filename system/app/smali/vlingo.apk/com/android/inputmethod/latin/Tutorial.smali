.class public Lcom/android/inputmethod/latin/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Tutorial$Bubble;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_BUBBLE:I


# instance fields
.field private mBubbleIndex:I

.field private mBubblePointerOffset:I

.field private mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/Tutorial$Bubble;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private mInputView:Landroid/view/View;

.field private mLocation:[I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/LatinKeyboardView;)V
    .registers 25
    .parameter "ime"
    .parameter "inputView"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    .line 47
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mLocation:[I

    .line 56
    new-instance v3, Lcom/android/inputmethod/latin/Tutorial$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/inputmethod/latin/Tutorial$1;-><init>(Lcom/android/inputmethod/latin/Tutorial;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 170
    .local v4, context:Landroid/content/Context;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWidth()I

    move-result v21

    .line 172
    .local v21, inputWidth:I
    div-int/lit8 v7, v21, 0x14

    .line 173
    .local v7, x:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubblePointerOffset:I

    .line 175
    new-instance v2, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    const v6, 0x7f020081

    const/4 v8, 0x0

    const v9, 0x7f09002b

    const v10, 0x7f090430

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 178
    .local v2, bWelcome:Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v8, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    const v12, 0x7f020081

    const/4 v14, 0x0

    const v15, 0x7f09002c

    const v16, 0x7f090430

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move v13, v7

    invoke-direct/range {v8 .. v16}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 182
    .local v8, bAccents:Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v9, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    const v13, 0x7f020082

    const/4 v15, 0x0

    const v16, 0x7f09002d

    const v17, 0x7f090430

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 186
    .local v9, b123:Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v10, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    const v14, 0x7f020082

    const/16 v16, 0x0

    const v17, 0x7f09002e

    const v18, 0x7f090430

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v13, p2

    move v15, v7

    invoke-direct/range {v10 .. v18}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 190
    .local v10, bABC:Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v11, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    const v15, 0x7f020082

    const/16 v17, 0x0

    const v18, 0x7f09002f

    const v19, 0x7f090430

    move-object/from16 v12, p0

    move-object v13, v4

    move-object/from16 v14, p2

    move/from16 v16, v7

    invoke-direct/range {v11 .. v19}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 194
    .local v11, bSettings:Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v12, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    const v16, 0x7f020081

    const/16 v18, 0x0

    const v19, 0x7f090030

    const v20, 0x7f090431

    move-object/from16 v13, p0

    move-object v14, v4

    move-object/from16 v15, p2

    move/from16 v17, v7

    invoke-direct/range {v12 .. v20}, Lcom/android/inputmethod/latin/Tutorial$Bubble;-><init>(Lcom/android/inputmethod/latin/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 198
    .local v12, bDone:Lcom/android/inputmethod/latin/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/Tutorial;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mLocation:[I

    return-object v0
.end method


# virtual methods
.method close()Z
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Tutorial;->hide()V

    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method hide()V
    .registers 4

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 237
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->hide()V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_17
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    return-void
.end method

.method next()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    if-ltz v1, :cond_2b

    .line 212
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    iget v4, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->isShowing()Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v2

    .line 232
    :goto_17
    return v1

    .line 216
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    if-gt v0, v1, :cond_2b

    .line 217
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Tutorial$Bubble;->hide()V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 220
    .end local v0           #i:I
    :cond_2b
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    .line 221
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_4e

    .line 222
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 224
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->tutorialDone()V

    move v1, v3

    .line 225
    goto :goto_17

    .line 227
    :cond_4e
    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_58

    iget v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5f

    .line 228
    :cond_58
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->toggleSymbols()V

    .line 230
    :cond_5f
    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/inputmethod/latin/Tutorial;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbles:Ljava/util/List;

    iget v6, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v2

    .line 232
    goto :goto_17
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 250
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Tutorial;->next()Z

    .line 252
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method start()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/inputmethod/latin/Tutorial;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mBubbleIndex:I

    .line 205
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial;->mInputView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Tutorial;->next()Z

    .line 207
    return-void
.end method
