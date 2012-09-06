.class public Lcom/google/android/apps/translate/asreditor/AsrResultEditor;
.super Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;
.source "AsrResultEditor.java"

# interfaces
.implements Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;
.implements Lcom/google/android/apps/translate/editor/SlotContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsrResultEditor"

.field private static final VOICE_SEARCH_KEY_CODE:I = 0x5c


# instance fields
.field protected mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

.field private mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

.field private mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

.field private mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

.field private mRecognizing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    invoke-direct {v1, p1}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setFillViewport(Z)V

    .line 50
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/apps/translate/R$layout;->text_slot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/editor/TextSlot;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->addView(Landroid/view/View;)V

    .line 55
    new-instance v1, Lcom/google/android/apps/translate/asreditor/PopupManager;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/asreditor/PopupManager;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->addFallthroughTouchView(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->addFallthroughKeyView(Landroid/view/View;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->initEditorField(Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->setKeyboardModeListener(Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;)V

    .line 62
    return-void
.end method

.method private static correctionTextValueForSlot(Ljava/util/List;)Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, alternatives:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/CharSequence;>;"
    const-string v0, "AsrResultEditor"

    const-string v1, "correctionTextValueForSlot"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v1, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private initEditorField(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 69
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEditorField this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/google/android/apps/translate/editor/TextSlot;->init(Landroid/content/Context;Lcom/google/android/apps/translate/asreditor/PopupManager;Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;Lcom/google/android/apps/translate/editor/SlotContainer;)V

    .line 71
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 116
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEventPreIme this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_33

    .line 118
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mRecognizing:Z

    if-nez v0, :cond_31

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->startRecognizing()V

    .line 122
    :cond_31
    const/4 v0, 0x1

    .line 125
    :goto_32
    return v0

    :cond_33
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_32
.end method

.method public getEditorField()Lcom/google/android/apps/translate/editor/TextSlot;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    return-object v0
.end method

.method public getEditorFieldValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getSlotValue()Lcom/google/android/apps/translate/editor/TextValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardStateTracker()Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    return-object v0
.end method

.method public getPopupManager()Lcom/google/android/apps/translate/asreditor/PopupManager;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mPopupManager:Lcom/google/android/apps/translate/asreditor/PopupManager;

    return-object v0
.end method

.method public inputAsrResults(Ljava/util/List;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, alternatives:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/CharSequence;>;"
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputAsrResults this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-static {p1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->correctionTextValueForSlot(Ljava/util/List;)Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->inputSlotValue(Lcom/google/android/apps/translate/editor/SlotValue;)Z

    move-result v0

    return v0
.end method

.method public notifyKeyboardChangedState(Z)V
    .registers 5
    .parameter "keyboardVisible"

    .prologue
    .line 138
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyKeyboardChangedState this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mKeyboardStateTracker:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->setSoftKeyboardVisible(Z)V

    .line 140
    return-void
.end method

.method public onKeyboardTypeChange(Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;)V
    .registers 2
    .parameter "tracker"

    .prologue
    .line 150
    return-void
.end method

.method public onKeyboardVisibilityChange(Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;)V
    .registers 5
    .parameter "tracker"

    .prologue
    .line 144
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyboardVisibilityChange this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 8
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->onScrollChanged(IIII)V

    .line 155
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollChanged this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->onParentScrolled()V

    .line 157
    return-void
.end method

.method public setAsrResults(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, alternatives:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/CharSequence;>;"
    const-string v1, "AsrResultEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAsrResults this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->correctionTextValueForSlot(Ljava/util/List;)Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    move-result-object v0

    .line 98
    .local v0, v:Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/TextSlot;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelection(I)V

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelected(Z)V

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->requestFocus()Z

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/editor/TextSlot;->setSlotValue(Lcom/google/android/apps/translate/editor/SlotValue;)V

    .line 102
    return-void
.end method

.method public setRecognitionManager(Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;)V
    .registers 2
    .parameter "controller"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

    .line 83
    return-void
.end method

.method public setRecognizing(Z)V
    .registers 5
    .parameter "recognizing"

    .prologue
    .line 200
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecognizing this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput-boolean p1, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mRecognizing:Z

    .line 202
    return-void
.end method

.method public startRecognizing()V
    .registers 4

    .prologue
    .line 172
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecognizing this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

    if-eqz v0, :cond_25

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

    invoke-interface {v0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;->startRecognizing()V

    .line 176
    :cond_25
    return-void
.end method

.method public stopRecognizing()V
    .registers 4

    .prologue
    .line 182
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecognizing this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

    if-eqz v0, :cond_25

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

    invoke-interface {v0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;->stopRecognizing()V

    .line 186
    :cond_25
    return-void
.end method

.method public toggleRecognizing(Lcom/google/android/apps/translate/editor/SlotView;)V
    .registers 5
    .parameter "slot"

    .prologue
    .line 190
    const-string v0, "AsrResultEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleRecognizing this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

    if-eqz v0, :cond_25

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->mController:Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;

    invoke-interface {v0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor$RecognitionManager;->toggleRecognizing()V

    .line 194
    :cond_25
    return-void
.end method
