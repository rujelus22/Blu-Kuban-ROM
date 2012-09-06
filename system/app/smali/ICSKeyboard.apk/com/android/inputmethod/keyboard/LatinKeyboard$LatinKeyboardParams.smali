.class Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatinKeyboardParams"
.end annotation


# instance fields
.field public mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

.field public mSpaceKey:Lcom/android/inputmethod/keyboard/Key;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    .line 110
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddKey(Lcom/android/inputmethod/keyboard/Key;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 116
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    sparse-switch v0, :sswitch_data_10

    .line 124
    :goto_8
    return-void

    .line 118
    :sswitch_9
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    goto :goto_8

    .line 121
    :sswitch_c
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    goto :goto_8

    .line 116
    nop

    :sswitch_data_10
    .sparse-switch
        -0x7 -> :sswitch_c
        0x20 -> :sswitch_9
    .end sparse-switch
.end method
