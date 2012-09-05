.class public Lcom/android/inputmethod/latin/LatinKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "LatinKeyboardView.java"


# static fields
.field static final DEBUG_AUTO_PLAY:Z = false

.field public static final KEYCODE_DELETE_LONGPRESS:I = -0x66

.field public static final KEYCODE_OPTIONS:I = -0x64

.field public static final KEYCODE_SHIFT_LONGPRESS:I = -0x65

.field private static final MSG_TOUCH_DOWN:I = 0x1

.field private static final MSG_TOUCH_UP:I = 0x2


# instance fields
.field private mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mDownDelivered:Z

.field mHandler2:Landroid/os/Handler;

.field private mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mPlaying:Z

.field private mStringIndex:I

.field private mStringToPlay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/16 v0, 0x100

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/16 v0, 0x100

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 49
    return-void
.end method

.method private findKeys()V
    .registers 6

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 156
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 157
    .local v0, code:I
    if-ltz v0, :cond_2a

    const/16 v3, 0xff

    if-gt v0, v3, :cond_2a

    .line 158
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    aput-object v3, v4, v0

    .line 155
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 161
    .end local v0           #code:I
    :cond_2d
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->draw(Landroid/graphics/Canvas;)V

    .line 189
    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 57
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x2

    if-ne v1, v2, :cond_14

    .line 58
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v1

    const/16 v2, -0x64

    invoke-interface {v1, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 72
    :goto_13
    return v0

    .line 60
    :cond_14
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    .line 61
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v1

    const/16 v2, -0x65

    invoke-interface {v1, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_13

    .line 64
    :cond_28
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x30

    if-ne v1, v2, :cond_42

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    if-ne v1, v2, :cond_42

    .line 66
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-interface {v1, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_13

    .line 68
    :cond_42
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x5

    if-ne v1, v2, :cond_53

    .line 69
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v1

    const/16 v2, -0x66

    invoke-interface {v1, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_13

    .line 72
    :cond_53
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    goto :goto_13
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 2
    .parameter "k"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 150
    return-void
.end method

.method public setPhoneKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 2
    .parameter "phoneKeyboard"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 53
    return-void
.end method

.method startPlaying(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 173
    return-void
.end method
