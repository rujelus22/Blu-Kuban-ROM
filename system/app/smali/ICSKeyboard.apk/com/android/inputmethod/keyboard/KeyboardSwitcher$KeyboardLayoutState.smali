.class Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardLayoutState"
.end annotation


# instance fields
.field private mIsAlphabetMode:Z

.field private mIsShiftLocked:Z

.field private mIsShifted:Z

.field private mIsValid:Z

.field final synthetic this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;-><init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)V

    return-void
.end method


# virtual methods
.method public getKeyboardId()Lcom/android/inputmethod/keyboard/KeyboardId;
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$2(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    .line 154
    :goto_a
    return-object v0

    .line 151
    :cond_b
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_16

    .line 152
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$2(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    goto :goto_a

    .line 154
    :cond_16
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$1(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    goto :goto_a

    :cond_21
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$3(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    goto :goto_a
.end method

.method public restore()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    if-nez v4, :cond_7

    .line 173
    :cond_6
    :goto_6
    return-void

    .line 160
    :cond_7
    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    .line 162
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    if-eqz v4, :cond_6

    .line 163
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    .line 164
    .local v0, isAlphabetMode:Z
    if-eqz v0, :cond_32

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v4

    if-eqz v4, :cond_32

    move v1, v2

    .line 165
    .local v1, isShiftLocked:Z
    :goto_1e
    if-nez v1, :cond_34

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 166
    .local v2, isShifted:Z
    :goto_28
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    if-eq v4, v1, :cond_36

    .line 167
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    goto :goto_6

    .end local v1           #isShiftLocked:Z
    .end local v2           #isShifted:Z
    :cond_32
    move v1, v3

    .line 164
    goto :goto_1e

    .restart local v1       #isShiftLocked:Z
    :cond_34
    move v2, v3

    .line 165
    goto :goto_28

    .line 168
    .restart local v2       #isShifted:Z
    :cond_36
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    if-eq v4, v2, :cond_6

    .line 169
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressShift(Z)V

    .line 170
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseShift(Z)V

    goto :goto_6
.end method

.method public save()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$0(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    if-nez v2, :cond_b

    .line 146
    :goto_a
    return-void

    .line 137
    :cond_b
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    .line 138
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    if-eqz v2, :cond_31

    .line 139
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    .line 140
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v2

    if-eqz v2, :cond_2c

    move v0, v1

    :cond_2c
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    .line 145
    :goto_2e
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    goto :goto_a

    .line 142
    :cond_31
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$0(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$1(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    goto :goto_2e
.end method
