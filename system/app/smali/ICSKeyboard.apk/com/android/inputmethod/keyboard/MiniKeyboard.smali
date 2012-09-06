.class public Lcom/android/inputmethod/keyboard/MiniKeyboard;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "MiniKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;
    }
.end annotation


# instance fields
.field private final mDefaultKeyCoordX:I


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 31
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getDefaultKeyCoordX()I

    move-result v0

    iget v1, p1, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard;->mDefaultKeyCoordX:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;Lcom/android/inputmethod/keyboard/MiniKeyboard;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;-><init>(Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;)V

    return-void
.end method


# virtual methods
.method public getDefaultCoordX()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard;->mDefaultKeyCoordX:I

    return v0
.end method
