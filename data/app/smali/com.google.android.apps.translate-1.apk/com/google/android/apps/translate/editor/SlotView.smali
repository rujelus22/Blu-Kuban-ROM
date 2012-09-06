.class public abstract Lcom/google/android/apps/translate/editor/SlotView;
.super Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/editor/SlotView$ValueListener;,
        Lcom/google/android/apps/translate/editor/SlotView$SlotBehavior;,
        Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlotView"


# instance fields
.field private handledEvent:Z

.field private mBehaviors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/editor/SlotView$SlotBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/google/android/apps/translate/handwriting/EditTextCallback;

.field private mCanDelete:Z

.field protected mCheckIsTextEditor:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInternalEdit:Z

.field private final mIsAlwaysEditable:Z

.field private mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/editor/SlotView$ValueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

.field private mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

.field private mShowKeyboard:Z

.field private mSlotContainer:Lcom/google/android/apps/translate/editor/SlotContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mListeners:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mBehaviors:Ljava/util/List;

    .line 53
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCanDelete:Z

    .line 60
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mShowKeyboard:Z

    .line 63
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mInternalEdit:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 590
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/SlotView;->handledEvent:Z

    .line 126
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mIsAlwaysEditable:Z

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/editor/SlotView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mInternalEdit:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/translate/editor/SlotView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mInternalEdit:Z

    return p1
.end method

.method private initTitle()V
    .registers 2

    .prologue
    .line 183
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/SlotView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method private initWatcher()V
    .registers 2

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/apps/translate/editor/SlotView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/editor/SlotView$1;-><init>(Lcom/google/android/apps/translate/editor/SlotView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/SlotView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    return-void
.end method

.method private makeCursorVisible()V
    .registers 2

    .prologue
    .line 304
    new-instance v0, Lcom/google/android/apps/translate/editor/SlotView$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/editor/SlotView$2;-><init>(Lcom/google/android/apps/translate/editor/SlotView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/SlotView;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method private safeCharAt(Ljava/lang/CharSequence;I)C
    .registers 4
    .parameter "string"
    .parameter "index"

    .prologue
    .line 341
    if-ltz p2, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_a

    .line 342
    :cond_8
    const/4 v0, 0x0

    .line 344
    :goto_9
    return v0

    :cond_a
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method private tryShowKeyboard()Z
    .registers 5

    .prologue
    .line 446
    const-string v1, "SlotView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShowKeyboard this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 452
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected addSlotBehavior(Lcom/google/android/apps/translate/editor/SlotView$SlotBehavior;)V
    .registers 3
    .parameter "behavior"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mBehaviors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public addValueListener(Lcom/google/android/apps/translate/editor/SlotView$ValueListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method public beginEditing()V
    .registers 3

    .prologue
    .line 505
    const-string v0, "SlotView"

    const-string v1, "beginEditing"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/SlotView;->setSelected(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_18

    .line 510
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/SlotView;->setSelection(I)V

    .line 512
    :cond_18
    return-void
.end method

.method public canDelete()Z
    .registers 2

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCanDelete:Z

    return v0
.end method

.method public endEditing()V
    .registers 4

    .prologue
    .line 518
    const-string v0, "SlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endEditing this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->hideKeyboard()V

    .line 520
    return-void
.end method

.method protected enterKeyboardMode()V
    .registers 3

    .prologue
    .line 427
    const-string v0, "SlotView"

    const-string v1, "enterKeyboardMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->dismissCurrentPopup()V

    .line 429
    return-void
.end method

.method protected exitKeyboardMode()V
    .registers 3

    .prologue
    .line 432
    const-string v0, "SlotView"

    const-string v1, "exitKeyboardMode"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->dismissCurrentPopup()V

    .line 434
    return-void
.end method

.method public getPopupManager()Lcom/google/android/apps/translate/asreditor/PopupManager;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    return-object v0
.end method

.method public getSelectionEnd()I
    .registers 3

    .prologue
    .line 571
    invoke-super {p0}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->getSelectionStart()I

    move-result v1

    .line 572
    .local v1, selStart:I
    invoke-super {p0}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 573
    .local v0, selEnd:I
    if-le v1, v0, :cond_b

    .end local v1           #selStart:I
    :goto_a
    return v1

    .restart local v1       #selStart:I
    :cond_b
    move v1, v0

    goto :goto_a
.end method

.method public getSelectionStart()I
    .registers 3

    .prologue
    .line 564
    invoke-super {p0}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->getSelectionStart()I

    move-result v1

    .line 565
    .local v1, selStart:I
    invoke-super {p0}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 566
    .local v0, selEnd:I
    if-le v1, v0, :cond_b

    .end local v0           #selEnd:I
    :goto_a
    return v0

    .restart local v0       #selEnd:I
    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public getSlotContainer()Lcom/google/android/apps/translate/editor/SlotContainer;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mSlotContainer:Lcom/google/android/apps/translate/editor/SlotContainer;

    return-object v0
.end method

.method public abstract getSlotValue()Lcom/google/android/apps/translate/editor/SlotValue;
.end method

.method protected getSpans(Landroid/view/MotionEvent;Ljava/lang/Class;)Ljava/util/List;
    .registers 26
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/editor/SlotView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 250
    .local v10, layout:Landroid/text/Layout;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/editor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v16

    .line 251
    .local v16, text:Landroid/text/Editable;
    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/editor/SlotView;->length()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    .line 253
    .local v14, spans:[Ljava/lang/Object;,"[TT;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v13, spanList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 255
    .local v7, hitPath:Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/Region;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/editor/SlotView;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/editor/SlotView;->getHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 256
    .local v5, clipRegion:Landroid/graphics/Region;
    new-instance v8, Landroid/graphics/Region;

    invoke-direct {v8}, Landroid/graphics/Region;-><init>()V

    .line 258
    .local v8, hitRegion:Landroid/graphics/Region;
    move-object v4, v14

    .local v4, arr$:[Ljava/lang/Object;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_45
    if-ge v9, v11, :cond_89

    aget-object v12, v4, v9

    .line 259
    .local v12, span:Ljava/lang/Object;,"TT;"
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 260
    .local v15, start:I
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 261
    .local v6, end:I
    invoke-virtual {v10, v15, v6, v7}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 262
    invoke-virtual {v8, v7, v5}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/editor/SlotView;->getCompoundPaddingLeft()I

    move-result v20

    sub-int v17, v19, v20

    .line 265
    .local v17, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/editor/SlotView;->getCompoundPaddingTop()I

    move-result v20

    sub-int v18, v19, v20

    .line 267
    .local v18, y:I
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v19

    if-eqz v19, :cond_86

    .line 268
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_86
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 272
    .end local v6           #end:I
    .end local v12           #span:Ljava/lang/Object;,"TT;"
    .end local v15           #start:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_89
    return-object v13
.end method

.method protected getStringValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboard()V
    .registers 5

    .prologue
    .line 470
    const-string v1, "SlotView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideSoftInputFromWindow this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 473
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 474
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/apps/translate/asreditor/PopupManager;Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;Lcom/google/android/apps/translate/editor/SlotContainer;)V
    .registers 8
    .parameter "context"
    .parameter "popupManager"
    .parameter "keyboardStateTracker"
    .parameter "slotContainer"

    .prologue
    const/4 v2, 0x1

    .line 131
    iput-object p2, p0, Lcom/google/android/apps/translate/editor/SlotView;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    .line 132
    iput-object p3, p0, Lcom/google/android/apps/translate/editor/SlotView;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    .line 133
    iput-object p4, p0, Lcom/google/android/apps/translate/editor/SlotView;->mSlotContainer:Lcom/google/android/apps/translate/editor/SlotContainer;

    .line 134
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotView;->initTitle()V

    .line 143
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotView;->initWatcher()V

    .line 145
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2d

    .line 160
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setTextIsSelectable(Landroid/widget/TextView;Z)V

    .line 162
    :cond_2d
    return-void
.end method

.method public abstract inputSlotValue(Lcom/google/android/apps/translate/editor/SlotValue;)Z
.end method

.method protected inputString(Ljava/lang/CharSequence;[I)V
    .registers 15
    .parameter "string"
    .parameter "rangeOut"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v9

    .line 357
    .local v9, text:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionStart()I

    move-result v10

    if-gez v10, :cond_11

    .line 358
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/apps/translate/editor/SlotView;->setSelection(I)V

    .line 361
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionStart()I

    move-result v6

    .line 362
    .local v6, selectionStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionEnd()I

    move-result v5

    .line 366
    .local v5, selectionEnd:I
    add-int/lit8 v10, v6, -0x1

    invoke-direct {p0, v9, v10}, Lcom/google/android/apps/translate/editor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v1

    .line 367
    .local v1, charBeforeReplacement:C
    invoke-direct {p0, v9, v5}, Lcom/google/android/apps/translate/editor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v0

    .line 368
    .local v0, charAfterReplacement:C
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/google/android/apps/translate/editor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v2

    .line 369
    .local v2, firstCharOfString:C
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, p1, v10}, Lcom/google/android/apps/translate/editor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v3

    .line 370
    .local v3, lastCharOfString:C
    if-nez v6, :cond_b3

    const/4 v7, 0x1

    .line 373
    .local v7, selectionStartIsAtStartOfValue:Z
    :goto_35
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 375
    .local v8, stringToAdd:Landroid/text/SpannableStringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_68

    sget-object v10, Lcom/google/android/apps/translate/Constants;->CJK_PATTERN:Ljava/util/regex/Pattern;

    const/4 v11, 0x0

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_68

    if-nez v7, :cond_68

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 380
    const-string v10, " "

    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 383
    :cond_68
    invoke-virtual {v8, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 385
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_9c

    sget-object v10, Lcom/google/android/apps/translate/Constants;->CJK_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_9c

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 390
    const-string v10, " "

    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 394
    :cond_9c
    const-string v10, ""

    invoke-interface {v9, v6, v5, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 395
    if-eqz p2, :cond_af

    .line 396
    const/4 v10, 0x0

    aput v6, p2, v10

    .line 397
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    add-int v4, v6, v10

    .line 398
    .local v4, rangeEnd:I
    const/4 v10, 0x1

    aput v4, p2, v10

    .line 402
    .end local v4           #rangeEnd:I
    :cond_af
    invoke-interface {v9, v6, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 403
    return-void

    .line 370
    .end local v7           #selectionStartIsAtStartOfValue:Z
    .end local v8           #stringToAdd:Landroid/text/SpannableStringBuilder;
    :cond_b3
    const/4 v7, 0x0

    goto :goto_35
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHardKeyboardVisible()Z
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->isHardKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public isInKeyboardMode()Z
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->isInKeyboardMode()Z

    move-result v0

    return v0
.end method

.method isInternalEditMode()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mInternalEdit:Z

    return v0
.end method

.method public isSoftKeyboardVisible()Z
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->isSoftKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .registers 2

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mIsAlwaysEditable:Z

    if-eqz v0, :cond_9

    .line 167
    invoke-super {p0}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->onCheckIsTextEditor()Z

    move-result v0

    .line 170
    :goto_8
    return v0

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    goto :goto_8
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    .line 225
    iget-boolean v1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 226
    .local v1, origCheckIsTextEditor:Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 227
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 228
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iput-boolean v1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 233
    const/high16 v2, 0x1000

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 235
    return-object v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 594
    const-string v0, "SlotView"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 596
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 598
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 603
    const-string v0, "SlotView"

    const-string v1, "onDoubleTapEvent"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 605
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 607
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 622
    const-string v0, "SlotView"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 624
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 626
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onEditorAction(I)V
    .registers 5
    .parameter "actionCode"

    .prologue
    .line 675
    const-string v0, "SlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction actionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->onEditorAction(I)V

    .line 677
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 631
    const-string v0, "SlotView"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 633
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 635
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 640
    const-string v0, "SlotView"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 644
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->handledEvent:Z

    .line 645
    return-void
.end method

.method public onParentScrolled()V
    .registers 3

    .prologue
    .line 441
    const-string v0, "SlotView"

    const-string v1, "onParentScrolled"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 649
    const-string v0, "SlotView"

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 651
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 653
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .registers 3
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 587
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->onSelectionChanged(II)V

    .line 588
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 658
    const-string v0, "SlotView"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 660
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 662
    :cond_10
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 612
    const-string v0, "SlotView"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 614
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 616
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotView;->makeCursorVisible()V

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 666
    const-string v0, "SlotView"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    if-eqz v0, :cond_10

    .line 668
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 670
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 281
    const-string v2, "SlotView"

    const-string v3, "onTouchEvent"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_12

    .line 284
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/editor/SlotView;->setSelected(Z)V

    .line 286
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 287
    .local v0, origCheckIsTextEditor:Z
    iput-boolean v4, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 288
    iput-boolean v4, p0, Lcom/google/android/apps/translate/editor/SlotView;->handledEvent:Z

    .line 289
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 290
    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 299
    :goto_22
    return v1

    .line 293
    :cond_23
    iget-boolean v2, p0, Lcom/google/android/apps/translate/editor/SlotView;->handledEvent:Z

    if-nez v2, :cond_2e

    .line 294
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 295
    .local v1, rc:Z
    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    goto :goto_22

    .line 298
    .end local v1           #rc:Z
    :cond_2e
    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    goto :goto_22
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newText"

    .prologue
    .line 216
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    .line 478
    const-string v0, "SlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "SlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 481
    if-eqz p1, :cond_43

    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mShowKeyboard:Z

    if-eqz v0, :cond_43

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mShowKeyboard:Z

    .line 483
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotView;->tryShowKeyboard()Z

    .line 485
    :cond_43
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 489
    const-string v0, "SlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "SlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-eqz p1, :cond_39

    .line 496
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->endEditing()V

    .line 498
    :cond_39
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView;->onWindowVisibilityChanged(I)V

    .line 499
    return-void
.end method

.method public replaceSelectedText(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .parameter "newText"
    .parameter "selectAgain"

    .prologue
    .line 696
    const-string v4, "SlotView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceSelectedText newText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionStart()I

    move-result v2

    .line 698
    .local v2, selStart:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 699
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 720
    :goto_26
    return-object v4

    .line 701
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 702
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionEnd()I

    move-result v1

    .line 703
    .local v1, selEnd:I
    if-gez v2, :cond_4f

    .line 704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 705
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :goto_3d
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/SlotView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    if-eqz p2, :cond_58

    .line 716
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v2, v4}, Lcom/google/android/apps/translate/editor/SlotView;->setSelection(II)V

    .line 720
    :goto_4a
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_26

    .line 707
    :cond_4f
    if-le v2, v1, :cond_54

    .line 708
    move v3, v2

    .line 709
    .local v3, temp:I
    move v2, v1

    .line 710
    move v1, v3

    .line 712
    .end local v3           #temp:I
    :cond_54
    invoke-virtual {v0, v2, v1, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 718
    :cond_58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/editor/SlotView;->setSelection(I)V

    goto :goto_4a
.end method

.method protected resetStringValue()V
    .registers 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 338
    return-void
.end method

.method public setCallback(Lcom/google/android/apps/translate/handwriting/EditTextCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCallback:Lcom/google/android/apps/translate/handwriting/EditTextCallback;

    .line 682
    return-void
.end method

.method public setCanDelete(Z)V
    .registers 2
    .parameter "canDelete"

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCanDelete:Z

    .line 547
    return-void
.end method

.method public setIsTextEditor(Z)V
    .registers 2
    .parameter "isTextEditor"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mCheckIsTextEditor:Z

    .line 176
    return-void
.end method

.method public abstract setSlotValue(Lcom/google/android/apps/translate/editor/SlotValue;)V
.end method

.method protected setStringValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 330
    return-void
.end method

.method public setTouchEventCallback(Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/SlotView;->mOnTouchListener:Lcom/google/android/apps/translate/editor/SlotView$TouchEventListener;

    .line 180
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .registers 5
    .parameter "slot"

    .prologue
    .line 459
    const-string v0, "SlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showKeyboard this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotView;->tryShowKeyboard()Z

    move-result v0

    if-nez v0, :cond_28

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/SlotView;->mShowKeyboard:Z

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 464
    :cond_28
    return-void
.end method
