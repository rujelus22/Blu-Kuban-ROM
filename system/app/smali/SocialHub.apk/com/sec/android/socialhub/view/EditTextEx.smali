.class public Lcom/sec/android/socialhub/view/EditTextEx;
.super Landroid/widget/EditText;
.source "EditTextEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;
    }
.end annotation


# instance fields
.field private bEditable:Z

.field private isClicked:Z

.field mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mLineCnt:I

.field private mLineListener:Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    iput v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    .line 29
    iput-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineListener:Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->bEditable:Z

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/EditTextEx;->initialize()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    iput v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    .line 29
    iput-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineListener:Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->bEditable:Z

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/EditTextEx;->initialize()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    iput v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    .line 29
    iput-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineListener:Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->bEditable:Z

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/EditTextEx;->initialize()V

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/view/EditTextEx;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z

    return p1
.end method


# virtual methods
.method public initialize()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 179
    new-instance v0, Lcom/sec/android/socialhub/view/EditTextEx$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/EditTextEx$2;-><init>(Lcom/sec/android/socialhub/view/EditTextEx;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/EditTextEx;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/EditTextEx;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    .line 195
    return-void
.end method

.method public invalidateLine()V
    .registers 6

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/EditTextEx;->getLineCount()I

    move-result v0

    .line 150
    .local v0, line:I
    const-string v1, "EditTextEx"

    const-string v2, "invalidateLine()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLine - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    if-eq v0, v1, :cond_3b

    .line 154
    iget-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineListener:Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;

    if-eqz v1, :cond_39

    .line 156
    iget-object v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineListener:Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;

    iget v2, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    invoke-interface {v1, v2, v0}, Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;->onLineChanged(II)V

    .line 158
    :cond_39
    iput v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineCnt:I

    .line 160
    :cond_3b
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 116
    const v1, 0x1020022

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 118
    .local v0, paste:Landroid/view/MenuItem;
    if-eqz v0, :cond_11

    .line 120
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->bEditable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    :cond_11
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->bEditable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 81
    :goto_9
    return v0

    .line 80
    :cond_a
    const-string v0, "EditTextEx"

    const-string v1, "onKeyDown()"

    const-string v2, "bEditable is false. so can not input any key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->bEditable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 99
    :goto_9
    return v0

    .line 98
    :cond_a
    const-string v0, "EditTextEx"

    const-string v1, "onKeyUp()"

    const-string v2, "bEditable is false. so can not input any key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 136
    new-instance v0, Lcom/sec/android/socialhub/view/EditTextEx$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/EditTextEx$1;-><init>(Lcom/sec/android/socialhub/view/EditTextEx;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/EditTextEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/EditTextEx;->invalidateLine()V

    .line 130
    return-void
.end method

.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 215
    const-string v1, "EditTextEx"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z

    if-nez v1, :cond_31

    .line 219
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/EditTextEx;->isClicked:Z

    .line 220
    new-instance v0, Lcom/sec/android/socialhub/view/EditTextEx$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/EditTextEx$3;-><init>(Lcom/sec/android/socialhub/view/EditTextEx;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/EditTextEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    .line 233
    :cond_31
    return v0
.end method

.method public setEditTable(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->bEditable:Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/EditTextEx;->setFocusable(Z)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/EditTextEx;->setFocusableInTouchMode(Z)V

    .line 65
    return-void
.end method

.method public setOnEditTextLineChangedListener(Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/socialhub/view/EditTextEx;->mLineListener:Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;

    .line 171
    return-void
.end method
